#!/bin/bash

## Logo ## 
logo(){
printf """
  _____                                              
 |  ___|___    _ __ ___ _ __   __ _ _ __ ___   ___ _ __ 
 | |_ |_  /   | \'__/ _ \ \'_ \ / _\` | \'_ \` _ \ / _ \ '__|
 |  _| / /    | | |  __/ | | | (_| | | | | | |  __/ |   
 |_|  /___|___|_|  \___|_| |_|\__,_|_| |_| |_|\___|_|   
         |_____|   <---- Created by : 𝝘𝝝𝝜𝗦𝝨𝗖 ----->                                     """
}

## Core Function ##
renamer(){
if ls|egrep -q 'frame*.png$'
then
printf "\n[ + ] Renaming frame files in proper FZ format...(✔)"
for i in $(ls|egrep '[0-9a-zA-Z]+*.png')
do
	z="$(echo $i|awk -F '_' '{print $2}')"
	z2="${z#0}" # Removes leading zeros
	z3="frame_$z2.png"
	mv $i $z3
	printf "\n[ ✔ ] $i --> $z3"
done
printf "\n=====  Renaming Finished ======"
else
	printf "\n[ ! ] No frame files found in current folder"
fi
}

## Main Function ##
main(){
logo	
renamer
}

## Script Start ##
main
