FROM openjdk:17-alpine

WORKDIR /app

COPY target/mels.jar app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]