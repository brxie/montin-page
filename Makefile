.PHONY: serve build

serve:
	bundle exec jekyll serve --host 0.0.0.0 --livereload

build:
	bundle exec jekyll build
