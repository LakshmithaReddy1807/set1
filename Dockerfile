# ==========================
# Stage 1: Build with Maven
# ==========================
FROM maven:3.9.4-eclipse-temurin-11 AS builder

# Set working directory
WORKDIR /app

# Copy pom.xml and source code
COPY pom.xml .
COPY src ./src

# Build the project and skip tests
RUN mvn clean package -DskipTests

# ==========================
# Stage 2: Run with Tomcat
# ==========================
FROM tomcat:9.0.81-jdk11-temurin

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR from builder stage
COPY --from=builder /app/target/FlightBookingSystem.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port (can be mapped to any host port)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
