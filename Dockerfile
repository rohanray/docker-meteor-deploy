FROM node:4.4.7
MAINTAINER    Rohan Ray (https://github.com/rohanray)

COPY ./tar/src.tar.gz /tar/src.tar.gz
RUN mkdir /app
RUN tar -zxf /tar/src.tar.gz -C /app

EXPOSE 80

ENV ROOT_URL="http://139.59.16.64:80"
ENV MONGO_URL="mongodb://roray:roray123@ds161175.mlab.com:61175/meteor-docker"
ENV PORT="80

RUN cd /app/bundle/programs/server/ && npm install && chmod 755 /app/bundle/main.js

WORKDIR /app/bundle

#CMD ["node", "main.js"]
ENTRYPOINT ["node","main.js"]
