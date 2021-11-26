.PHONY: start check test

start:
	bundle exec rackup

check:
	bundle exec rubocop

test: 
	bundle exec rspec