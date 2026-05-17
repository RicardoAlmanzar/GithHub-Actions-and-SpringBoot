FROM eclipse-temurin:21-jdk-alpine
EXPOSE 8080
ADD target/actions-springboot-0.0.1-SNAPSHOT.jar api-springboot-new.jar
ENTRYPOINT ["java","-jar","/api-rest-springboot-new.jar"]