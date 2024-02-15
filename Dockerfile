FROM node:18.19-slim

USER root
RUN npm install -g pnpm@7

# Create app directory
USER node
WORKDIR /usr/src/app

COPY --chown=node:node . .
RUN pnpm install

USER node

CMD [ "node", "main.js" ]
