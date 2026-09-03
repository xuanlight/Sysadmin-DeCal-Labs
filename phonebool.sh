#!/bin/bash
# Content of phonebook


# numberstorage
# __NUMBERLIST__


# __ENDOFNUMBERLIST__

# codes

$ N=0
new () {
	let N=$N+1
	sed -i "/ __NUMBERLIST__/a \$N $1 $2\" phonebook.sh
}

list () {
	$ M=1
	while [ M -neq N ] do
		sed -n '/# __NUMBERLIST__ /,/# __ENDOFNUMBERLIST__ /'

