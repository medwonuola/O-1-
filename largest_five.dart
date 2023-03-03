// https://www.codewars.com/kata/51675d17e0c1bed195000001/train/dart/633bdcf9e8bd8f0063a93f74

// main solution:

int findLargestSequence(String n) {
  int largestN = 0;
  for (int i = 0; i <= n.length - 5; i++) {
    int currentN = int.parse(n.substring(i, i + 5));
    if (currentN > largestN) {
      largestN = currentN;
    }
  }
  return largestN;
}

// alternative solution:

int bigFive(String n) {
  final List<int> numbers = [];
  for (int i = 0; i < n.length - 4; i++) {
    numbers.add(int.parse(n.substring(i, i + 5)));
  }

  numbers.sort();
  return numbers.last;
}
