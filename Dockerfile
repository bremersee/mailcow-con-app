FROM openjdk:8-jdk-alpine
MAINTAINER Christian Bremer <bremersee@googlemail.com>
EXPOSE 8080
ARG JAR_FILE
ADD target/${JAR_FILE} /opt/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]
