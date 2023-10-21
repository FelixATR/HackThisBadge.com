FROM ruby:3.1

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /app

COPY . ./
RUN gem install bundler && bundle install --redownload

EXPOSE 4000
