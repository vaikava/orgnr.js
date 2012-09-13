build: compile test

test:
	@set -e
	@./node_modules/.bin/mocha --reporter spec -b -t 10000

compile:
	coffee --output lib --compile src

install:
	@npm install --dev

.PHONY: test compile install