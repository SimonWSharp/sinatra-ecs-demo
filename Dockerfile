FROM ruby:2.6.6

WORKDIR /usr/local/

COPY Gemfile Gemfile.lock ./
COPY Makefile ./
RUN make install

COPY config.ru ./
COPY app ./app/

EXPOSE 9292

CMD ["make", "start"]