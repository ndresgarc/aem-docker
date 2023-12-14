FROM openjdk:17

MAINTAINER andresgarcia.dev

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/author/aem-author-p4502.jar

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/publish/aem-publish-p4503.jar

# ENTRYPOINT ["java","-jar","/Test.jar"]