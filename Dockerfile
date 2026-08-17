FROM eclipse-temurin:17-jdk

WORKDIR /u01/applications

COPY target/roadster-1.0.jar .

EXPOSE 8080

ENTRYPOINT ["java","-jar","roadster-1.0.jar"]
