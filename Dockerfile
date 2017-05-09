FROM ruby:2.4

ADD Gemfile /app/
ADD Gemfile.lock /app/

WORKDIR /app

RUN bundle install

ADD . /app

RUN rake db:create
RUN rake db:migrate

CMD ["rackup", "-o", "0.0.0.0"]
