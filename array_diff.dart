List<int> array_diff(List<int> a, List<int> b) =>
    a..removeWhere((n) => b.contains(n));

// this code subtracts array b from array a