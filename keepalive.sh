#!/bin/bash
while true; 
do echo "keeping alive...."; 

git add --all
git commit -a -m "save"
git push

sleep 300; done