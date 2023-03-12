String longest(String a, String b) {
  String _default = "abcdefghijklmnopqrstuvwxyz";
  String _result = "";
  _default.split('').forEach((e) {
    if (a.contains(e) || b.contains(e)) {
      _result += e;
    }
  });
  return _result;
}

// String sol(String s1, String s2) => (s1 + s2).split("")..sort()..toSet().join("");