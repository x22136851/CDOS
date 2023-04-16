#!/bin/bash
# Update the instance
sudo apt-get update -y

# Install Python 3 and pip
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y

# Install virtualenv
sudo pip3 install virtualenv