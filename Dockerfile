FROM openjdk:8-alpine
MAINTAINER Eric PAUWAWE
ARG version=0.2.1-SNAPSHOT
ARG hostname=localhost
ARG port=14141
ARG queue_manager=QLSP001D
ARG channel=QLSP001D.APPLI.CHL
ARG with_null_character=false
ARG queue_to_watch=APP.SP.GDR.QR

ADD mq-responder-$version.jar /
RUN mv mq-responder-$version.jar mock_gdr.jar
ENTRYPOINT java -jar mock_gdr.jar $hostname $port $queue_manager $channel "" "" "" $with_null_character $queue_to_watch
