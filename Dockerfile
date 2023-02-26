FROM ubuntu:20.04

RUN apt-get update
RUN apt-get -y install cron
RUN apt-get -y install curl
RUN apt-get -y install nano

COPY crontab.txt /crontab.txt
COPY ./dynu.sh /dynu.sh

RUN chmod 700 /dynu.sh

RUN crontab /crontab.txt

CMD ["cron", "-f"]