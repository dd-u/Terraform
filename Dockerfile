FROM adoptopenjdk/openjdk11:latest
RUN mkdir /opt/app
COPY japp.jar /opt/app
CMD ["java", "-jar", "/var/lib/jenkins/workspace/testjob/japp.jar"]
