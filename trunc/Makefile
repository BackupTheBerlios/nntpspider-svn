VERSION=0.1
NAME=nntpspider-$(VERSION)

FILES=AUTHORS COPYING INSTALL TODO README Makefile ChangeLog \
	nntpspider nntpspider.1 \
	debian


.PHONY: clean dist install

all: clean

install:
	install -p nntpspider /usr/local/bin
	install -p nntpspider.1 /usr/local/man/man1

dist: clean
	mkdir -p $(NAME)
	cp -a $(FILES) $(NAME)
	tar cvzf $(NAME).tar.gz $(NAME)
	rm -rf $(NAME)

clean:
	rm -f *~
	rm -f debian/*~
