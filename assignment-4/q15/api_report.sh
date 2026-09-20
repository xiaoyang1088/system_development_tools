#!/usr/bin/env bash

set -e

curl --noproxy 127.0.0.1 -fsS http://127.0.0.1:8000/packages.json |
jq -r '
  [.[] | select(.status == "active" and .downloads >= 100)]
  | sort_by(-.downloads, .name)
  | "# Package Summary\n\n| name | version | downloads |\n|---|---|---:|\n"
    + (
        map("| \(.name) | \(.version) | \(.downloads) |")
        | join("\n")
      )
' > summary.md
