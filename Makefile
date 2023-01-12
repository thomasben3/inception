YML_PATH	=	./srcs/docker-compose.yml
VOLUME_PATH	=	/home/thbensem/data

all:
		mkdir -p $(VOLUME_PATH)/mariadb
		mkdir -p $(VOLUME_PATH)/wordpress
		sudo docker-compose -f $(YML_PATH) up --build

up:
		sudo docker-compose -f $(YML_PATH) up --build

down:
		sudo docker-compose -f $(YML_PATH) down

clean:
		sudo docker-compose -f $(YML_PATH) down -v

fclean: clean
		rm -rf $(VOLUME_PATH)/mariadb
		rm -rf $(VOLUME_PATH)/wordpress
		sudo docker system prune -af