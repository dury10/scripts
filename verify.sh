#!/bin/bash
#script made by dury, thanks to s0litare for the idea!
#if you have more or less pi's you can add more nr or reduce the nr. I have 8, so this script it is made to check from 0 to 7.
#if you have a diferent user change the name in this script the user is pi. And each pi has a host name called pi0 to pi7.

echo -e "\e[1;33m Checking stats \e[0m"
echo -e "\e[1;33m The curent cpu freq and cpu temp ar: \e[0m"
for I in 0 1 2 3 4 5 6 7 ;
do echo -n "pi$I:";
ssh pi@pi$I.local /home/pi/scripts/check.sh ;
done

