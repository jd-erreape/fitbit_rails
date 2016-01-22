FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libmysqlclient-dev 
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
ENV BUNDLE_PATH /bundle
RUN bundle install
ADD . /myapp
