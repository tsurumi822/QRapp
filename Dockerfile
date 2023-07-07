FROM ruby:3.2.2

ENV LANG C.UTF-8

WORKDIR /myapp

COPY Gemfile Gemfile.lock /myapp/
RUN bundle install

COPY . /myapp

CMD ["ruby", "app.rb"]
