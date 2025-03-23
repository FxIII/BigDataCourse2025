#!/bin/sh
export HADOOP_VERSION=3.2.1
export HADOOP_URL=https://github.com/FxIII/BigDataCourse2025/releases/download/v0/hadoop-$HADOOP_VERSION.tar.gz

set -x \
&& curl -fSL "$HADOOP_URL" -o /tmp/hadoop.tar.gz \
&& tar -xvf /tmp/hadoop.tar.gz -C /opt/ \
&& rm /tmp/hadoop.tar.gz*
