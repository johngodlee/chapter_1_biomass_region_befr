#!/bin/bash

FILES=(acm_input/ACM_GPP_ET_*.csv)

LATS=$(cat extracted_data/lat_vec.txt)

LENGTH=${#FILES[@]}

for i in $( seq 1 $LENGTH ); do
	LAT=$(echo $LATS | cut -d" " -f$i)
	FILE=${FILES[$i-1]}

	sed -i "1s;^;latitude,$LAT,,,,,,\n;" $FILE
done

