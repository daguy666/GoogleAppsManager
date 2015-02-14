#!/bin/bash

GAM_GROUP=$1

if [ -z $GAM_GROUP ];
then
        echo "Usage: $0 <groupname>"
        exit 2
fi

python gam.py info group $GAM_GROUP

