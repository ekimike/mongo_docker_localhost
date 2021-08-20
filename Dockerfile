FROM amazoncorretto:11
VOLUME /tmp
COPY target/mongo-example-0.0.1-SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java -Dspring.profiles.active=docker -jar /app.jar