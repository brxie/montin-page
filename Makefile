.PHONY: serve build

serve:
	jekyll serve --host 0.0.0.0 --livereload

build:
	jekyll build
