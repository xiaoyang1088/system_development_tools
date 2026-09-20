import argparse


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--name", required=True)
    a = p.parse_args()

    if not a.name.strip():
        raise SystemExit(2)

    print(f"Hello, {a.name}!")
