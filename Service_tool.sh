#!/bin/bash

while true
do

	echo 'Welcome to the Service Tool!'
	echo "----------------------------"
echo  "To start SSH enter 1S.
To Stop SSH enter 2S.
To Restart, enter !RS.
To start FTP, enter 1F.
To Stop FTP, enter 2F.
To Restart FTP, enter !RF.
To start apache2, enter 1A.
To stop apache2, enter 2A.
To restart apache2, enter !RA.
To view active connections, enter Active connections.
To exit, enter exit"

read var
if [[ $var == "1S" ]] || [[ $var == "1s" ]]
then
	echo 'SSH is starting up!'
	sleep 2
	sudo service ssh start
elif [[ $var == "2S" ]] || [[ $var == "2s" ]]
then
	echo 'Stopping SSH!'
	sleep 2
	sudo service ssh stop
elif [[ $var == "!RS" ]] || [[ $var == "!rs" ]]
then
	echo 'Restarting SSH!'
	sleep 2
	sudo service ssh restart
elif [[ $var == "1F" ]] || [[ $var == "1f" ]]
then
	echo 'Starting FTP!'
	sleep 2
	sudo service vsftpd start
elif [[ $var == "2F" ]] || [[ $var == "2f" ]]
then
	echo 'Stopping FTP!'
	sleep 2
	sudo service vsftpd stop
elif [[ $var == "!RF" ]] || [[ $var == "!rf" ]]
then
	echo 'Restarting FTP!'
	sleep 2
	sudo service vsftpd restart
elif [[ $var == "1A" ]] || [[ $var == "1a" ]]
then
	echo 'Starting apache2!'
	sleep 2
	sudo service apache2 start
elif [[ $var == "2A" ]] || [[ $var == "2a" ]]
then
	echo 'Stopping apache2!'
	sleep 2
	sudo service apache2 stop
elif [[ $var == "Active Connections" ]] || [[ $var == "active connections" ]]
then
	echo 'Listing active connections!'
	sleep 2
	sudo netstat -tapn
elif [[ $var == "!RA" ]] || [[ $var == "!ra" ]]
then
	echo 'Restarting apache2!'
	sleep 2
	sudo service apache2 restart
elif [[ $var == exit ]]
then
	exit
elif [[ $var != "1S" && "1s" && "2S" && "2s" && "!RS" && "!rs" && "1F" && "1f" && "2F" && "2f" && "!RF" && "!rf" && "1A" && "1a" && "2A" && "2a" && "!RA" && "!ra" && "Active Connections" && "active connections" ]]
then
	echo "ERROR: Please enter one of the following options!"
fi
	echo "----------------------------------------------------------"
done
