# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aabduvak <aabduvak@42istanbul.com.tr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/29 13:00:05 by aabduvak          #+#    #+#              #
#    Updated: 2022/08/29 13:00:47 by aabduvak         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="abdulaziz.yosk@gmail.com"

EXPOSE 3306

ENV WP_DB_NAME=${WP_DB_NAME}
ENV MYSQL_USER=${MYSQL_USER}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

RUN apt-get update -y
RUN apt full-upgrade -y

RUN apt install mariadb-server mariadb-client -y

COPY ./conf/script.sh /script.sh
RUN chmod +x script.sh

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN bash ./script.sh

CMD exec mysqld_safe