FROM java:8-jre-alpine
LABEL maintainer=v.stone@163.com

ENV VERSION=2.13.8

WORKDIR /opt
ADD https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/${VERSION}/allure-commandline-${VERSION}.tgz .
RUN tar zvxf allure-commandline-${VERSION}.tgz \
    && ln -s /opt/allure-${VERSION}/bin/allure /usr/bin/allure \
    && rm -rf allure-${VERSION}.tgz \
    && allure --version

WORKDIR /workspace
