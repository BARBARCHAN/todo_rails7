FROM ruby:3.1

WORKDIR /todo_rails7

COPY Gemfile /todo_rails7/Gemfile
COPY Gemfile.lock /todo_rails7/Gemfile.lock

RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]