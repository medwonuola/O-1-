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
