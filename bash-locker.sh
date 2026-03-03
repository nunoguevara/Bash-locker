#!/bin/bash

#Simple pass lock (works best for Termux)

trap '' SIGINT SIGQUIT SIGTSTP

#You can edit your pass here
PASSWORD="yourpass"

declare -i attempt
attempt=0

while true; do
  #You can edit maximum attempts below
	if [ "$attempt" -gt 5 ]; then
		kill -9 $$
	else
		echo "Attempts: $attempt"
		echo "Enter password to continue:"
		read -s input
		if [ "$input" == "$PASSWORD" ]; then
			echo "Access granted!"
			fastfetch
			exec bash
		else
			echo "Access denied, try again."
			echo "Tip: You only have 5 chances!"
			((attempt += 1))
		fi
	fi
done
