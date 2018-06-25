#!/bin/sh

ITER=1
for f in *.mp3
	do
		echo "Processing $f"
		if [ $ITER -le 9 ]
		then
			id3tag --song=00$ITER "${f}"
		elif [ $ITER -ge 9] || [ $ITER -le 99 ]
		then
			id3tag --song=0$ITER "${f}"
		else
			id3tag --song=$ITER "${f}"
		fi
		ITER=$(expr $ITER + 1)
	done
