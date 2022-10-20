#!/bin/bash
total=0
for i in {1000..2000}; do
    if [[ $i = [01][01][01][01] ]]; then
        echo $i
        total=$(($total+$i))
    fi
done
echo "total: $total"
