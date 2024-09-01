#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"

#echo "User id is: $USERID "

VALIDATE(){
    if [ $1 -ne 0 ]
then
echo "command is ...FAiled"
exit 1
fi 
}

if [ $USERID -ne 0 ]
then 
    echo "Plese run this script with root priviliges"
    exit 1
    
    fi

    dnf list installed git
    
    VALIDATE $?

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