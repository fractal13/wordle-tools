#!/bin/bash

#
# grab words from the dictionary that have none of the
# letters listed.
#

function usage() {
    echo "usage: $0 letter [letter letter ...]"
    echo "A sequence of egreps will be applied to make sure all letters"
    echo "are not in the word."
    echo "Note this is only good for letters we know have to be not in the word."
}


first_letter="$1"
words_file="/etc/dictionaries-common/words"

if [ ! -e "$words_file" ]; then
    echo "$words_file does not exist. This needs to be updated for your system."
    exit 1
fi

if [ -z "$first_letter" ]; then
    usage
    exit 1
fi

cmd="egrep '^.....$' $words_file"
for arg in "$@"; do
    cmd="$cmd | egrep -i -v $arg"
done

echo $cmd
eval $cmd
