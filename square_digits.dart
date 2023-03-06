int squareDigits(int n) => int.parse(
    n.toString().split('').map((e) => int.parse(e) * int.parse(e)).join());
