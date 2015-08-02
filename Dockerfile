FROM debian:stable

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN chmod a+x run.sh && \
    apt-get update && \
    apt-get install -y wget ruby ruby-dev build-essential && \
    rm -r /var/lib/apt/lists/* && \
    gem install bundle && \
    bundle install

CMD bash run.sh

EXPOSE 3000