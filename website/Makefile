# $Id$

HTML=index.html manpage.html

html:
	for i in $(HTML); do \
		cat parts/head.part content/$$i parts/tail.part > $$i; \
	done
	cat parts/head.part parts/readme1.part ../trunc/README parts/pre2.part parts/tail.part > readme.html
	cat parts/head.part parts/todo1.part ../trunc/TODO parts/pre2.part parts/tail.part > todo.html
	cat parts/head.part parts/install1.part ../trunc/INSTALL parts/pre2.part parts/tail.part > install.html

upload: install
	rsync -avz *.html css shell.berlios.de:/home/groups/nntpspider/htdocs

install: html

clean:
	rm -f *.html *~ css/*~ content/*~ parts/*~

.PHONY: html upload install clean

