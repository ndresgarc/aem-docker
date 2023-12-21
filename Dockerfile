FROM openjdk:11

MAINTAINER andresgarcia.dev

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/author/aem-author-p4502.jar

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/publish/aem-publish-p4503.jar

COPY passwordfile.properties /aem/passwordfile.properties

COPY build.sh /aem/build.sh

RUN chmod +x /aem/build.sh

COPY build.js /aem/build.js

RUN chmod +x /aem/build.js

RUN /aem/build.sh

COPY start.sh /aem/start.sh

RUN chmod +x /aem/start.sh

COPY start.js /aem/start.js

RUN chmod +x /aem/start.js

EXPOSE 4502 4503 80

ENTRYPOINT ["/bin/bash", "-c", "/aem/start.sh"]