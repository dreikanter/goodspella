FROM ruby:3.1

RUN apt-get update --yes && apt install --no-install-recommends --yes \
  libtool \
  libc-dev \
  gcc \
  g++ \
  build-essential \
  libhunspell-dev \
  hunspell-en-us \
  hunspell-ru

RUN rm -rf /var/lib/apt/lists/*

ENV PATH /app/bin:$PATH

WORKDIR /app
