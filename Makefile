PATH_YML = ./srcs/docker-compose.yml
# HOME_PATH = /home/thbensem/

all:
	mkdir -p /home/thbensem/data
	mkdir -p /home/thbensem/data/wordpress
	mkdir -p /home/thbensem/data/mariadb
	sudo docker-compose -f $(PATH_YML) up -d --build

re: clean all

stop:
	sudo docker-compose -f $(PATH_YML) stop

clean: stop
	sudo docker-compose -f $(PATH_YML) down -v

fclean: clean
	sudo rm -rf /home/thbensem/data/wordpress
	sudo rm -rf /home/thbensem/data/mariadb
	sudo docker system prune -af