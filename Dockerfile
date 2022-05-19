# Dockerfile for sprachtandem app + ruby 3.1.2
# =============================================
FROM ruby:3.1.2

# Update and install dependencies
# ================================
RUN apt-get update
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y build-essential nodejs yarn postgresql-client vim
RUN gem install bundler

# Copy contents and run bundler and yarn
# ======================================
WORKDIR /sprachtandem
COPY . /sprachtandem
RUN bundle install
RUN yarn install