#!/bin/bash

# 1.07.2009

if [ $# == 0 ] || [ $1 == "--help" ]; then
	echo "skrypt konwertuje dane ze stooq.pl do programu analizer"
	echo "$0 <infile> <outfile>"
	exit 0
fi

cat $1 | tail -n +2 | sed -e 's/,/ /g' > $2
# tac $2 > "${2}.rev"
