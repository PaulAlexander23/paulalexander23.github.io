
.PHONY: view check-for-updates

view: Gemfile.lock
	./serve.sh

Gemfile.lock: Gemfile 
	bundle install

check-for-updates:
	bundle update github-pages


