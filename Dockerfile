FROM openjdk:8u191-jre-alpine
MAINTAINER Pavel Katernoza <bkq.478@gmail.com>

EXPOSE 8080
COPY target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar
#COPY target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar","--spring.profiles.active=mysql"]
#ENTRYPOINT ["--spring.profiles.active=mysql"]