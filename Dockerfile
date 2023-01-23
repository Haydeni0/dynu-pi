FROM alpine:3.17

COPY crontab.txt /crontab.txt
COPY ./dynu.sh /dynu.sh
COPY ./entry.sh /entry.sh

RUN chmod 700 /dynu.sh /entry.sh
RUN /usr/bin/crontab /crontab.txt

CMD ["/entry.sh"]