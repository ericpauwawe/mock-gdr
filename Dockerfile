FROM openjdk:8-alpine
MAINTAINER Eric PAUWAWE
ARG version=0.2.1-SNAPSHOT
ADD mq-responder-$version.jar /
RUN mv mq-responder-$version.jar mock_gdr.jar
ENTRYPOINT java -jar mock_gdr.jar
