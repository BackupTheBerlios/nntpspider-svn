# $Id$
# $Log$

HTML=index.html manpage.html
PRE=README.html TODO.html INSTALL.html

CSSFILES=css/nntpspider.css css/bg1.gif css/spinne.jpg

html: $(HTML) $(PRE)

# assemble pages from partial html files:
$(HTML): % : parts/head.part content/% parts/tail.part
	cat $^ > $@



# assemble pages from preformated ASCII test:
$(PRE): %.html : ../trunc/% parts/head.part parts/pre1.sh parts/pre2.part parts/tail.part
	cp parts/head.part $@
	. ./parts/pre1.sh $(basename $@) >> $@
	cat $< parts/pre2.part parts/tail.part >> $@



upload: install
#	rsync -avz *.html css pics/favicon.ico shell.berlios.de:/home/groups/nntpspider/htdocs
	cd ~/public_html/nntpspider; \
	rsync -avz *.html css favicon.ico shell.berlios.de:/home/groups/nntpspider/htdocs



install: html
	install $(HTML) $(PRE) pics/favicon.ico ~/public_html/nntpspider
	install -d ~/public_html/nntpspider/css
	install $(CSSFILES) ~/public_html/nntpspider/css



clean:
	rm -f *.html *~ css/*~ content/*~ parts/*~



.PHONY: html upload install clean

