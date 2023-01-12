DOCKER-COMPOSE	=	cd ./srcs && docker-compose
VOLUME_PATH	=	/home/thbensem/data

all:
		mkdir -p $(VOLUME_PATH)/mariadb
		mkdir -p $(VOLUME_PATH)/wordpress
		$(DOCKER-COMPOSE) up --build

up:
		$(DOCKER-COMPOSE) up --build

down:
		$(DOCKER-COMPOSE) down

clean:
		$(DOCKER-COMPOSE) down -v

fclean: clean
		rm -rf $(VOLUME_PATH)/mariadb
		rm -rf $(VOLUME_PATH)/wordpress
		docker image prune