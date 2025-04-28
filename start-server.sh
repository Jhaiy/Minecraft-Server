#!/bin/sh
#!/bin/bash

sudo chmod +x *

sudo apt update

screen -S server-terminal -d -m ./run.sh

screen -S playit-terminal -d -m playit

screen -S autosave -d -m ./keepalive.sh