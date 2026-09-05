#!/bin/bash
# A simple Phonebook

PHONEBOOK_ENTRIES="bash_phonebook_entries"

if [ "$#" -lt 1 ]; then
    exit 1

elif [ "$1" = "new" ]; then
    # YOUR CODE HERE #
    echo "$2":"$3" >> "$PHONEBOOK_ENTRIES"

elif [ "$1" = "list" ]; then
    if [ ! -e "$PHONEBOOK_ENTRIES" ] || [ ! -s "$PHONEBOOK_ENTRIES" ]; then
	echo "phonebook is empty"
    else
	# CODES #
	cat "$PHONEBOOK_ENTRIES"
    fi

elif [ "$1" = "lookup" ]; then
    # CODES #
    NAME="$2"
    awk -v awk_name="$NAME" -F':' '$1 == awk_name {print $2}' $PHONEBOOK_ENTRIES

elif [ "$1" = "remove" ]; then
    # CODES #
    awk -F':' -v name="$2" '$1 != name' "$PHONEBOOK_ENTRIES" > temp && mv temp "$PHONEBOOK_ENTRIES"

elif [ "$1" = "clear" ]; then
    # CODES #
    > "$PHONEBOOK_ENTRIES"

else
    # CODES #
    echo "wrong input"
    
fi

