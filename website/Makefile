# $Id$

HTML=index.html

html:
	for i in $(HTML); do \
		cat parts/head.part content/$$i parts/tail.part > $$i; \
	done
	cat parts/head.part parts/readme1.part ../trunc/README parts/pre2.part parts/tail.part > readme.html

upload: install
	rsync -avz *.html shell.berlios.de:/home/groups/nntpspider/htdocs

install:

clean:
	rm -f *.html *~ css/*~ content/*~ parts/*~

.PHONY: html upload install clean

