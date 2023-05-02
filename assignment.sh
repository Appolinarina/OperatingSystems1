#!/bin/bash
set -o history #-o to get rid of scrolling feature
while true;
do
	echo " * Bash Commands * "
	echo "1: List files"
	echo "2: Show free disk space"
	echo "3: Show system path"
	echo "4: Display command history"
	echo "5: Backup files"
	echo "6: Exit"

	read input

	case $input in
		1) echo "Files list: "; ls; echo;;
		2) echo "Free disk space: "; df -h; echo;;
		3) echo "System path: "; echo  $PATH; echo;;
		4) echo "Command history: "; history; echo;;
		5) echo "Backup files: "; read directory; mkdir /workspaces/OperatingSystems1/BackupFolder; cd $directory; cp -r $directory /workspaces/OperatingSystems1/BackupFolder; ls -a;;
		6) echo "Exited successfuly"; exit 1;;
		*) echo "Invalid input"; echo;;
	esac	
done
	

