FROM mongo
COPY mongod.conf /etc/mongo/mongod.conf
CMD ["mongod"]