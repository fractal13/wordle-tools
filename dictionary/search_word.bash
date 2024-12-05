#!/bin/bash

#
# grab words from the dictionary that match the pattern
# found so far.
#

function usage() {
    echo "usage: $0 pattern"
    echo "pattern is a regular expression that will be wrapped as ^pattern$"
    echo "to egrep in the words file."
    echo "note this is only good for letters we know the position of."
}


pattern="$1"
words_file="/etc/dictionaries-common/words"

if [ ! -e "$words_file" ]; then
    echo "$words_file does not exist. This needs to be updated for your system."
    exit 1
fi

if [ -z "$pattern" ]; then
    usage
    exit 1
fi

egrep -i '^'"$pattern"'$' $words_file

