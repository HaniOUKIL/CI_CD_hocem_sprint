FROM tomcat:latest
LABEL maintainer="Nidhi Gupta"
ADD ../../workspace/CI_CD/target/devOpsDemo-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
