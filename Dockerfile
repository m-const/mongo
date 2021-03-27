FROM mongo
ENV MONGO_INITDB_ROOT_USERNAME admin-user
ENV MONGO_INITDB_ROOT_PASSWORD admin-password
ENV MONGO_INITDB_DATABASE admin
COPY mongod.conf /etc/mongo/mongod.conf
ADD mongo-init.js /docker-entrypoint-initdb.d/