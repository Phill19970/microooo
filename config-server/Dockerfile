FROM openjdk:17-alpine

# Install curl
RUN apk add --no-cache curl

ARG JAR_APP=target/*.jar

WORKDIR /app

COPY ${JAR_APP} /app/app.jar

EXPOSE 8888

ENTRYPOINT ["java", "-jar", "app.jar"]