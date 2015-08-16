FROM ruby:2.2.0

RUN apt-get update -qq && apt-get install -y build-essential

# for postgres, nokogiri, Node
RUN apt-get install -y libpq-dev libxml2-dev libxslt1-dev nodejs

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME

RUN RAILS_ENV=production rake assets:precompile
