FROM alpine:latest

RUN apk add git --no-cache

COPY talisman .

RUN chmod +x talisman && mv talisman /usr/local/bin

RUN  adduser -D devsecops
USER devsecops
