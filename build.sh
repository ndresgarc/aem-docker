#!/bin/bash

# Install AEM
java -jar /aem/author/aem-author-p4502.jar -nointeractive -Dadmin.password.file=/aem/passwordfile.properties &
java -jar /aem/publish/aem-publish-p4503.jar -nointeractive -Dadmin.password.file=/aem/passwordfile.properties &

# Install Node.js
apt-get update
apt-get install -y ca-certificates curl gnupg
mkdir -p /etc/apt/keyrings  
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
apt-get update
apt-get install nodejs -y

node -v
npm -v
node /aem/build.js

# 5 minutes to install AEM
sleep 300

echo "AEM is ready to use"
