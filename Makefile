# This Makefile has two purposes:
# 1. Starting the compilation of Vim for Unix.
# 2. Creating the various distribution files.


#########################################################################
# 1. Starting the compilation of Vim for Unix.
#
# Using this Makefile without an argument will compile Vim for Unix.
# "make install" is also possible.
#
# NOTE: If this doesn't work properly, first change directory to "src" and use
# the Makefile there:
#	cd src
#	make [arguments]
# Noticed on AIX systems when using this Makefile: Trying to run "cproto" or
# something else after Vim has been compiled.  Don't know why...
# Noticed on OS/390 Unix: Restarts configure.
#
# The first (default) target is "first".  This will result in running
# "make first", so that the target from "src/auto/config.mk" is picked
# up properly when config didn't run yet.  Doing "make all" before configure
# has run can result in compiling with $(CC) empty.

first:
	@if test ! -f src/auto/config.mk; then \
		cp src/config.mk.dist src/auto/config.mk; \
	fi
	@echo "Starting make in the src directory."
	@echo "If there are problems, cd to the src directory and run make there"
	cd src && $(MAKE) $@

# Some make programs use the last target for the $@ default; put the other
# targets separately to always let $@ expand to "first" by default.
all install uninstall tools config configure reconfig proto depend lint tags types test testclean clean distclean:
	@if test ! -f src/auto/config.mk; then \
		cp src/config.mk.dist src/auto/config.mk; \
	fi
	@echo "Starting make in the src directory."
	@echo "If there are problems, cd to the src directory and run make there"
	cd src && $(MAKE) $@


MAJOR = 7
MINOR = 4

VIMVER	= vim-$(MAJOR).$(MINOR)
VERSION = $(MAJOR)$(MINOR)
VDOT	= $(MAJOR).$(MINOR)
VIMRTDIR = vim$(VERSION)

# Vim used for conversion from "unix" to "dos"
VIM	= vim

# How to include Filelist depends on the version of "make" you have.
# If the current choice doesn't work, try the other one.

include Filelist


# All output is put in the "dist" directory.
dist:
	mkdir dist

# Clean up some files to avoid they are included.
prepare:
	if test -f runtime/doc/uganda.nsis.txt; then \
		rm runtime/doc/uganda.nsis.txt; fi

# For the zip files we need to create a file with the comment line
dist/comment:
	mkdir dist/comment

COMMENT_GVIM = comment/$(VERSION)-bin-gvim
COMMENT_HTML = comment/$(VERSION)-html
COMMENT_FARSI = comment/$(VERSION)-farsi


dist/$(COMMENT_HTML): dist/comment
	echo "Vim - Vi IMproved - v$(VDOT) documentation in HTML" > dist/$(COMMENT_HTML)

dist/$(COMMENT_FARSI): dist/comment
	echo "Vim - Vi IMproved - v$(VDOT) Farsi language files" > dist/$(COMMENT_FARSI)

unixall: dist prepare
	-rm -f dist/$(VIMVER).tar.bz2
	-rm -rf dist/$(VIMRTDIR)
	mkdir dist/$(VIMRTDIR)
	tar cf - \
		$(RT_ALL) \
		$(RT_ALL_BIN) \
		$(RT_UNIX) \
		$(RT_UNIX_DOS_BIN) \
		$(RT_SCRIPTS) \
		$(LANG_GEN) \
		$(LANG_GEN_BIN) \
		$(SRC_ALL) \
		$(SRC_UNIX) \
		$(SRC_DOS_UNIX) \
		$(EXTRA) \
		$(LANG_SRC) \
		| (cd dist/$(VIMRTDIR); tar xf -)
# Need to use a "distclean" config.mk file
# Note: this file is not included in the repository to avoid problems, but it's
# OK to put it in the archive.
	cp -f src/config.mk.dist dist/$(VIMRTDIR)/src/auto/config.mk
# Create an empty config.h file, make dependencies require it
	touch dist/$(VIMRTDIR)/src/auto/config.h
# Make sure configure is newer than config.mk to force it to be generated
	touch dist/$(VIMRTDIR)/src/configure
# Make sure ja.sjis.po is newer than ja.po to avoid it being regenerated.
# Same for cs.cp1250.po, pl.cp1250.po and sk.cp1250.po.
	touch dist/$(VIMRTDIR)/src/po/ja.sjis.po
	touch dist/$(VIMRTDIR)/src/po/cs.cp1250.po
	touch dist/$(VIMRTDIR)/src/po/pl.cp1250.po
	touch dist/$(VIMRTDIR)/src/po/sk.cp1250.po
	touch dist/$(VIMRTDIR)/src/po/zh_CN.cp936.po
	touch dist/$(VIMRTDIR)/src/po/ru.cp1251.po
	touch dist/$(VIMRTDIR)/src/po/uk.cp1251.po
# Create the archive.
	cd dist && tar cf $(VIMVER).tar $(VIMRTDIR)
	bzip2 dist/$(VIMVER).tar

# Split in two parts to avoid an "argument list too long" error.
dosrt_unix2dos: dist prepare no_title.vim
	-rm -rf dist/vim
	mkdir dist/vim
	mkdir dist/vim/$(VIMRTDIR)
	mkdir dist/vim/$(VIMRTDIR)/lang
	cd src && MAKEMO=yes $(MAKE) languages
	tar cf - \
		$(RT_ALL) \
		| (cd dist/vim/$(VIMRTDIR); tar xf -)
	tar cf - \
		$(RT_SCRIPTS) \
		$(RT_DOS) \
		$(RT_NO_UNIX) \
		$(RT_AMI_DOS) \
		$(LANG_GEN) \
		| (cd dist/vim/$(VIMRTDIR); tar xf -)
	find dist/vim/$(VIMRTDIR) -type f -exec $(VIM) -e -X -u no_title.vim -c ":set tx|wq" {} \;
	tar cf - \
		$(RT_UNIX_DOS_BIN) \
		$(RT_ALL_BIN) \
		$(RT_DOS_BIN) \
		$(LANG_GEN_BIN) \
		| (cd dist/vim/$(VIMRTDIR); tar xf -)
	mv dist/vim/$(VIMRTDIR)/runtime/* dist/vim/$(VIMRTDIR)
	rmdir dist/vim/$(VIMRTDIR)/runtime
# Add the message translations.  Trick: skip ja.mo and use ja.sjis.mo instead.
# Same for cs.mo / cs.cp1250.mo, pl.mo / pl.cp1250.mo, sk.mo / sk.cp1250.mo,
# zh_CN.mo / zh_CN.cp936.mo, uk.mo / uk.cp1251.mo and ru.mo / ru.cp1251.mo.
	for i in $(LANG_DOS); do \
	      if test "$$i" != "src/po/ja.mo" -a "$$i" != "src/po/pl.mo" -a "$$i" != "src/po/cs.mo" -a "$$i" != "src/po/sk.mo" -a "$$i" != "src/po/zh_CN.mo" -a "$$i" != "src/po/ru.mo" -a "$$i" != "src/po/uk.mo"; then \
		n=`echo $$i | sed -e "s+src/po/\([-a-zA-Z0-9_]*\(.UTF-8\)*\)\(.sjis\)*\(.cp1250\)*\(.cp1251\)*\(.cp936\)*.mo+\1+"`; \
		mkdir dist/vim/$(VIMRTDIR)/lang/$$n; \
		mkdir dist/vim/$(VIMRTDIR)/lang/$$n/LC_MESSAGES; \
		cp $$i dist/vim/$(VIMRTDIR)/lang/$$n/LC_MESSAGES/vim.mo; \
	      fi \
	    done
	cp libintl.dll dist/vim/$(VIMRTDIR)/

html: dist dist/$(COMMENT_HTML)
	-rm -rf dist/vim$(VERSION)html.zip
	cd runtime/doc && zip -9 -z ../../dist/vim$(VERSION)html.zip *.html <../../dist/$(COMMENT_HTML)

farsi: dist dist/$(COMMENT_FARSI)
	-rm -f dist/farsi$(VERSION).zip
	zip -9 -rD -z dist/farsi$(VERSION).zip farsi < dist/$(COMMENT_FARSI)
