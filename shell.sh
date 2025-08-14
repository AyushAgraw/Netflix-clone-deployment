#!/bin/bash

# Update the system
sudo apt update

# Install Docker on the instance
sudo apt install docker.io -y

# Clone our File
git clone https://github.com/AyushAgraw/Netflix-clone-deployment.git

cd Netflix-clone-deployment

sudo docker build -t netflix-clone .