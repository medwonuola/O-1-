int squareDigits(int n) => int.parse(
    n.toString().split('').map((e) => int.parse(e) * int.parse(e)).join());

// Another approach:
int sol2(int n) {
  String sum = "";
  n.toString().split('').forEach((e) {
    sum += (int.parse(e) * int.parse(e)).toString();
  });
  return int.parse(sum);
}
