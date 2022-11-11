#!/bin/bash
image_name=$(basename `pwd`)
area=$1

if [[ "$1" == "" ]] ;then
   echo "usage : ./build.sh  [area] "
   echo "area : cs/sz"
else
if [ "$area" == "cs" ] ;then
   docker_registry=master.licheng-tech.com:5000
   dockerfile=Dockerfile
fi
if  [ "$area" == "sz" ] ;then
   docker_registry=docker-sz.licheng-tech.com:30000
   dockerfile=Dockerfile
fi
docker_iamge=$image_name:latest
remote_image=${docker_registry}/centos/${image_name}:1.0
docker build -t  ${docker_iamge} -f ${dockerfile} .
docker tag   ${docker_iamge}  ${remote_image}
docker push  ${remote_image}
fi
