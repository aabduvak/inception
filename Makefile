# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aabduvak <aabduvak@42ISTANBUL.COM.TR>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/29 16:57:37 by aabduvak          #+#    #+#              #
#    Updated: 2022/08/30 13:00:44 by aabduvak         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

all: linux prune reload

linux:
	@ echo "127.0.0.1 aabduvak.42.fr" >> /etc/hosts
	
down:
	sudo docker compose --file ./srcs/docker-compose.yml down

rm:
	sudo docker compose -f ./srcs/docker-compose.yml down --rmi all -v

prune:
	sudo docker system prune --all --force

clean: down prune rm

reload: 
	@ docker-compose -f srcs/docker-compose.yml up --build

.PHONY: linux stop clean prune reload all