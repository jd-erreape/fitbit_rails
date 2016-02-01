FROM rbenv

RUN sudo apt-get update -qq && sudo apt-get install -y build-essential libmysqlclient-dev 
RUN sudo mkdir -p /myapp

RUN sudo chown -R ruby /myapp

WORKDIR /myapp

#ADD Gemfile /myapp/Gemfile # Was needed for the initial creation
#ADD Gemfile.lock /myapp/Gemfile.lock # Was needed for the initial creation

ENV BUNDLE_PATH /bundle

#RUN bundle install # Was needed for the initial creation
#ADD . /myapp
