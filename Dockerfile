FROM openjdk:8
EXPOSE 8080
ADD target/jenkins-devops-integration-0.0.1-SNAPSHOT.jar devops-integration.jar
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
RUN apt-get update && apt-get install -y docker-ce-cli