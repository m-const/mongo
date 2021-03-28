FROM mongo:latest
COPY mongodb.conf /etc/mongodb.conf
CMD ["mongod", "--config", "/etc/mongodb.conf"]