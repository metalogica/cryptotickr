# Use the Ruby 2.7.1 image from Docker Hub
# as the base image (https://hub.docker.com/_/ruby)
FROM ruby:3.0.1

# Use a directory called /code in which to store application's files.
WORKDIR /code

# Copy all the application's files into the /code 
COPY . /code

# Run bundle install to install the Ruby dependencies.
RUN bundle install

# Set "rails server -b 0.0.0.0" as the command to run when container starts.
CMD ["rails", "server", "-b", "0.0.0.0"]
