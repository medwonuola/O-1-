int digitalRoot(int n) => n < 10 ? n : digitalRoot(n ~/ 10 + n % 10);

// More readable:
int sol2(int n) {
  int sum = 0;

  while (n > 0) {
    sum += n % 10;
    n = n ~/ 10;
  }
  return sum > 9 ? digitalRoot(sum) : sum;
}

// Another approach:
int sol3(int n) {
  int sum = 0;
  n.toString().split('').forEach((e) {
    sum += int.parse(e);
  });

  return sum > 9 ? sol3(sum) : sum;
}
