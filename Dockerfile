FROM node:14

LABEL "com.github.actions.name"="github-actions-yarn"
LABEL "com.github.actions.description"="Yarn and Node.js For Github Actions"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/eggjs/eggjs.github.io"
LABEL "homepage"="https://github.com/eggjs/eggjs.github.io"
LABEL "maintainer"="Rakibul Yeasin <ryeasin03@gmail.com>"

RUN \
    apt-get update -y && \
    apt-get install -y git && \
    npm install -g -s --no-progress yarn

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]