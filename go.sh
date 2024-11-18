#!/bin/bash

echo "This is my sript for the UDEMY/CODECLOUD Ansible Training"
echo "From zero to hero  :-)"

while true; do
	# Eingabe des Namens
	echo -n "Please enter your name (CTRL-C to exit): "
	read varname

	# Überprüfung des Namens
	if [[ "$varname" == "Jens" || "$varname" == "Julita" || "$varname" == "Max" ]]; then
  		echo "Hello, $varname!"
		
                # Lokale Zeit und Zeitzone holen
                local_time=$(timedatectl | grep "Local time" | awk '{print $3, $4, $5, $6}')
                time_zone=$(timedatectl | grep "Time zone" | awk '{print $1, $2, $3}')

                # Ansible Playbook ausführen
                cd ~/Ansible_from_zero_to-hero 
                ansible-playbook playground.yml --limit web_server --extra-vars "varname='$varname' local_time='$local_time' time_zone='$time_zone'"
	else
  		echo "Invalid name. Please try again"
	fi
done

