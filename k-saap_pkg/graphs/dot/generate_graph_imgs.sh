#!/bin/sh

for filename in *.dot
do
    if [ -d "img" ]; then
	dot -v -Kfdp -n -Tpng -o "img/"$filename".png" $filename
	echo $filename".png completed into /img"
    fi
done;