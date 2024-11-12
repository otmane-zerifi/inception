FROM debian:11

RUN apt-get update && \
    apt-get install -y mariadb-server 

COPY ./conf/server.cnf /etc/mysql/mariadb.conf.d

COPY ./tools/sc.sh ./sc.sh

RUN chmod +x ./sc.sh

EXPOSE 3306

CMD ["./sc.sh"]