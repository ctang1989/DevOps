#!/bin/bash

# Install Docker on Ubuntu

# Update apt sources
apt-get update

# Ensure APT works with https, and install CA certificates
apt-get install -y apt-transport-https ca-certificates

# Add new GPG key
apt-key adv \
 --keyserver hkp://ha.pool.sks-keyservers.net:80 \
 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# Repository
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | tee /etc/apt/sources.list.d/docker.list

# Update the APT package index
apt-get update

# Verify that APT is pulling from the right repository
apt-cache policy docker-engine

# Install linux-image-extra-* kernel packages, which allows you use the aufs storage driver
apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual

# Update the APT package index
apt-get update

# Install Docker
apt-get install -y docker-engine

# Start docker daemon
service docker start

# Verify that docker is installed correctly by running the hello-world image
docker run hello-world

# Manage Docker as a non-root user
usermod -aG docker ctang
