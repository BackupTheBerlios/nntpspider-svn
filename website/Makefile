# $Id$
# $Log$

HTML=index.html manpage.html freeservers.html
PRE=README.html TODO.html INSTALL.html ChangeLog.html

CSSFILES=css/nntpspider.css css/bg1.gif css/spinne.jpg

html: $(HTML) $(PRE)

# assemble pages from partial html files:
$(HTML): % : parts/head.part content/% parts/tail.part
	cat $^ > $@



# assemble pages from preformated ASCII test:
$(PRE): %.html : content/% parts/head.part parts/pre1.sh parts/pre2.part parts/tail.part
	cp parts/head.part $@
	. ./parts/pre1.sh $(basename $@) >> $@
	cat $< parts/pre2.part parts/tail.part >> $@



# copy the TODO, README and INSTALL file from the source dir to the content
# dir in order to preserve these files in the last released state, independent
# from unreleased changes.
init:
#	cp -a ../trunc/TODO ../trunc/README ../trunc/INSTALL content
	cp -a $(patsubst %.html, ../trunc/%, $(PRE)) content


upload: install
#	rsync -avz *.html css pics/favicon.ico shell.berlios.de:/home/groups/nntpspider/htdocs
	cd ~/public_html/nntpspider; \
	rsync -avz *.html css favicon.ico shell.berlios.de:/home/groups/nntpspider/htdocs



install: html
	install -m 664 $(HTML) $(PRE) pics/favicon.ico ~/public_html/nntpspider
	install -m 775 -d ~/public_html/nntpspider/css
	install -m 664 $(CSSFILES) ~/public_html/nntpspider/css



clean:
	rm -f *.html *~ css/*~ content/*~ parts/*~



.PHONY: html upload install clean

