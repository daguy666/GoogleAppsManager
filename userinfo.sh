#!/bin/bash

GAM_USER=$1

if [ -z $GAM_USER ];
then
        echo "Usage: $0 <username>"
        exit 2
fi

python gam.py info user $GAM_USER

