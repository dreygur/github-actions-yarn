FROM node:14

RUN npm install -g -s --no-progress yarn

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]