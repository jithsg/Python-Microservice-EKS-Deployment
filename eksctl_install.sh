#!/bin/bash

# Set the architecture; for ARM systems, change this value to: `arm64`, `armv6`, or `armv7`
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH

# Download the eksctl binary
curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"

# (Optional) Verify the checksum
curl -sL "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_checksums.txt" | grep $PLATFORM | sha256sum --check

# Extract the binary and clean up the downloaded file
tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz

# Move the binary to a system path
sudo mv /tmp/eksctl /usr/local/bin

# Print success message
echo "eksctl installed successfully!"
