#!/bin/sh
#!/bin/bash

sudo chmod +x *

sudo apt update

screen -S server-terminal -d -m ./run.sh

screen -S ngrok-terminal -d -m ssh -R 80:localhost:25565 serveo.net

screen -S playit-terminal -d -m playit
