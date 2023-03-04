String getType(int x, int y) {
  String result = (x + y) % 2 == 0
      ? (x % 2 == 0 ? "Both are even" : "Only one is even")
      : "Both are odd";
  return result;
}
