#!/bin/bash

sshstart()
{
	sudo service ssh start
	sudo service ssh status | grep -i active
}

sshstop()
{
	sudo service ssh stop
	sudo service ssh status | grep -i active
}

sshrestart()
{
	sudo service ssh restart
	sudo service ssh status | grep -i active
}

ftpstart()
{
	sudo service vsftpd start
	sudo service vsftpd status | grep -i active
}

ftpstop()
{
	sudo service vsftpd start
	sudo service vsftpd status | grep -i active
}

ftprestart()
{
	sudo service vsftpd restart
	sudo service vsftpd status | grep -i active
}

apachestart()
{
	sudo service apache2 start
	sudo service apache2 status | grep -i active
}
apachestop()
{
	sudo service apache2 stop
	sudo service apache2 status | grep -i active
}

apacherestart()
{
	sudo service apache2 restart
	sudo service apache2 status | grep -i active
}

while true
do
echo "--------------------------------------------------------------------------"
echo "To start ssh please enter 1s, to stop ssh enter 2s, to restart enter !rs."
echo "To start ftp please enter 1f, to stop ftp enter 2f, to restart enter !rf."
echo "To start apache2 enter 1a, to stop apache2 enter 2a, to restart enter !ra."
echo "To exit then please type exit."
echo "--------------------------------------------------------------------------"
read var

if [ $var == '1s' ]
then
	sshstart

elif [ $var == '2s' ]
then
	sshstop

elif [ $var == '!rs' ]
then
	sshrestart

elif [ $var == '1f' ]
then
	ftpstart

elif [ $var == '2f' ]
then
	ftpstop

elif [ $var == '!rf' ]
then
	ftprestart

elif [ $var == '1a' ]
then
	apachestart

elif [ $var == '2a' ]
then
	apachestop

elif [ $var == '!ra' ]
then
	apacherestart
elif [ $var == exit ]
then
	exit

else
	echo "Please enter one of the options above!"
fi
done
