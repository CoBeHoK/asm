#include <math.h>
#include <math.h>
main()
  {
  int R; //radius
  float S;   //square
  clrscr();
  puts("Calculation of square ring\n\n");
Metka:
  printf("Enter radius: ");
  scanf("%d", &R);
  S = M_PI*R*R;
  printf("Square is:    ");
  printf("%2.2f", S);
  goto Metka;
  }
