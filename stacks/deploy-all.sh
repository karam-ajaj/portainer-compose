i#!/bin/bash
for filename in *.yml; do
	base=${filename%.yml}
    	echo "$base"
	docker stack deploy -c $filename $base
done


docker stack rm terraform media_services logspout diskover windows
