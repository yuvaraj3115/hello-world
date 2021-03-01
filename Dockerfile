FROM ubuntu:latest
RUN apt update -y
RUN apt install -y openjdk-8-jdk
RUN mkdir -p /u01/data
COPY /var/lib/jenkins/workspace/hello_world/webapptarget/webapp.war /u01/data
RUN chmod -R 777 /u01
ENTRYPOINT ["java","-jar","/u01/data/webapp.war"]


