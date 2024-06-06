FROM php:7.4-cli-alpine
RUN apk update
RUN apk add git
RUN git clone https://github.com/resferer/mikhmonv3
WORKDIR mikhmonv3
ENTRYPOINT ["php"]
CMD ["-S", "0.0.0.0:80", "-t", "/mikhmonv3"]