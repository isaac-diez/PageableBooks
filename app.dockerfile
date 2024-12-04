# Use a Java 21 base image
FROM openjdk:21-jre-slim

# Defines variable and sets default maven location for .jar
ARG JAR_FILE=target/*.jar

# Copy the application JAR file to the container
COPY ${JAR_FILE} app.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java","-jar","/app.jar"]





