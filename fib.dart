int fib(int n) => n <= 2 ? 1 : fib(n - 1) + fib(n - 2);

List<int> fibList(int count) => List.generate(count, (i) => fib(i + 1));

int fibM(int n, Map<int, int>? memo) {
  // TODO: Add memoization support
  return 3;
}
