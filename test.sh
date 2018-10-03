#!/bin/bash
declare -a val="$(sudo git log -1 --pretty=%H  -p)"
for data in "${val[@]}"
do
	echo $data
done

