FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy everything from root (TAMA ITO)
COPY . .

# Give permission sa mvnw
RUN chmod +x mvnw

# Build the app
RUN ./mvnw clean package -DskipTests

# Run app
CMD ["java", "-jar", "target/*.jar"]
