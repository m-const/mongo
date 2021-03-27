FROM mongo
COPY mongod.conf /etc/mongo/mongod.conf
ENV   MONGO_INITDB_ROOT_USERNAME: root
ENV   MONGO_INITDB_ROOT_PASSWORD: root
CMD ["mongod"]
