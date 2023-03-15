int solve2(String s) {
  final consonants = RegExp('[^aeiou]+');
  final values = s
      .replaceAll(consonants, ' ')
      .trim()
      .split(' ')
      .map((word) => word.codeUnits.fold(0, (sum, char) => sum + char - 96))
      .toList();
  return values.isNotEmpty ? values.reduce((a, b) => a > b ? a : b) : 0;
}

int solve(String s) {
  List<String> vowels = "aeiou".split("");
  List<String> strings = [];
  List<String> result = [];
  String alp = "abcdefghijklmnopqrstuvwxyz";
  List<int> results = [];

  strings = s.split(RegExp("(?<=[aeiou])"));

  strings.forEach((e) {
    vowels.forEach((vow) {
      if (e.endsWith(vow)) {
        result.add(e.substring(0, e.length - 1));
      } else {
        result.add(e);
      }
    });
  });

  result.sort();

  result.forEach((e) {
    int newVal = 0;
    e.split("").forEach((e) {
      newVal += alp.indexOf(e) + 1;
    });
    results.add(newVal);
  });

  results.sort;

  return results[results.length - 1];
}
