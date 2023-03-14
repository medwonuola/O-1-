def solve(s):
    uppercase = 0
    lowercase = 0
    numbers = 0
    special = 0

    for char in s:
        if char.isupper():
            uppercase += 1
        elif char.islower():
            lowercase += 1
        elif char.isdigit():
            numbers += 1
        else:
            special += 1
    
    return [uppercase, lowercase, numbers, special]