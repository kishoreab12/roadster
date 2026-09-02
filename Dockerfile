FROM ubuntu:26.04
ENV JAVA_HOME=/u01/middleware/jdk-17.0.12
ENV TOMCAT_HOME=/u01/middleware/apache-tomcat-9.0.121
ENV PATH=${PATH}:${JAVA_HOME}/bin:${TOMCAT_HOME}/bin

RUN mkdir -p /u01/middleware/
WORKDIR /u01/middleware
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
ADD https://download.oracle.com/java/17/archive/jdk-17.0.12_linux-x64_bin.tar.gz .
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.121/bin/apache-tomcat-9.0.121.tar.gz .

RUN tar -xzvf jdk-17.0.12_linux-x64_bin.tar.gz
RUN rm -rf jdk-17.0.12_linux-x64_bin.tar.gz
RUN tar -xzvf apache-tomcat-9.0.121.tar.gz
RUN rm -rf apache-tomcat-9.0.121.tar.gz

COPY target/roadster-1.0.war apache-tomcat-9.0.119/webapps
COPY run.sh .
RUN chmod u+x run.sh
ENTRYPOINT [ "./run.sh" ]
CMD ["tail","-f","/dev/null"]
