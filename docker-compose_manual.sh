$sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

$sudo chmod +x /usr/local/bin/docker-compose

$docker run -it --name db1 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=mydb -e MYSQL_USER=gaurav -e MYSQL_PASSWORD=password mariadb

$docker ps

$docker run -it --name joomla -e JOOMLA_DB_HOST=db1 -e JOOMLA_DB_USER=gaurav -e JOOMLA_DB_PASSWORD=PASSWORD -e JOOMLA_DB_NAME=mydb -p 4444:80 --link db1 joomla