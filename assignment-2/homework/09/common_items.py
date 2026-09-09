def find_common(first, second):
    common = []

    for number in first:
        if number in second:
            common.append(number)

    return common


first = list(range(20000))
second = set(range(10000, 30000))

result = find_common(first, second)
print(len(result))
