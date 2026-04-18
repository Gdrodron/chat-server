FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# 👇 IMPORTANT
COPY chatserver/ .

RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

EXPOSE 8081

CMD ["java", "-jar", "target/chat-server-0.0.1-SNAPSHOT.jar"]