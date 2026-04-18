FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY chatserver/ .
COPY . .

RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

EXPOSE 8081

CMD ["java", "-jar", "target/*.jar"]
