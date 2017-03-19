#define Pi 3.14 //macro
main()
  {
  int R; //radius
  float S;   //square
  clrscr();
  printf("Calculation of square ring\n\n");
  printf("Enter radius: ");
  scanf("%d", &R);
  S = Pi*R*R;
  printf("Square is:    ");
  printf("%2.2f", S);
  }
