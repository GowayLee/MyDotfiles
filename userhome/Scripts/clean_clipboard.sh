#!/bin/bash

declare sum=$(cliphist list | wc -l)

# handle "*" seperately
cliphist delete-query "*"

for i in $(cliphist list | cut -f2); do 
	cliphist delete-query "$i"
	sum=$((sum+1))
done 

notify-send "Clipboard deletes "$((sum - $(cliphist list | wc -l)))" items"

unset sum
