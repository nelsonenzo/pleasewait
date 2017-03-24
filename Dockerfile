FROM ruby:2.1-alpine
RUN gem install sinatra --no-doc
COPY pleasewait.rb .
CMD ["ruby","pleasewait.rb"]
