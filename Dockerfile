FROM mongo:latest
COPY mongodb.conf /etc/mongo/mongodb.conf
CMD ["mongod", "--config", "/etc/mongodb.conf"]