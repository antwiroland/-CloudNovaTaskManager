# Use Java 22 JDK slim image
FROM eclipse-temurin:22-jdk
VOLUME /tmp
COPY target/taskmanager-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
