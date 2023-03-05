// method 1:
int nbDig(int n, int d) {
  int count = List.generate(n + 1, (index) => index * index)
          .join()
          .split(d.toString())
          .length -
      1;
  return count;
}

// method 2:
int countDigits(int n, int d) {
  int count = 0;
  for (int i = 0; i <= n; i++) {
    count += (i * i).toString().split(d.toString()).length - 1;
  }
  return count;
}
