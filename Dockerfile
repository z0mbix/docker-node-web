FROM node:latest
MAINTAINER z0mbix <zombie@zombix.org>
ENV TINI_VERSION v0.9.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /bin/tini
RUN chmod +x /bin/tini
COPY . /www
WORKDIR /www
EXPOSE 3000
CMD ["tini", "node", "/www/app.js"]
