#!/bin/bash
set -e  # Agar koi command fail ho to script stop ho jaye

# Update system
apt update -y
apt upgrade -y

# Install dependencies
apt install -y docker.io git

# Enable and start Docker
systemctl enable docker
systemctl start docker

# Clone repo
git clone https://github.com/AyushAgraw/Netflix-clone-deployment.git

# Go to project directory
cd /Netflix-clone-deployment/Netflix-Clone/

# Build Docker image
docker build -t netflix-clone .

# Run container
docker run -d -p 10000:80 netflix-clone