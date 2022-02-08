#!/bin/sh

# set the permissions of all the files in the current directory
# so that it's owned by the user www and the group wheel, and so
# users in the wheel group have permission to write the files

for f in `find .`; do
	echo "$f -> www:wheel"
	sudo chown www:wheel "$f"
	sudo chmod g+w "$f"
done
