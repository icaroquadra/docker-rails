FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /rails-mysql
WORKDIR /rails-mysql

ADD Gemfile /docker-rails/Gemfile
ADD Gemfile.lock /docker-rails/Gemfile.lock

RUN bundle install

ADD . /rails-mysql