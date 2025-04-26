#!/bin/sh
#!/bin/bash

sudo chmod +x *

sudo apt update

screen -S server-terminal -d -m ./run.sh

screen -S serveo-terminal -d -m ssh -R jaiyyhelmc.serveo.net:25565:localhost:25565 serveo.net

screen -S playit-terminal -d -m playit
