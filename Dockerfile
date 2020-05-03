FROM centos:latest

COPY . /example1

WORKDIR /example1

RUN chmod 777 example1

CMD ["./example1"]
