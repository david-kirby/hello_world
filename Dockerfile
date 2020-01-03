FROM node:latest

WORKDIR /app

COPY index.js .

ENTRYPOINT ["node", "index.js"]