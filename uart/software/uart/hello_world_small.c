#include "sys/alt_stdio.h"

#include "system.h"

#include "altera_avalon_pio_regs.h"

#include "altera_avalon_uart_regs.h"





/* SECCION DECLARACION Y DEFINICION DE VARIABLES GLOBALES */

volatile unsigned char edg_capture = 0;



/* SECCION DECLARACION Y DEFINICION DE FUNCIONES */

// ISR para interrupciones por PIO de los pulsadores/botones

static void pio_isr(void* context){

   volatile char *edg_ptr = (volatile char *)context;



   *edg_ptr = IORD_ALTERA_AVALON_PIO_EDGE_CAP(BOTONES_BASE);



   IOWR_ALTERA_AVALON_PIO_EDGE_CAP(BOTONES_BASE, 0);

}



// Funcion de inicializacion de PIO y registro de ISR...

static void init_pio(void){

   void* edg_ptr = (void*)&edg_capture;



   IOWR_ALTERA_AVALON_PIO_IRQ_MASK(BOTONES_BASE, 3);



   IOWR_ALTERA_AVALON_PIO_EDGE_CAP(BOTONES_BASE, 0);



   alt_ic_isr_register(BOTONES_IRQ_INTERRUPT_CONTROLLER_ID, BOTONES_IRQ, pio_isr, edg_ptr, 0);

}



// Funcion para enviar strings por UART...

void envia_uart(char* mensaje, char eof)

{

   int uart_status_tx;

   int index;



   IOWR_ALTERA_AVALON_UART_STATUS(UART_BASE, 0);



   for(index = 0;mensaje[index] != eof;index++){

       uart_status_tx = IORD_ALTERA_AVALON_UART_STATUS(UART_BASE) & 0x40;



       while(!uart_status_tx){

           uart_status_tx = IORD_ALTERA_AVALON_UART_STATUS(UART_BASE) & 0x40;

       }



       IOWR_ALTERA_AVALON_UART_TXDATA(UART_BASE, mensaje[index]);

   }



}



// Funcion para recibir un caracter por UART

// Esta funcion muestra un mensaje en el terminal antes de leer el caracter...

// El mensaje esta definido por el usuario segun el string argumento "input_request", que debe terminar

// en el caracter indicado por el argumento "eof".

unsigned char recibe_uart(char* input_request, char eof){

   unsigned char caracter;

   int uart_status_rx;



   envia_uart(input_request, eof);



   uart_status_rx = IORD_ALTERA_AVALON_UART_STATUS(UART_BASE) & 0x80;



   while(!uart_status_rx){

       uart_status_rx = IORD_ALTERA_AVALON_UART_STATUS(UART_BASE) & 0x80;

   }



   caracter = IORD_ALTERA_AVALON_UART_RXDATA(UART_BASE);



   return caracter;

}



int main()

{ 

 unsigned char caracter;



 // ejecutar la inicializacion de PIO y registro de ISR

 init_pio();



 // iniciar con los 3 LED apagados

 IOWR_ALTERA_AVALON_PIO_DATA(LEDS_BASE, 7);



 while (1){

     caracter = recibe_uart("\nIngresa el caracter 'e' o 'a':*",'*');



     if (caracter == 'e'){

         // enciendo los LED...

         if (edg_capture == 1){

             // se pulso el boton 1

             IOWR_ALTERA_AVALON_PIO_DATA(LEDS_BASE, 2); // enciende los 2 LED de los extremos

         }

         else if (edg_capture == 2){

             // se pulso el boton 2

             IOWR_ALTERA_AVALON_PIO_DATA(LEDS_BASE, 5); // enciende el LED del medio

         }

     }

     else if (caracter == 'a'){

         // apago los LED

         IOWR_ALTERA_AVALON_PIO_DATA(LEDS_BASE, 7);

     }

 }



 return 0;

}
