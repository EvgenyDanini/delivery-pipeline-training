FROM node:5
MAINTAINER evgeny

RUN git clone https://github.com/EvgenyDanini/delivery-pipeline-training.git /var/app
WORKDIR /var/app
RUN npm install 

ENV DATABASE_URL=postgres://crudtest:crudtest@pg1:$PG_PORT_5432_TCP_PORT/crudtest
CMD ["node", "index.js"]
