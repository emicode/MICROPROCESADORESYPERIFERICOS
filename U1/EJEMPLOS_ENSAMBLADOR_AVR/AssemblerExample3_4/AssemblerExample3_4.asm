/*
 * AssemblerExample3_4.asm
   Escribir un programa que determine si la locadidad de RAM 0x200 
   contiene el valor 0. Si es as\'i, poner el 0x55 en ella.
 *  Created: 12/10/2015 09:45:59 a.m.
 *   Author: Toshiba
 */ 
            .equ   MYLOC=0x200
 REINICIO:  lds    r30,  MYLOC
			tst    r30            ; set the flag (Test for zero or minus)
			                      ; Prueba si un registro es cero o negativo
								  ; (Z=1 si R30 tieneel valor 0)
			brne   SIGUIENTE      ;salta si R30 no contiene 0
			ldi    r30, 0x55      ;poner 0x55 en r30    //r30 es como un apuntador
			sts    MYLOC,  r30    ;y escribir ese valor //*r30 es el contenido de la direccion r30
SIGUIENTE:  jmp    REINICIO

