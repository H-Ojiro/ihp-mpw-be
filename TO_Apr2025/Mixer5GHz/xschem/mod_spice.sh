#!/bin/bash

source ~/.bash_common

if (($# > 0)); then
    spice_files=($*)
else
    spice_files=(lvs/INDUCTOR_L*.spice)
fi

for sp in "${spice_files[@]}"; do
    echo $sp
    echo "<<"
    grep --color -e 's=[0-9]\+[a-z]*' $sp
    sed -i 's/s=[0-9]\+[a-z]*/s=1/' $sp
    echo ">>"
    grep --color -e 's=\S*' $sp
done
