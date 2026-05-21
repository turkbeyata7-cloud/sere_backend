FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    g++ \
    cmake \
    git \
    make \
    file \
    libboost-all-dev \
    libasio-dev

WORKDIR /app

RUN git clone https://github.com/CrowCpp/Crow.git

COPY . .

RUN cmake . && make

EXPOSE 8080

CMD ["sh", "-c", "echo 'APP CONTENT:' && ls -la /app && echo 'BINARY INFO:' && file /app/sera_backend && chmod +x /app/sera_backend && echo 'STARTING SERVER...' && /app/sera_backend"]