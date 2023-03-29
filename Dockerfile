FROM node:18

#RUN npm install -g pm2

#WORKDIR /app

COPY package.json .

RUN npm install

#COPY . .

#EXPOSE 80

# RUN chmod +x docker-entrypoint.sh
# ENTRYPOINT ./docker-entrypoint.sh