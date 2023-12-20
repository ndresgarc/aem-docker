#!/bin/bash
apt-get update
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_20.x | bash - \
apt-get install -y nodejs
curl -L https://www.npmjs.com/install.sh | sh 
java -jar /aem/author/aem-author-p4502.jar -nointeractive -Dadmin.password.file=/aem/passwordfile.properties
java -jar /aem/publish/aem-publish-p4503.jar -nointeractive -Dadmin.password.file=/aem/passwordfile.properties