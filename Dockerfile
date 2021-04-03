FROM mongo:latest
ENV MONGO_INITDB_ROOT_USERNAME admin
ENV MONGO_INITDB_ROOT_PASSWORD admin
COPY mongodb.conf /etc/mongodb.conf
RUN apt-get update -qy
RUN apt-get install -y python python-pip
CMD ["mongod", "--config", "/etc/mongodb.conf"]