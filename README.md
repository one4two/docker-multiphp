# Docker multiple PHP containers
> Multiple PHP docker containers, with docker-compose

1. Clone project ```git clone https://github.com/one4two/docker-multiphp.git```
2. Move to project directory
3. Run ```docker-compose up -d```
4. Make script executable ```sudo chmod +x ./get-composer.sh```
5. Run  ```./get-composer.sh```

> USAGE:
  ```
  docker exec -it php56 /bin/sh -c 'php run.php'
  ```
  ```
  docker exec -it php74 /bin/sh -c 'php run.php'
  ```
  ```
  docker exec -it php81 /bin/sh -c 'php run.php'
  ```
