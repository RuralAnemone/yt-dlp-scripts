#!/bin/bash

if [ ! -f ./todo ]; then 				# if todo does not exist
	echo "error 1: can't find file 'todo'"
	exit
fi

if [ ! -s ./todo ]; then
	echo "error 2: file 'todo' exists, but is empty"
	exit
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
	echo "done. (cleared todo)"
else
	echo "done. (kept todo)"
fi

exit
