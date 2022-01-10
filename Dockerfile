FROM mongo:4.4
ENV MONGO_INITDB_ROOT_USERNAME admin
ENV MONGO_INITDB_ROOT_PASSWORD admin
COPY mongodb.conf /etc/mongodb.conf
CMD ["mongod", "--config", "/etc/mongodb.conf"]
