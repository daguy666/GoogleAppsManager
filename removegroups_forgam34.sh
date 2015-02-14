#!/bin/bash
# For Google Apps Manager Version 3.42
# This will log to the current directory 
# to gamlog
# Find more here. 
# https://github.com/daguy666/GoogleAppsManager
#==============================================

GAM_USER=$1

if [ -z $GAM_USER ];
then
    echo "Usage: $0 <username>"
    exit 2
fi
x=0

IFS='
'
date >> ./gamlog
for i in $( python gam.py info user $GAM_USER | sed -n '/Groups/,//p' | sed 1d | grep -Ev "(Licenses:|Google-Apps)" | sed 's/[<>]//g' | awk '{ print $2 }' )
     do
     group_name="$i"
     echo "Removing group : $group_name"
     python gam.py update group "$group_name" remove member $GAM_USER
     x=$(( $x+1 ))
     echo "Removing group : $group_name for $1" >> ./gamlog
done
echo "User $GAM_USER has been removed from $x groups"
