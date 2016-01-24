FROM ruby:2.3.0

RUN apt-get update -qq && apt-get install -y build-essential libmysqlclient-dev 
RUN mkdir /myapp

WORKDIR /myapp

#ADD Gemfile /myapp/Gemfile # Was needed for the initial creation
#ADD Gemfile.lock /myapp/Gemfile.lock # Was needed for the initial creation

ENV BUNDLE_PATH /bundle

#RUN bundle install # Was needed for the initial creation

ADD . /myapp
