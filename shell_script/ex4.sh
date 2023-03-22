#!/bin/bash
filePath="file_path"
if [ -e "$filePath" ]; then
       echo "$filePath exists"
       if [ -w "$filePath" ]; then
              echo "You have permission to edit $filePath"
       else  
              echo "You do not have permission to edit $filePath"
       fi
else
	echo "$filePath does not exist"
fi	


