#!/bin/sh
#!/bin/bash

sudo chmod +x *

sudo apt update && apt upgrade

screen -S server-terminal -d -m ./run.sh

screen -S ngrok-terminal -d -m ngrok tcp 25565

screen -S playit-terminal -d -m playit 

echo "====================="
echo "Sending IP Address..."
echo "====================="
sleep 5

echo "====================="
echo "--------SENT!--------"
echo "====================="

./discord-webhook.sh
