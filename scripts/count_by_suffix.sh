#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 <suffix>"
  exit 1
fi

suffix="$1"
target_dir="$(cd "$(dirname "$0")/suffix_search_test" && pwd)"

count=$(find "$target_dir" -type f -name "*$suffix.txt" | wc -l)

echo "Number of files ending with '$suffix': $count"
