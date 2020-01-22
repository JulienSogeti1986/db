FROM mysql:5.7
COPY ./script/creation.sql /docker-entrypoint-initdb.d/
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=train
ENV MYSQL_USER=julien
ENV MYSQL_PASSWORD=password
EXPOSE 3306
