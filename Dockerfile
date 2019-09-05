FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/jwt-spring-security-demo-0.2.0.jar
COPY ${JAR_FILE} jwt-spring-security-demo-0.2.0.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/jwt-spring-security-demo-0.2.0.jar"]