List<int> solver_test(String s) {
  int n = 0, up = 0, low = 0, sp = 0;
  for (int i = 0; i < s.length; i++) {
    int temp = s.codeUnitAt(i);
    if (temp >= 48 && temp <= 57) {
      n += 1;
    } else if (temp >= 97 && temp <= 122) {
      low += 1;
    } else if (temp >= 65 && temp <= 90) {
      up += 1;
    } else {
      sp += 1;
    }
  }
  return [up, low, n, sp];
}
