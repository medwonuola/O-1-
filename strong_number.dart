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
