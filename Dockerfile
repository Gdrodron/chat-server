FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

RUN apk add --no-cache maven
RUN mvn clean package -DskipTests

RUN mv target/*.jar app.jar

EXPOSE 8081

CMD ["java", "-jar", "app.jar"]
