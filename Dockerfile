FROM openjdk:17
VOLUME /tmp
COPY target/springboot-reactjs-backend.jar springboot-reactjs-backend.jar
ENTRYPOINT ["java","-jar","/springboot-reactjs-backend.jar","--spring.profiles.active=prod"

FROM openjdk:17-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]  # JSON 형식으로 작성