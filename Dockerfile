FROM ubuntu:20.04

RUN apt-get update
RUN apt-get -y install cron
RUN apt-get -y install curl
RUN apt-get -y install nano

COPY crontab.txt /crontab.txt

COPY ./dynu.sh /dynu.sh
RUN chmod 700 /dynu.sh

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod 700 /entrypoint.sh

RUN crontab /crontab.txt

CMD ["/entrypoint.sh"]