FROM openjdk:17
MAINTAINER andresgarcia.dev
COPY Test.jar Test.jar
ENTRYPOINT ["java","-jar","/Test.jar"]