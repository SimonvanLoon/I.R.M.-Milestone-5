#!/bin/bash

# Name: Simon van Loon
# Student number: 3515710
# Date: 21-03-2020
# File name: de_counter.sh
# This shell script extracts the PDF file of the Wikipedia article 'Rijksuniversiteit Groningen',
# creates a txt file from the PDF file,
# and outputs the amount of times the word 'de' occurs in the text file. 
# Usage: bash de_counter.sh
# This program runs on Ubuntu 18.04.3 LTS. 

# extract the text from the Wikipedia pdf file using pdftotext,
# and write it to University_of_Groningen.txt.
pdftotext Rijksuniversiteit_Groningen.pdf > Rijksuniversiteit_Groningen.txt

# search for the occurences of 'de, place each match on a seperate line,
# and count the amount of lines.
NUMDEOCCUR=`grep -wo 'de' Rijksuniversiteit_Groningen.txt | wc -l` 

echo "The word 'de' occurs $NUMDEOCCUR times in the Wikipedia article."



