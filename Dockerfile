FROM ubuntu:24.04
ENV JAVA_HOME=/u01/middleware/jdk-17.0.12
ENV TOMCAT_HOME=/u01/middleware/apache-tomcat-11.0.25
ENV PATH=${PATH}:${JAVA_HOME}/bin:${TOMCAT_HOME}/bin

RUN mkdir -p /u01/middleware/
WORKDIR /u01/middleware
ADD https://download.oracle.com/java/17/archive/jdk-17.0.12_linux-x64_bin.tar.gz .
ADD https://downloads01-he-fi.apache.org/tomcat/tomcat-11/v11.0.25/bin/apache-tomcat-11.0.25.tar.gz .

RUN tar -xzvf jdk-17.0.12_linux-x64_bin.tar.gz
RUN rm -rf jdk-17.0.12_linux-x64_bin.tar.gz
RUN tar -xzvf apache-tomcat-11.0.25.tar.gz
RUN rm -rf apache-tomcat-11.0.25.tar.gz

COPY target/roadster.war apache-tomcat-11.0.25/webapps
COPY run.sh .
RUN chmod u+x run.sh
ENTRYPOINT [ "./run.sh" ]
CMD ["tail","-f","/dev/null"]
