FROM node:latest
MAINTAINER z0mbix <zombie@zombix.org>
COPY . /www
EXPOSE 3000
CMD ["node", "/www/app.js"]
