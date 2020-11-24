#!/bin/bash

# Vytvoří image kontejneru
docker build -t php-ukazka1 .

# Spustí kontejner a otevře port 8081 na hostovy, který nasměruje na port 80 v kontejneru
docker run -p 8081:80 -v $PWD/:/var/www/html php-ukazka1