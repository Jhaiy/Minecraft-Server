#!/bin/bash
while true; 
do echo "keeping alive...."; 

screen -S server-terminal -X stuff "save-all$(printf '\r')"

sleep 5;

git add --all
git commit -a -m "save"
git push

echo "game saved."

sleep 300; done