# $Id$

HTML=index.html

html:
	for i in $(HTML); do \
		cat parts/head.part content/$$i parts/tail.part > $$i; \
	done

upload: install
	rsync -avz *.html shell.berlios.de:/home/groups/nntpspider/htdocs

install:

.PHONY: html upload install
