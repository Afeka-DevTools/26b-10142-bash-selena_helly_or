#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 <prefix>"
  exit 1
fi

prefix="$1"
target_dir="$(cd "$(dirname "$0")/prefix_test" && pwd)"

add_prefix() {
	for file in "$target_dir"/*.txt; do
		[ -e "$file" ] || continue

		filename="$(basename "$file")"

		case "$filename" in
			"$prefix"*)
				echo "$filename already has the prefix"
				continue
				;;
		esac

		mv "$file" "$target_dir/$prefix$filename"
		echo "$filename renamed to $prefix$filename"
	done
}

add_prefix
