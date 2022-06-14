# FROM node:10-alpine
# RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
# WORKDIR /home/node/app
# COPY package*.json ./
# USER node
# RUN npm install
# COPY --chown=node:node . .
# EXPOSE 80
# CMD [ "node", "index.js" ]

FROM node:18.3.0-alpine
#FROM node:12.18.1
# ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

# RUN npm install --production
RUN npm install 

COPY . .
EXPOSE 5000
CMD [ "node", "index.js" ]