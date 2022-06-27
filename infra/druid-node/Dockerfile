FROM alpine:3.16

ENV DRUID_HOME=/druid
ENV DRUID_VERSION=0.23.0

RUN apk add bash

RUN apk add openjdk11 && \
    echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk" >> ~/.bashrc

RUN wget https://dlcdn.apache.org/druid/$DRUID_VERSION/apache-druid-$DRUID_VERSION-bin.tar.gz -O druid.tar.gz && \
    mkdir -p $DRUID_HOME && \
    tar -xvzf druid.tar.gz -C $DRUID_HOME && \
    rm druid.tar.gz && \
    mv $DRUID_HOME/**/* $DRUID_HOME && \
    rm -r $DRUID_HOME/apache-druid-$DRUID_VERSION && \
    echo "export DRUID_HOME=$DRUID_HOME" >> ~/.bashrc

WORKDIR ${DRUID_HOME}
