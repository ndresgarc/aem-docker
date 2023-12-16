FROM openjdk:11

MAINTAINER andresgarcia.dev

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/author/aem-author-p4502.jar

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/publish/aem-publish-p4503.jar

COPY passwordfile.properties /aem/passwordfile.properties

EXPOSE 4502

EXPOSE 4503

WORKDIR /aem/author

ENTRYPOINT ["java","-jar","aem-author-p4502.jar", "-nointeractive", "-Dadmin.password.file=../passwordfile.properties" ]