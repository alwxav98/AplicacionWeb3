
FROM ruby:3.3.6-slim


WORKDIR /usr/src/app


RUN apt-get update -qq && apt-get install -y \
    libxml2-dev \
    libsqlite3-dev \
    libssl-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*


COPY Gemfile Gemfile.lock ./


RUN bundle install

COPY . .


EXPOSE 4567


CMD ["ruby", "app.rb"]