#!/bin/sh

for f in *.mp3
	do
		echo "Processing $f"

		id3tag --album="WOT9"
	done
