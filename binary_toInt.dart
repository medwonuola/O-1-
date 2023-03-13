int binaryArrayToNumber(List<int> arr) {
  int sum = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 1) {
      sum += (1 << (arr.length - i - 1));
    }
  }
  return sum;
}

int binaryArrayToNumber2(List<int> arr) => int.parse(arr.join(), radix: 2);
