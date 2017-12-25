FROM ubuntu:artful

MAINTAINER tberdy@hotmail.fr

RUN set -x \
  && apt-get update
  && apt-get install -y python3 python3-pip --no-install-recommends \
  && apt-get install -y redis-server --no-install-recommends \
  && apt-get install -y openjdk-8-jre --no-install-recommends \
  && rm -rf /var/lib/apt/lists/* \

  && pip3 install face_recognition
