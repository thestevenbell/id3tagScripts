#!/bin/sh

ITER=1
FILES="~/Downloads/Robert\ Jordan\ -\ WoT\ 07\ -\ A\ Crown\ of\ Swords/*.mp3"
for f in ~/Downloads/Robert\ Jordan\ -\ WoT\ 07\ -\ A\ Crown\ of\ Swords/*.mp3
	do
		echo "Processing $f"
		echo $ITER
		id3tag --song=$ITER "${f}"
		ITER=$(expr $ITER + 1)
	done
