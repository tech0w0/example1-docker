FROM golang:alpine

WORKDIR /example1

COPY . /example1

CMD ["./example1"] 
