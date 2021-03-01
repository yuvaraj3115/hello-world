# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "yuvaraj3115@gmail.com" 
COPY /var/lib/jenkins/workspace/hello_world/webapp/target/webapp.war /usr/local/tomcat/webapps

