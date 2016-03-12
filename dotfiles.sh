#!/bin/env sh

set echo -e
cd link
for item in $(ls -A)
do
    ln -sT $item ~/$(basename "$item")
done
