// int sumOfIntervals(List<List<int>> intervals) => intervals
//     .reduce((value, element) => intervals.reduce((a, b) => b + a))
//     .reduce((x, y) => y - x);

// intervals.forEach((List<int> elements) => elements.reduce((a, b) => a + b));

int sumOfIntervals(List<List<int>> intervals) {
  return intervals
      .reduce((value, element) => value + element)
      .reduce((a, b) => b - a);
}

void main(List<String> args) {
  print(sumOfIntervals([
    [1, 5],
    [6, 10]
  ]));
}
