# base image
FROM node:20-alpine

# working directory
WORKDIR /app

# package install
COPY package*.json ./
RUN npm install

# copy app
COPY . .

# expose port
EXPOSE 3000

# start dev server
CMD ["npm", "run", "dev"]
