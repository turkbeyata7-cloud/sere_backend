FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    g++ \
    cmake \
    git \
    make \
    libboost-all-dev

WORKDIR /app

RUN git clone https://github.com/CrowCpp/Crow.git

COPY . .

RUN cmake . && make

EXPOSE 8080

CMD ["/app/sera_backend"]