
# Use official Java image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy your built jar into the image
COPY target/*.jar app.jar

# Expose application port (adjust if needed)
EXPOSE 8080

# Command to run your JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
