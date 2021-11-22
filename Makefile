.PHONY: start check

start:
	bundle exec rackup

check:
	bundle exec rubocop