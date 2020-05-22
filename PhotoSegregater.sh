#!/bin/bash
for photos in segregate_photos/*.jpg
	do
		year=$(echo $(basename $photos) | cut -c 1-4)
		month=$(echo $(basename $photos) | cut -c 6-6)
		mkdir -p segregate_photos/$year/$month
		mv $photos segregate_photos/$year/$month

	done

	
