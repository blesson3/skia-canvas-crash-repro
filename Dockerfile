FROM node:16-alpine

RUN apk update && apk add --no-cache fontconfig

WORKDIR /usr/src/demo

RUN npm init -y
RUN npm i --save skia-canvas

ENTRYPOINT [ "node", "-e", "require('skia-canvas'); console.log('what bug?');" ]
