FROM jeanblanchard/alpine-glibc:latest
MAINTAINER liuhonglin

ADD locale-archive /usr/glibc-compat/lib/locale/

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

ADD jre8u251.tar.gz /usr/local/jdk/
ADD arthas-boot.jar /arthas-boot.jar

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

ENV JAVA_HOME /usr/local/jdk
ENV PATH $PATH:$JAVA_HOME/bin
