FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8080
ADD target/api-springboot-new.jar /api-springboot-new.jar
ENTRYPOINT ["java","-jar","/api-springboot-new.jar"]
