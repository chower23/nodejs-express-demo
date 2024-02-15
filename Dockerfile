FROM node:18.19-slim

# Create app directory
USER node
WORKDIR /usr/src/app

COPY --chown=node:node . .
RUN npm install

USER node

CMD [ "node", "main.js" ]
