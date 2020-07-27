#! /bin/bash

function connect {
	
	readarray -t credentials < ~/Documents/credentials.txt	

	echo ${credentials[3]} | sudo openconnect --protocol nc ${credentials[0]} --user=${credentials[2]} --passwd-on-stdin --servercert ${credentials[4]} -b  

	}

function ssh80 {
	gnome-terminal --tab -- ssh root@10.110.163.80 -X
}

function ssh82 {
	gnome-terminal --tab -- ssh root@10.110.163.82
}

connect
ssh80
ssh82
