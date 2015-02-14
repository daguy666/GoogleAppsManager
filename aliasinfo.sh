#!/bin/bash

GAM_ALIAS=$1

if [ -z $GAM_ALIAS ];
then
        echo "Usage: $0 <aliasname>"
        exit 2
fi

python gam.py info alias $GAM_ALIAS

