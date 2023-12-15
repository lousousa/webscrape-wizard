#!/bin/bash

source ./.env

file="input.txt"
base_directory="downloads"

while IFS=';' read -r directory url_raw; do
  url=$(echo "$url_raw" | tr -d '\r')
  wget -k "$url" -O index.html

  cat index.html | grep img | grep -Po 'src="\K.*?(?=")' | grep '\.jpg$' | sed 's/\?.*//' > links.txt

  mkdir -p "$base_directory/$directory"
  wget -i links.txt -P $base_directory/$directory

  a=1
  for i in $(cat links.txt); do
    new=$(printf "%04d.jpg" "$a")
    echo "mv "$base_directory/$directory/$(basename "$i")" "$base_directory/$directory/$new""
    mv "$base_directory/$directory/$(basename "$i")" "$base_directory/$directory/$new"
    let a=a+1
  done

  rm index.html links.txt
done < "$file"

scp -r "$base_directory" "$SSH_USER@$SSH_HOST:$SSH_PATH"

rm -rf downloads
