#!/bin/bash

# deploy stacks
for filename in ../stacks/*.yml; do
	base=${filename%.yml}
    # echo "$base"
	# echo "$filename"
	# echo "$base" | sed 's/.*\///'
	stack="$(echo "$base" | sed 's/.*\///')"
	echo "docker stack deploy -c $filename $stack"
	docker stack deploy -c $filename $stack
done


#docker stack rm logspout diskover windows
