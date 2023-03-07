String strong(int n) {
  int factorial(int n) => n <= 1 ? 1 : n *= factorial(n - 1);

  return n ==
          n
              .toString()
              .split('')
              .map((e) => factorial(int.parse(e)))
              .reduce((a, b) => a + b)
      ? "STRONG!!!!"
      : "Not Strong !!";
}

// approach 2:
String sol(int n) {
  int factorial(int n) => n <= 1 ? 1 : n *= factorial(n - 1);
  int _n = n;
  int sum = 0;

  while (_n > 0) {
    int digit = _n % 10;
    sum += factorial(digit);
    _n ~/= 10;
  }

  return sum == n ? "STRONG!!!!" : "Not Strong !!";
}

// approach 3:
String sol2(int n) {
  int _n = n;
  int sum = 0;

  while (_n > 0) {
    int digit = _n % 10;
    int factorial = 1;

    for (int i = 2; i <= digit; i++) {
      factorial *= i;
    }

    sum += factorial;
    _n ~/= 10;
  }

  return sum == n ? "STRONG!!!!" : "Not Strong !!";
}
