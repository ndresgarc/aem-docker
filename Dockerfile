FROM openjdk:11

MAINTAINER andresgarcia.dev

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/author/aem-author-p4502.jar

COPY passwordfile.properties /aem/passwordfile.properties

COPY build.sh /aem/build.sh

RUN chmod +x /aem/build.sh

RUN /aem/build.sh

COPY start.sh /aem/start.sh

RUN chmod +x /aem/start.sh

EXPOSE 4502 4503 8080

VOLUME /aem/author/crx-quickstart

ENTRYPOINT ["/bin/bash", "-c", "/aem/start.sh"]