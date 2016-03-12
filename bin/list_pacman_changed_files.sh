#!/bin/bash -e

# Select the hash algorithm. Currently available (see mtree files and mtree(5)):
# md5, sha256
algo="md5"

for package in /var/lib/pacman/local/*; do
    [ "$package" = "/var/lib/pacman/local/ALPM_DB_VERSION" ] && continue

    # get files and hash sums
    zgrep " ${algo}digest=" "$package/mtree" | grep -Ev '^\./\.[A-Z]+' | \
        sed 's/^\([^ ]*\).*'"${algo}"'digest=\([a-f0-9]*\).*/\1 \2/' | \
        while read -r file hash
        do
            # expand "\nnn" (in mtree) / "\0nnn" (for echo) escapes of ASCII
            # characters (octal representation)
            for ascii in $(grep -Eo '\\[0-9]{1,3}' <<< "$file"); do
                file="$(sed "s/\\$ascii/$(echo -e "\0${ascii:1}")/" <<< "$file")"
            done

            # check file hash
            if [ "$("${algo}sum" /"$file" | awk '{ print $1; }')" != "$hash" ]; then
                echo "$(basename "$package")" /"$file"
            fi
        done
    done
