FROM openjdk:8-alpine
MAINTAINER Eric PAUWAWE
ARG version=0.2.1-SNAPSHOT
ARG hostname=localhost
ARG port=14141
ARG queue_manager=QLSP001D
ARG channel= QLSP001D.APPLI.CHL
ARG username= 
ARG password=
ARG headers=
ARG with_null_character=false
ADD mq-responder-$version.jar /
RUN mv mq-responder-$version.jar mock_gdr.jar
ENTRYPOINT java -jar mock_gdr.jar $hostname $port $queue_manager $channel $username $password $headers $with_null_charcater
