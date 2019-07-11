FROM openjdk:8-alpine
MAINTAINER Eric PAUWAWE
ARG version=0.2.1-SNAPSHOT
RUN MV mq-responder-[$version]-jar-with-dependancies.jar mock_gdr.jar
COPY mock_gdr.jar /applis/
ENTRYPOINT java -jar /applis/mock_gdr.jar
