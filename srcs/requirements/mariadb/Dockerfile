FROM	debian:buster

RUN		apt update -y
RUN		apt upgrade -y
RUN		apt install mariadb-server -y

COPY	conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY	tools/db.sh			/db.sh

ENTRYPOINT ["bash", "db.sh"]

EXPOSE	3306