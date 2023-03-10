def persistence(n, count=0):
    if n < 10:
        return count
    mult_ = 1
    for digit in str(n):
        mult_ *= int(digit)
    return persistence(mult_, count + 1)
