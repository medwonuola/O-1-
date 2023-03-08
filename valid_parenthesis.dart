bool isValidParentheses(String braces) {
  var open = 0;
  for (var e in braces.split('')) {
    if (open < 0) return false;
    open += e == '(' ? 1 : -1;
  }
  return open == 0;
}
