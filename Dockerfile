FROM ruby:2.2.9-alpine
RUN gem install sinatra --no-doc
COPY pleasewait.rb /usr/src/pleasewait.rb
CMD ["/usr/local/bin/ruby","/usr/src/pleasewait.rb"]
