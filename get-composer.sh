#!/bin/bash

ERROR='\033[0;31m'
SUCCESS='\033[0;32m'
INFO='\033[0;33m'
NC='\033[0m' # No Color

isRunning=$(docker ps | grep php56)

if [[ ! $isRunning ]]; then
    echo -e "${ERROR} Not found docker container with name: php56${NC}"
    exit 1
fi

docker exec -it php56 /bin/sh -c "php -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\""
docker exec -it php56 /bin/sh -c "php -r \"if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;\""
docker exec -it php56 /bin/sh -c "php composer-setup.php"
docker exec -it php56 /bin/sh -c "php -r \"unlink('composer-setup.php');\""

echo -e "${INFO}USAGE:"
echo -e "  ${INFO}docker exec -it php56 /bin/sh -c 'php run.php'${NC}"
echo -e "  ${INFO}docker exec -it php74 /bin/sh -c 'php run.php'${NC}"
echo -e "  ${INFO}docker exec -it php81 /bin/sh -c 'php run.php'${NC}"



