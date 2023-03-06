String getParityofTwoNumbers(int x, int y) => (x + y) % 2 == 0
    ? (x % 2 == 0 ? "Both are even" : "Only one is even")
    : "Both are odd";
