FROM java:8u111-jre-alpine
LABEL maintainer=v.stone@163.com
ARG ALLURE_VER=2.21.0

WORKDIR /opt
ADD https://github.com/allure-framework/allure2/releases/download/${ALLURE_VER}/allure-${ALLURE_VER}.tgz .
RUN tar zvxf allure-${ALLURE_VER}.tgz \
    && rm -rf allure-${ALLURE_VER}.tgz \
    && mv allure-${ALLURE_VER} allure \
    && ln -s /opt/allure/bin/allure /usr/bin/allure \
    && allure --version

WORKDIR /workspace
