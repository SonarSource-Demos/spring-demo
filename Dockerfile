FROM public.ecr.aws/docker/library/eclipse-temurin:latest
EXPOSE 8080
ARG JAR_FILE=target/spring-demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
