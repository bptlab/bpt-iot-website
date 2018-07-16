all: index.html

index.html: index.html.tpl
	./generate.py
