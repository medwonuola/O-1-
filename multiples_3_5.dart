int getMultiplesof3and5(int n) {
  if (n <= 0) return 0;
  int sum = 0;

  for (int i = 1; i < n; i++) {
    if (i % 3 == 0 || i % 5 == 0) sum += i;
  }

  return sum;
}

// alternative solution:
int solution(int n) => n <= 0
    ? 0
    : List.generate(n, (i) => i)
        .where((i) => i % 3 == 0 || i % 5 == 0)
        .reduce((sum, i) => sum + i);
