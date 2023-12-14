FROM openjdk:17

MAINTAINER andresgarcia.dev

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /author/aem-author-p4502.jar



# ENTRYPOINT ["java","-jar","/Test.jar"]