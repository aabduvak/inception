# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aabduvak <aabduvak@42istanbul.com.tr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/29 16:57:37 by aabduvak          #+#    #+#              #
#    Updated: 2022/08/29 17:17:51 by aabduvak         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

inception: db wp adminer nginx

bonus: inception app ftp adminer redis dozzle

nginx:
	sudo docker compose --file ./srcs/docker-compose.yml up --detach nginx

wp:
	sudo docker compose --file ./srcs/docker-compose.yml up --detach wordpress

db:
	sudo docker compose --file ./srcs/docker-compose.yml up --detach mariadb

logs:
	sudo docker compose --file ./srcs/docker-compose.yml logs

ls:
	sudo docker image ls
	sudo docker ps --all
	sudo docker volume ls

stop:
	sudo docker compose --file ./srcs/docker-compose.yml stop

down:
	sudo docker compose --file ./srcs/docker-compose.yml down

rm:
	sudo docker compose -f ./srcs/docker-compose.yml down --rmi all -v

prune:
	sudo docker system prune --all --force

clean: down prune rm

all: inception

re: fclean all

.PHONY: clean fclean all re