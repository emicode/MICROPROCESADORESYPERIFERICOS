/**
   AssemblerExample3_3.asm
   Programa que (a) carga PORTB con 0x55, y (b) complemente PORTB 700 veces
   Dado que 700 es m\'as grande que 255 (la m\'axima capacidad de cualquier 
   GPR), usamos dos registros para llevar la cuenta. Este c\'odigo muestra 
   c\'omo usar R20 y R21 (R20//R21) como un registro counter
   Created: 12/10/2015 09:15:58 a.m.
   Author: Toshiba
 */ 
 .include "m32def.inc"
 .org  0
         ldi  r16, 0x55
		 out  PORTB, r16
		 ldi  r20, 10
LOP_1:   ldi  r21, 70
LOP_2:   com  r16
         out  PORTB, r16
		 dec  r21         ;dec r21 (inner loop)
		 brne LOP_2       ;repetirlo 70 veces
		 dec  r20         ; dec r20 (outer loop)
		 brne LOP_1       ;repetirlo 10 veces