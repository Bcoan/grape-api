FROM ruby:2.4

ADD Gemfile /app/
ADD Gemfile.lock /app/

WORKDIR /app

RUN bundle install
RUN rake db:create
RUN rake db:migrate

ADD . /app

CMD ["rackup", "-o", "0.0.0.0"]
