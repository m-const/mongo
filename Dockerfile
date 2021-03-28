FROM mongo:latest
COPY mongodb.conf /etc/mongodb.conf
ENV MONGO_INITDB_ROOT_USERNAME admin
ENV MONGO_INITDB_ROOT_PASSWORD admin
CMD ["mongod", "--config", "/etc/mongodb.conf"]