FROM ubuntu:20.04
MAINTAINER owen@inateck.com
RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  apt-get clean
RUN apt-get update
RUN apt-get -y install openssh-client vim rsync 
RUN ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa
