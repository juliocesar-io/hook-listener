#!/bin/bash
docker pull uzi200/juliocesar.io
docker stop blog
docker rm blog
docker run --name blog -d -p 80:80 uzi200/juliocesar.io
