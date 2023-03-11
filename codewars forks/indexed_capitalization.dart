String capitalize(String s, List<int> ind) {
  String result = '';
  for (int i = 0; i < s.length; i++) {
    if (ind.contains(i)) {
      result += s[i].toUpperCase();
    } else {
      result += s[i];
    }
  }
  return result;
}
