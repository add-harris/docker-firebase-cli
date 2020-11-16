FROM node

RUN npm i -g firebase-tools

COPY create-app.sh /create-app.sh
RUN chmod 555 /create-app.sh

ENTRYPOINT [ "firebase" ]