FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y postgresql-client
WORKDIR /app
COPY . /app/
ENV BUNDLE_PATH /gems
RUN gem install bundler:2.2.32 && bundle install
CMD ["bin/rails", "s", "-b", "0.0.0.0"]
EXPOSE 3000