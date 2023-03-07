int stray(numbers) => numbers.fold(0, (a, b) => a ^ b);

int stray2(n) {
  n.sort();
  return (n[0] == n[1]) ? n.last : n.first;
}
