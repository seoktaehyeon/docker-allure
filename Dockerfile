ARG ALLURE_VER=2.13.8
FROM java:8-jre-alpine
LABEL maintainer=v.stone@163.com

WORKDIR /opt
ADD https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/${ALLURE_VER}/allure-commandline-${ALLURE_VER}.tgz .
RUN tar zvxf allure-commandline-${ALLURE_VER}.tgz \
    && rm -rf allure-${ALLURE_VER}.tgz \
    && mv allure-${ALLURE_VER} allure \
    && ln -s /opt/allure/bin/allure /usr/bin/allure \
    && allure --version

WORKDIR /workspace
