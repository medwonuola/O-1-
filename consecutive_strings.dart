String longestConsec(List<String> strarr, int k) {
  List newString = [];
  strarr.forEach((e) {
    String s = "";
    if (strarr.indexOf(e) < strarr.length - k) {
      for (int i = 0; i < k; i++) {
        s += strarr.elementAt(strarr.indexOf(e) + i);
      }
    }
    newString.add(s);
  });
  return newString.last;
}
