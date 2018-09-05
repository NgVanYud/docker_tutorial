FROM ruby:2.2.4

LABEL maintainer.name="HoanKi" \
      maintainer.email="hoanki2212@gmail.com"

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sample_app

WORKDIR /sample_app

ADD Gemfile /sample_app
ADD Gemfile.lock /sample_app

RUN bundle install

COPY . /sample_app
RUN chmod a+x docker/boot.sh
