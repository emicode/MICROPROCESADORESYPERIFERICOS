/*
 * AssemblerApplication1.asm
 *  Multiplica el contenido de r21 por el contenido 
 *  de r16. El resultado queda en r20 y finalmente se envia 
 *  al registro PORTB. El resultado en R20 ser\'a $R16 \times R21$
 *  si R16 <= $LFF_{16}/R21 \Reverse L$.
 *  Created: 08/10/2015 09:16:58 a.m.
 *   Author: Toshiba
 */ 
 .include "M32DEF.inc"


         ldi  r16,100
		          ;r16=3 (decimal) para counter
	     ldi  r20,0         ;r20=0
	     ldi  r21,3         ;r21=3
MIXCOAC: add  r20,r21       ;sumar 03 a r20 (r20 = suma)
         dec  r16           ;decrementar r16 (el counter)
		 brne MIXCOAC       ;repetir hasta que el counter=0
		 out  PORTB,r20     ;enviar la suma a PORTB
		 ;dec  r21
		 ;brne MIXCOAC   ;Aqui se debe dar enter (con o sin este comentario)
              ;Es decir esta tiene que ser la ultima linea de este archivo.         