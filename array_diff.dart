List<int> array_diff(List<int> a, List<int> b) =>
    a..removeWhere((n) => b.contains(n));
