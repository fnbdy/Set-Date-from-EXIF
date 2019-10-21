#!/bin/zsh
change_date()
{
	# Get date from EXIF using 'mdls' command
	exifDate="$(mdls -name kMDItemContentCreationDate -raw "$1")"
	# Change date to timezone on host computer
	exifDate="$(date -jf "%Y-%m-%d %T %z" "$exifDate" +"%Y-%m-%d %T %z")"

	# Format date for 'touch' command
	exifDate="${exifDate:0:16}"
	exifDate="${exifDate//"-"}"
	exifDate="${exifDate//" "}"
	exifDate="${exifDate//":"}"
	# echo "$exifDate"

	# Change "Date Created" using 'touch' command
	touch -ct "$exifDate" "$1"
	# echo Success!
}

for i in "$@"; do
	# If selected item is directory
	if [[ -d "$i" ]]; then
		cd "$i"
		# Method to recursively loop through files/dirs even with names that contain whitespace
		find . -type f -print0 |
		while IFS= read -r -d '' file; do
			# Check if file is image
			if [[ $(file "$file" | grep -i image) != "" ]]; then
				change_date "$file"
			fi
		done
	# if selected item is file
	elif [[ -f "$i" ]]; then
		# Check if file is image
		if [[ $(file "$i" | grep -i image) != "" ]]; then
			change_date "$i"
		fi
	fi
done