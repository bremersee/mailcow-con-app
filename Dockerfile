FROM openjdk:8-jdk-alpine
MAINTAINER Christian Bremer <bremersee@googlemail.com>
EXPOSE 8080
ARG JAR_FILE
ADD target/${JAR_FILE} /opt/app.jar
ENTRYPOINT ["java", "-XX:MinHeapFreeRatio=10", "-XX:MaxHeapFreeRatio=70", "-XX:CompressedClassSpaceSize=64m", "-XX:ReservedCodeCacheSize=64m", "-XX:MaxMetaspaceSize=256m", "-Xms256m", "-Xmx750m", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/opt/app.jar"]
