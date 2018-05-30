#!/bin/sh
killall x11vnc
ID=`shuf -i 100000-999999 -n 1`

ADDRESS="90.188.238.128"
ADDRESS2="194.87.237.209"

if ping -c 3 -s 1 -W 1 $ADDRESS
then
x11vnc -connect repeater=ID:$ID+$ADDRESS:5509 -solid -ultrafilexfer -speeds dsl -bg
zenity --info --text '<i>Lait-Soft HELPDESK</i>\n\n<span foreground="red" font="16">\НЕ ЗАКРЫВАЙТЕ ЭТО ОКНО</span>\n\n<span foreground="black" font="24">\Ваш ID</span>\n\n<span foreground="blue" font="32">'$ID' </span>\n\n<i>www.lait-soft.ru</i>\n\n\n<span foreground="blue" font="11">сервер 1</span>\n'
else
x11vnc -connect repeater=ID:$ID+$ADDRESS2:5509 -solid -ultrafilexfer -speeds dsl -bg
zenity --info --text '<i>Lait-Soft HELPDESK</i>\n\n<span foreground="red" font="16">\НЕ ЗАКРЫВАЙТЕ ЭТО ОКНО</span>\n\n<span foreground="black" font="24">\Ваш ID</span>\n\n<span foreground="blue" font="32">'$ID' </span>\n\n<i>www.lait-soft.ru</i>\n\n\n<span foreground="blue" font="11">сервер 2</span>\n'

fi
killall x11vnc