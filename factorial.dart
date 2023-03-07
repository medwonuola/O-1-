int factorial(int n) => n <= 1 ? 1 : n *= factorial(n - 1);

int factorial2(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n *= factorial2(n - 1);
  }
}
