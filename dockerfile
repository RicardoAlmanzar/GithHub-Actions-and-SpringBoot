FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8080
# copy any jar produced in target to a stable name inside the image
COPY target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
