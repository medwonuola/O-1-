int find(List<int> integers) {
  bool isEven = (integers[0] + integers[1] + integers[2]) % 2 == 0;
  print(isEven);
  for (int i = 0; i < integers.length; i++) {
    if (integers[i] % 2 == (isEven ? 1 : 0)) return integers[i];
  }
  return -1;
}
