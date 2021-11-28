FROM ruby:2.6.6-alpine as builder

WORKDIR /usr/local/

RUN apk add --no-cache make build-base
COPY Gemfile Gemfile.lock ./
COPY Makefile ./
RUN make install

FROM ruby:2.6.6-alpine

WORKDIR /usr/local/

RUN apk add --no-cache make

COPY Makefile Gemfile Gemfile.lock config.ru .bundle ./
COPY app ./app/
COPY --from=builder /usr/local/vendor/ ./vendor/

RUN make install

EXPOSE 9292

CMD ["bundle", "exec", "puma"]