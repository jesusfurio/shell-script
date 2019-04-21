#!/bin/bash
#This script deploy Django on Ubuntu Server.
echo "Write the directory of your Django proyect: "
read directory

echo "Is it the correct directory?[Y/N]"
read option

while [ $option != "Y" ]; do
	echo "Write the directory of your Django proyect: "
	read directory
	echo "Is it the correct directory?[Y/N]"
	read option
done

echo "Write the name of your proyect: "
read project

sudo apt-get update && upgrade
sudo apt-get install python3 python3-pip
pip3 install Django

if [ -d $directory ]; then
	cd $directory
else
	mkdir $directory
	cd $directory
fi

django-admin startproject $project

echo "Your proyect is in directory $directory"
echo "Your project $proyect is already created"
