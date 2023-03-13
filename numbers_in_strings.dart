int solve(String s) {
  List<int> result = s
      .split(RegExp(r"[a-z]"))
      .map((e) => e.isNotEmpty ? int.parse(e) : 0)
      .toList()
    ..sort((a, b) => a.compareTo(b));
  ;

  return result.removeLast();
}
