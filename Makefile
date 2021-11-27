.PHONY: start check test

install:
	gem install bundler:1.17.3
	bundle check --path=vendor/bundle || bundle install --path vendor/bundle

start:
	bundle exec rackup

check:
	bundle exec rubocop

test: 
	bundle exec rspec