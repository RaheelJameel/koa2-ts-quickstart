FROM node:lts-slim

RUN mkdir -p /usr/app
WORKDIR /usr/app
COPY package*.json ./
RUN npm install
COPY . /usr/app
EXPOSE 4000
CMD ["npm", "run", "watch"]
