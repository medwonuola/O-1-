def capitalize(s, ind):
    return ''.join([s[i].upper() if i in ind else s[i] for i in range(len(s))])

print(capitalize('codingisafunactivity', [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]))