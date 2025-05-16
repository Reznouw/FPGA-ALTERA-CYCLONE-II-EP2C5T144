# Legal Notice: (C)2024 Altera Corporation. All rights reserved.  Your
# use of Altera Corporation's design tools, logic functions and other
# software and tools, and its AMPP partner logic functions, and any
# output files any of the foregoing (including device programming or
# simulation files), and any associated documentation or information are
# expressly subject to the terms and conditions of the Altera Program
# License Subscription Agreement or other applicable license agreement,
# including, without limitation, that your use is for the sole purpose
# of programming logic devices manufactured by Altera and sold by Altera
# or its authorized distributors.  Please refer to the applicable
# agreement for further details.

#**************************************************************
# Timequest JTAG clock definition
#   Uncommenting the following lines will define the JTAG
#   clock in TimeQuest Timing Analyzer
#**************************************************************

#create_clock -period 10MHz {altera_internal_jtag|tckutap}
#set_clock_groups -asynchronous -group {altera_internal_jtag|tckutap}

#**************************************************************
# Set TCL Path Variables 
#**************************************************************

set 	pru1_cpu 	pru1_cpu:*
set 	pru1_cpu_oci 	pru1_cpu_nios2_oci:the_pru1_cpu_nios2_oci
set 	pru1_cpu_oci_break 	pru1_cpu_nios2_oci_break:the_pru1_cpu_nios2_oci_break
set 	pru1_cpu_ocimem 	pru1_cpu_nios2_ocimem:the_pru1_cpu_nios2_ocimem
set 	pru1_cpu_oci_debug 	pru1_cpu_nios2_oci_debug:the_pru1_cpu_nios2_oci_debug
set 	pru1_cpu_wrapper 	pru1_cpu_jtag_debug_module_wrapper:the_pru1_cpu_jtag_debug_module_wrapper
set 	pru1_cpu_jtag_tck 	pru1_cpu_jtag_debug_module_tck:the_pru1_cpu_jtag_debug_module_tck
set 	pru1_cpu_jtag_sysclk 	pru1_cpu_jtag_debug_module_sysclk:the_pru1_cpu_jtag_debug_module_sysclk
set 	pru1_cpu_oci_path 	 [format "%s|%s" $pru1_cpu $pru1_cpu_oci]
set 	pru1_cpu_oci_break_path 	 [format "%s|%s" $pru1_cpu_oci_path $pru1_cpu_oci_break]
set 	pru1_cpu_ocimem_path 	 [format "%s|%s" $pru1_cpu_oci_path $pru1_cpu_ocimem]
set 	pru1_cpu_oci_debug_path 	 [format "%s|%s" $pru1_cpu_oci_path $pru1_cpu_oci_debug]
set 	pru1_cpu_jtag_tck_path 	 [format "%s|%s|%s" $pru1_cpu_oci_path $pru1_cpu_wrapper $pru1_cpu_jtag_tck]
set 	pru1_cpu_jtag_sysclk_path 	 [format "%s|%s|%s" $pru1_cpu_oci_path $pru1_cpu_wrapper $pru1_cpu_jtag_sysclk]
set 	pru1_cpu_jtag_sr 	 [format "%s|*sr" $pru1_cpu_jtag_tck_path]

#**************************************************************
# Set False Paths
#**************************************************************

set_false_path -from [get_keepers *$pru1_cpu_oci_break_path|break_readreg*] -to [get_keepers *$pru1_cpu_jtag_sr*]
set_false_path -from [get_keepers *$pru1_cpu_oci_debug_path|*resetlatch]     -to [get_keepers *$pru1_cpu_jtag_sr[33]]
set_false_path -from [get_keepers *$pru1_cpu_oci_debug_path|monitor_ready]  -to [get_keepers *$pru1_cpu_jtag_sr[0]]
set_false_path -from [get_keepers *$pru1_cpu_oci_debug_path|monitor_error]  -to [get_keepers *$pru1_cpu_jtag_sr[34]]
set_false_path -from [get_keepers *$pru1_cpu_ocimem_path|*MonDReg*] -to [get_keepers *$pru1_cpu_jtag_sr*]
set_false_path -from *$pru1_cpu_jtag_sr*    -to *$pru1_cpu_jtag_sysclk_path|*jdo*
set_false_path -from sld_hub:*|irf_reg* -to *$pru1_cpu_jtag_sysclk_path|ir*
set_false_path -from sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1] -to *$pru1_cpu_oci_debug_path|monitor_go
