FROM node

RUN npm i -g firebase-tools

RUN apk add --update python curl

RUN curl -sSL https://sdk.cloud.google.com | bash

ENV PATH $PATH:/root/google-cloud-sdk/bin

ENTRYPOINT [ "firebase" ]