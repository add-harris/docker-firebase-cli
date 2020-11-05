FROM node

RUN npm i -g firebase-tools

ENTRYPOINT [ "firebase" ]