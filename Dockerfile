FROM ubuntu:latest
LABEL authors="slom"

ENTRYPOINT ["top", "-b"]