FROM ubuntu:26.04
RUN mkdir -p /u01/applications
RUN apt update -y
RUN apt install -y openjdk-17-jdk 

WORKDIR /u01/applications
COPY target/roadster-1.0.jar .
RUN chmod u+x roadster-1.0.jar
EXPOSE 8080
CMD ["java","-jar","roadster-1.0.jar"]
