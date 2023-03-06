bool xo(String arg) =>
    arg.toLowerCase().split('x').length == arg.toLowerCase().split('o').length;

// earlier solution:
bool xo2(String arg) {
  int x = 0;
  int o = 0;
  arg.split('').forEach((e) {
    if (e.toUpperCase() == 'X') {
      x++;
    } else if (e.toUpperCase() == 'O') {
      o++;
    }
  });
  return x == o;
}
