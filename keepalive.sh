#!/bin/bash
while true; do echo "keeping alive...."; sleep 300; done

git add --all
git commit -a -m "save"
git push