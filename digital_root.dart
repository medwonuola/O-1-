int digitalRoot(int n) {
  return n < 10 ? n : digitalRoot(n ~/ 10 + n % 10);
}
