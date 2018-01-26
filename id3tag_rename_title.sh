#!/bin/sh

ITER=1
for f in *.mp3
	do
		echo "Processing $f"
		echo $ITER
		id3tag --song=$ITER "${f}"
		ITER=$(expr $ITER + 1)
	done
