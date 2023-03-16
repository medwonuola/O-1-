String solve(String s) {
  int upper = 0;
  s.split('').forEach((element) {
    if (element == element.toUpperCase()) {
      upper++;
    }
  });
  return upper > s.length - upper ? s.toUpperCase() : s.toLowerCase();
}

String solve2(String str) => RegExp(r'[A-Z]').allMatches(str).length >
        RegExp(r'[a-z]').allMatches(str).length
    ? str.toUpperCase()
    : str.toLowerCase();
