#!/bin/bash

# Install AEM
java -jar /aem/author/aem-author-p4502.jar -nointeractive -unpack

# Install Node.js
apt-get update
apt-get install -y ca-certificates curl gnupg
mkdir -p /etc/apt/keyrings  
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
apt-get update
apt-get install nodejs -y