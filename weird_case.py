def to_weird_case(string):
    word = ""
    count = 0
    for letter in string:
        word = word + letter.upper() if count % 2 == 0 else word + letter.lower()
        count = count + 1 if letter != " " else 0
    return word
