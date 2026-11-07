FROM ubuntu:latest

RUN apt update && apt install -y gcc
WORKDIR /test
COPY test.c /test
RUN gcc test.c -o test > /dev/null && ./test
CMD ["./test"]
