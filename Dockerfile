FROM golang:alpine

WORKDIR /example1

COPY . /example1

RUN go build -o example1


CMD ["./example1"] 
