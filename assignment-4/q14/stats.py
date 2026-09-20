import csv

with open("data.csv") as f:
    total = sum(int(r["value"]) for r in csv.DictReader(f))

open("stats.txt", "w").write(str(total))
