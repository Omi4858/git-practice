#!/bin/bash

USERID=$(id -u)

#echo "User id is: $USERID "

if [ $USERID -ne 0 ]
then 
    echo "Plese run this script with root priviliges"
    exit 1
    
    fi

    dnf list installed git

    if [ $? -ne 0 ]
    then
        echo " Git is not installed, going to install it... "
        dnf install git -y

    else
        echo "Get is already installed, nothing to to"

    fi

    dnf list installed mysql

    if [ $? -ne 0 ]

    then
        echo "My sql is not installed....going to install"
        dnf install mysql -y
        if [ $? -ne 0 ]
        then
        echo "Mysql installation is failur..please check"
        exit 1
        else 
        echo "Mysql installation is success"
        fi
        else
        echo "Mysql is already installed..nothing to do"
        fi