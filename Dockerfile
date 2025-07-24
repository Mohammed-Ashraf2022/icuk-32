FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the JAR from the Maven build
COPY target/*.jar app.jar

# Set the entrypoint
ENTRYPOINT ["java", "-jar", "app.jar"]
