FROM clojure:openjdk-13-lein-buster

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    echo "deb https://deb.nodesource.com/node_10.x buster main" | tee /etc/apt/sources.list.d/nodesource.list && \
    apt-get update && \
    apt-get install -y nodejs && \
    apt-get purge -y curl && \ 
    apt-get autoremove -y && \
    apt-get clean
