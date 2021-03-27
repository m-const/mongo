FROM mongo
COPY mongod.conf /etc/mongo/mongod.conf
ENV MONGO_INITDB_ROOT_USERNAME: admin
ENV MONGO_INITDB_ROOT_PASSWORD: password
CMD ["mongod"]
