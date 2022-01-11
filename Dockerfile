FROM java:latest

ADD ./target/devOpsDemo-0.0.1-SNAPSHOT.jar sprintapp.jar
EXPOSE 2222
CMD ["java","-jar","app.jar"]
