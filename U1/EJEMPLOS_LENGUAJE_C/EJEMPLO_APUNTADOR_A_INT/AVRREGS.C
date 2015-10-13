/**
   Registros $R_{0}, \ldots R_{31}$
   Muestra el por qu\'e de la interpretaci\'on de los Registros
   del AVR como "apuntadores"
 */
 #include <stdio.h>

 int main(){
   int a, b;
   int *p;
   printf("/***************************************************/\n");
   printf("Para a se usan %d bytes\n", sizeof(a));
   a=0x55;
   p=&a;
   printf("La direccion de a es: %p\n", p);
   printf("El contenido de a es: %i\n", *p);
   b=0xAA;
   p=&b;
   printf("Para b se usan %d bytes\n", sizeof(b));
   printf("La direccion de b es: %p\n", p);
   printf("El contenido de b es: %i\n", *p);

   return 0;
 }