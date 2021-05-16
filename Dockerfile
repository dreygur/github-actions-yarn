FROM node:lts-slim

RUN apt-get update -y && apt-get install nodejs yarn -y

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]