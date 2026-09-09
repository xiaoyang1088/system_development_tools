def build_text():
    parts = []

    for number in range(50000):
        parts.append(str(number) + ",")

    return "".join(parts)


result = build_text()
print(len(result))
