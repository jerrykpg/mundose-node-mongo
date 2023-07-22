FROM node:16-alpine3.16

ENV GIT_BRANCH=main

WORKDIR /usr/src/app

RUN apk add --no-cache git && \
    git config --global init.defaultBranch ${GIT_BRANCH} && \
    git config --global advice.detachedHead false

RUN git init && \
    git remote add origin https://github.com/jerrykpg/mundose-node-mongo.git && \
    git fetch && \
    git checkout ${GIT_BRANCH} && \
    git pull

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]