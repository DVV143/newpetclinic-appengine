FROM openjdk:8
COPY target/spring-petclinic-1.5.1.jar /app.jar
EXPOSE 8080/tcp
ENTRYPOINT ["java", "-jar", "/app.jar"]
