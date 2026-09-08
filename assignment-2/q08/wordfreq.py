words = open("words.txt", encoding="utf-8").read().split()
unique = set(words)

print("count=", len(unique))