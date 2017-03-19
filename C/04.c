main()
  {
  int R; //radius
  float S;   //square
  clrscr();
  printf("Calculation of square ring\n\n");
  printf("Enter radius: ");
  scanf("%d", &R);
  S = 3.14*R*R;
  printf("Square is:    ");
  printf("%2.2f", S);
  }
