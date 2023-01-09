FROM	debian:buster

RUN		apt-get update -y
RUN		apt-get upgrade -y
RUN		apt-get install nginx -y
RUN		mkdir -p /etc/nginx/ssl
RUN		apt-get install OpenSSL -y
RUN		openssl req -x509 -nodes \
		-out /etc/nginx/ssl/thbensem.crt \
		-keyout /etc/nginx/ssl/thbensem.key \
		-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=thbensem.42.fr/UID=thbensem"

COPY	conf/nginx.conf	/etc/nginx/nginx.conf

CMD		["nginx", "-g", "daemon off;"]