#!/bin/bash

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
