FROM ubuntu:latest

MAINTAINER Jia Yiqiu <yiqiujia@hotmail.com>

RUN apt-get update && apt-get install -y git
ADD nvidia-l4t-apt-source.list /etc/apt/sources.list.d/
ADD jetson-ota-public.asc /etc/apt/trusted.gpg.d/
RUN date -R
RUN apt-get update

#docker build -t land007/l4t-ubuntu:latest .
#docker run -it --rm --runtime nvidia land007/l4t-ubuntu:latest bash
