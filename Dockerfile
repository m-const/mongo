FROM mongo:latest
COPY mongod.conf /etc/mongo/mongod.conf
CMD ["mongod"]