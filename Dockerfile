# Start from an official Java image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the jar file (we'll build it later)
COPY target/task-manager-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
