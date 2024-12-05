#!/bin/bash

have_nots="r t y u i a s g h l b m"
haves="o n e"

./search_exclude_letters.bash $have_nots > unsorted_have_nots.txt
./search_include_letters.bash $haves > unsorted_haves.txt
sort have_nots.txt  > sorted_have_nots.txt
sort haves.txt > sorted_haves.txt
comm -12 sorted_have_nots.txt sorted_haves.txt

rm unsorted_have_nots.txt unsorted_haves.txt sorted_have_nots.txt sorted_haves.txt



