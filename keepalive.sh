#!/bin/bash
while true; 
do echo "keeping alive...."; 

screen -S server-terminal -X stuff "save-all$(printf '\r')"

sleep 5;

sudo git add --all
sudo git commit -a -m "save"
sudo git push

echo "game saved."

sleep 300; done
