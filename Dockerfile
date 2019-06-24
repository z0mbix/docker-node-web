FROM node:latest

ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

COPY . /app
WORKDIR /app
EXPOSE 3000

ENTRYPOINT ["/tini", "-v", "--"]
CMD ["npm", "start"]
