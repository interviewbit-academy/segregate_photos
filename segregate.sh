for file in segregate_photos/*.jpg
do
    filename="$(basename "${file}")"
    year="$(echo "${filename}" | cut -b 1-4)"
    month="$(echo "${filename}" | cut -b 6)"
    mkdir -p segregate_photos/$year/$month
    mv $file segregate_photos/$year/$month
done