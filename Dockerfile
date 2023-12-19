FROM openjdk:11

MAINTAINER andresgarcia.dev

COPY build.sh /build.sh

RUN chmod +x /build.sh

RUN /build.sh

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/author/aem-author-p4502.jar

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/publish/aem-publish-p4503.jar

COPY passwordfile.properties /aem/passwordfile.properties

COPY init.sh /aem/init.sh

RUN chmod +x /aem/init.sh

# 4502 - Author
# 4503 - Publish
# 80 - Dispatcher
EXPOSE 4502 4503 80

ENTRYPOINT ["/bin/bash", "-c", "/aem/init.sh"]