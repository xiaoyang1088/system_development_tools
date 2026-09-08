import random


random.seed(20260831)
vocab = [f"w{i}" for i in range(1000)]

with open("words.txt", "w", encoding="utf-8") as f:
    f.write(" ".join(random.choice(vocab) for _ in range(30000)))