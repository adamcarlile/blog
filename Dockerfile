FROM ruby:2.3.0-slim
RUN apt-get update && apt-get install -qq -y build-essential nodejs libpq-dev postgresql-client-9.4 git-core --fix-missing --no-install-recommends

ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --deployment --path vendor/cache --jobs 20 --retry 5 --without development test

ENV RAILS_ENV production 
ENV RACK_ENV production

COPY . ./
RUN bundle exec rake assets:precompile

VOLUME ["$INSTALL_PATH/public"]

CMD bundle exec puma -C config/puma.rb