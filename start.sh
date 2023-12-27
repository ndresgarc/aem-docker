#!/bin/bash
java -jar /aem/author/aem-author-p4502.jar &
npx --yes http-server /aem --port 8080