int digitalRoot(int n) {
  return n < 10 ? n : digitalRoot(n ~/ 10 + n % 10);
}

// More readable:
int sol2(int n) {
  int sum = 0;

  while (n > 0) {
    sum += n % 10;
    n = n ~/ 10;
  }
  return sum > 9 ? digitalRoot(sum) : sum;
}
