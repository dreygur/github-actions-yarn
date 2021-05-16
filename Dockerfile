FROM node:lts-slim

RUN apk --no-cache add nodejs yarn

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]