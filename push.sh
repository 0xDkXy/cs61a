#!/bin/bash
red="\e[0;31m"
green="\e[0;32m"
default_color="\e[00m"
git pull origin master
if [ $? -eq 1 ];then
    echo -e "${red}Fail to pull${default_color}"
else
    echo -e "${green}Successfully pull${default_color}"
    git add .
    git commit -m "$1"
    git push origin master
    if [ $? -eq 0 ];then
        echo -e "${green}Successfully push${default_color}"
    else
        echo -e "${red}Fail to push${default_color}"
    fi
fi
    

