FROM adoptopenjdk/openjdk11:latest
RUN mkdir /var/lib/jenkins/workspace/testjob/opt/app
COPY japp.jar /var/lib/jenkins/workspace/testjob/opt/app
CMD ["java", "-jar", "/var/lib/jenkins/workspace/testjob/opt/app/japp.jar"]
