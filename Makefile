SOURCE = /home/jer/git/rezepte/book/
DEST = /var/www/sites/rezepte.fnordig.de

build:
	mdbook build

serve:
	mdbook serve

deploy: build
	rsync -va $(SOURCE) $(DEST)
