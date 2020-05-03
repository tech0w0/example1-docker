FROM scratch

COPY . example1/

WORKDIR /example1

CMD ["./example1"] 
