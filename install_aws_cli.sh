#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Download the AWS CLI v2 zip file
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip the downloaded file
unzip awscliv2.zip

# Install AWS CLI v2
sudo ./aws/install

# Print a message to indicate successful installation
echo "AWS CLI v2 installed successfully!"

