FROM php:8.3.8-cli-alpine3.20
RUN apk update
RUN apk add git
RUN git clone https://github.com/resferer/mikhmonv3
WORKDIR mikhmonv3
ENTRYPOINT ["php"]
CMD ["-S", "0.0.0.0:80", "-t", "/mikhmonv3"]
