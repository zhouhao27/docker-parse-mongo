FROM alpine:3.9

RUN apk update && apk add --update --no-cache bash nodejs nodejs-npm yarn && \
  yarn global add pm2 

ADD ./server /home

WORKDIR /home

RUN yarn

# CMD ["pm2","start","start.sh"]