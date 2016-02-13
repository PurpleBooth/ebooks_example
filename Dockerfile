FROM ruby:2.1

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN bundle install
CMD bash run.sh

EXPOSE 3000