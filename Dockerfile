FROM docker:dind

RUN apk add py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make

RUN pip install docker-compose

VOLUME /var/lib/docker
EXPOSE 2375 2376
ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []