FROM phusion/baseimage:0.10.0
RUN apt-get update && apt-get install -y ruby ruby-dev build-essential git libmysqlclient-dev
RUN gem install bundler
COPY ./app /app
WORKDIR /app
RUN bundle install 
EXPOSE 4567
ENTRYPOINT [ "unicorn" ]
CMD [ "-c", "unicorn.rb", "-p", "4567"]
