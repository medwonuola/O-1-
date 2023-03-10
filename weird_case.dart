String toWeirdCase(String string) {
  var result = '';
  var count = 0;
  for (var i = 0; i < string.length; i++) {
    var char = string[i];
    result += count % 2 == 0 ? char.toUpperCase() : char.toLowerCase();
    count = char == ' ' ? 0 : count + 1;
  }
  return result;
}
