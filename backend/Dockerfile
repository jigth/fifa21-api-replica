FROM node:16
WORKDIR /usr/src/fifa21-backend
COPY package*.json ./ 

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

COPY . .
EXPOSE 3120
CMD [ "npm", "start" ]
