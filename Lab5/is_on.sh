#!/bin/bash

ping -c 4 -W 2 8.8.8.8 >/dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "OK"
else
	echo "Host is not reachable"
fi
