FROM ruby:3.1.2

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    npm \
    yarn

WORKDIR /app

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy app files
COPY . .

# Expose port
EXPOSE 3000

# Start Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]