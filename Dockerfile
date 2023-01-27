FROM google/dart:2.18.6

ARG 3.3.10

RUN apt-get update --quiet --yes
RUN apt-get install --quiet --yes \
    unzip \
    apt-utils

RUN pub global activate fvm


RUN fvm install 3.3.10

RUN flutter-sdk/bin/flutter precache

RUN flutter-sdk/bin/flutter config --no-analytics

RUN fvm flutter doctor -v
