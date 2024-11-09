#!/bin/bash

echo "This is my sript for the UDEMY/CODECLOUD Ansible Training"
echo "From zero to hero  :-)"

while true; do
	echo -n "Please enter your name: "
	read varname

	if [[ "$varname" == "Jens" || "$varname" == "Julita" || "$varname" == "Max" ]]; then
  		echo "Hello, $varname!"
		break	# Exit the loop
	else
  		echo "Please try again"
	fi
done

local_time=$(timedatectl | grep "Local time" | awk '{print $3, $4, $5, $6}')
time_zone=$(timedatectl | grep "Time zone" | awk '{print $1, $2, $3}')

cd ~/Ansible_from_zero_to-hero 
ansible-playbook playground.yml --limit web_server --extra-vars "varname='$varname' local_time='$local_time' time_zone='$time_zone'"
