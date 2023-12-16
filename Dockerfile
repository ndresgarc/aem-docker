FROM openjdk:17

MAINTAINER andresgarcia.dev

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/author/aem-author-p4502.jar

COPY aem-sdk-*/aem-sdk-quickstart-*.jar /aem/publish/aem-publish-p4503.jar

WORKDIR /aem/author

# RUN java -jar aem-author-p4502.jar -unpack

RUN java -jar aem-author-p4502.jar

EXPOSE 4502


# ENTRYPOINT ["java","-jar","/Test.jar"]