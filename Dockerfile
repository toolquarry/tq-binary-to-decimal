FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y build-essential && \
    apt-get install -y gcc && \
    apt-get install -y libssl-dev && \
    apt-get install -y libffi-dev

COPY . /app

WORKDIR /app

RUN make all

CMD ["/bin/bash"]
