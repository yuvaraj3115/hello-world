FROM ubuntu:latest
RUN apt update 
RUN apt install openjdk-8-jdk -y
RUN mkdir -p /u01/data
COPY webapp/target/webapp.war /u01/data
RUN chmod -R 777 /u01
ENTRYPOINT ["java","-jar","/u01/data/webapp.war"]


