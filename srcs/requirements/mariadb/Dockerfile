FROM debian:11

RUN apt-get update && \
    apt-get install -y mariadb-server sudo && \
    sudo chown -R mysql:mysql /var/lib/mysql && \
    sudo chmod -R 755 /var/lib/mysql

COPY ./server.cnf /etc/mysql/mariadb.conf.d

COPY ./sc.sh ./sc.sh

RUN chmod +x ./sc.sh

EXPOSE 3306

CMD ["./sc.sh"]