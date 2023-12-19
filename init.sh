#!/bin/bash

java -jar /aem/author/aem-author-p4502.jar -nointeractive -Dadmin.password.file=/aem/passwordfile.properties &
java -jar /aem/publish/aem-publish-p4503.jar -nointeractive -Dadmin.password.file=/aem/passwordfile.properties