.PHONY: all install clean

all: install build

install:
	bundle install

build:
	./main.rb index.md > index.html
