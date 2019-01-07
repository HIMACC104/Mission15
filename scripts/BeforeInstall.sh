#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 129729052534 --region ap-northeast-1)

if [ `docker images | grep cc104-web-student18 | wc -l`  = 1 ]
then
        docker rmi cc104-web-student18
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/cc104-web-student18:latest
else
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/cc104-web-student18:latest
fi
