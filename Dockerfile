ARG USERNAME=ubuntu
ARG GROUPNAME=$USERNAME

FROM ubuntu:latest

RUN apt update
RUN apt install -y curl default-jre default-jdk
RUN apt install -y gradle
RUN apt install -y git

# Experimental stuff ahead. Not yet tested.
RUN groupadd --git 1000 $GROUPNAME
RUN useradd --uid 1000 --gid 1000 -m $USERNAME

USER $USERNAME