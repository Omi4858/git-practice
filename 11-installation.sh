#!/bin/bash

USERID=$(id -u)

#echo "User id is: $USERID "

if [ $USERID -ne 0 ]
then 
    echo "Plese run this script with root priviliges"
    
    fi

    dnf install git -y