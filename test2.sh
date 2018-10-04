#!/bin/bash
#GIT_COMMIT
c=0
declare -a valueset
val="$(sudo git diff-tree --no-commit-id --name-only -r $(sudo git log -1 --pretty=%H))"
dataarr=$(echo $val | tr " " "\n")
#IFS=" " read -ra ADDR1 <<<  $val
for path in $dataarr; do
  IFS='/' read -ra ADDR <<<  $path
  for i in "${ADDR[@]}"; do
    #echo  "$i"s
    if [ $i = "folder2" ]; then
        echo "running kong"
        valueset[c]=$i
        c=$((c+1));
        #exit
    else
      echo $i
    fi
  done
done

for values in "${valueset[@]}"; do
  echo "data -------- "$values
done
