#!/bin/bash
red="\e[0;31m"
green="\e[0;32m"
git pull origin master
if [ $? -eq 1 ];then
    echo -e "${red}Fail to pull"
else
    echo -e "${green}Successfully pull"
    git add .
    git commit -m "$1"
    git push origin master
    if [ $? -eq 0 ];then
        echo -e "${green}Successfully push"
    else
        echo -e "${red}Fail to push"
    fi
fi
    

