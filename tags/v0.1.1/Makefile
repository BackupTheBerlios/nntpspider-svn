# Makefile for nntpspider
# $Id$

VERSION=0.1.1
NAME=nntpspider-$(VERSION)

FILES=AUTHORS COPYING INSTALL TODO README Makefile ChangeLog \
	nntpspider nntpspider.1
DEBFILES=debian/copyright


.PHONY: clean dist install

all: clean

install:
	install -p nntpspider /usr/local/bin
	install -p nntpspider.1 /usr/local/man/man1

dist: clean
	mkdir -p $(NAME)/debian
	cp -a $(FILES) $(NAME)
	cp -a $(DEBFILES) $(NAME)/debian
	tar cvzf $(NAME).tar.gz $(NAME)
	rm -rf $(NAME)

clean:
	rm -f *~
	rm -f debian/*~
