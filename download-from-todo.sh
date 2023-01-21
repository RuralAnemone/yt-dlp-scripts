#!/bin/bash

if [ ! -f ./todo ]; then 				# if todo does not exist
	echo "error 1: can't find file 'todo'"
	exit 1
fi

if [ $(cat ./todo) = "" ]; then
	echo "error 2: file 'todo' exists, but is empty"
	exit 2
fi

# -----

for id in $(cat ./todo); do
	yt-dlp $id
done

echo "clear 'todo'? (y/n)"
read answer
if [ $answer = "y" ] || [ $answer = "Y" ]; then
	rm -f ./todo
	touch ./todo
fi

echo "done."
exit 0
