FROM node:10-jessie

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
#RUN yarn add -D nodemon && yarn add -D yarn-run-all && yarn add -D  @quasar/cli && yarn install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .
WORKDIR /usr/src/app/server
RUN yarn install
WORKDIR /usr/src/app

EXPOSE 8080
CMD [ "yarn", "dev:client" ]
