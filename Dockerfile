FROM ubuntu:20.04

RUN apt update
RUN apt -y install cron
RUN apt -y install curl
RUN apt -y install nano

COPY crontab.txt /crontab.txt
COPY ./dynu.sh /dynu.sh

RUN chmod 700 /dynu.sh

RUN /usr/bin/crontab /crontab.txt

CMD ["/usr/sbin/cron", "-f"]