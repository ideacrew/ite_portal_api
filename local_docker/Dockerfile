FROM ruby:3.1.3-bullseye as base
LABEL author="IdeaCrew"

RUN apt-get update \
    && apt-get -yq dist-upgrade \
    && apt-get install -y \
      libxml2 \
      libxslt-dev \
      libcurl4-openssl-dev \
      libxext6 \
      libxrender1 \
      openssl \
      sshpass \
      unzip \
      zip \
      freetds-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && truncate -s 0 /var/log/*log

ENV HOME=/dbh

RUN gem update --system
RUN gem install bundler -v 2.2.14

RUN mkdir $HOME

WORKDIR $HOME
ENV RAILS_ENV=development

RUN apt-get update -qq \
  && apt-get install -yq --no-install-recommends \
    build-essential \
    nodejs \
    npm \
    unixodbc-dev \
    libpq-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && truncate -s 0 /var/log/*log

COPY . $HOME

RUN bundle config set --local without 'production' \
  && bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]
