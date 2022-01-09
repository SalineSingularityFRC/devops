#!/bin/sh

for f in `find .`; do
	printf "%s\t%s\n" "$1" "$f"
	chown "$1" "$f"
done
