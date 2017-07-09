SOURCE = /home/badboy/git/rezepte/_site
DEST = /var/www/sites/rezepte.fnordig.de

build:
	mdbook build

serve:
	mdbook serve

deploy: build
	rsync -va $(SOURCE) $(DEST)
