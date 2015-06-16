# Compiling Vim, summary:
#
#	3. make
#	5. make install
#

#system:	      configurations:		     version (*) tested by:
#-------------	      ------------------------	     -------  -  ----------
#Mac OS X 10.[23]     gcc	     Carbon		6.2  (x) Bram Moolenaar
# }}}

CC=

include auto/config.mk
CClink = $(CC)

# Autoconf binary.
AUTOCONF = autoconf

# LINT - for running lint
#  For standard Unix lint
LINT = lint
LINT_OPTIONS = -beprxzF

##################### end of system specific lines ################### }}}

### Names of the programs and targets  {{{1
VIMTARGET	= $(VIMNAME)$(EXEEXT)
EXTARGET	= $(EXNAME)$(LNKEXT)
VIEWTARGET	= $(VIEWNAME)$(LNKEXT)
GVIMNAME	= g$(VIMNAME)
GVIMTARGET	= $(GVIMNAME)$(LNKEXT)
GVIEWNAME	= g$(VIEWNAME)
GVIEWTARGET	= $(GVIEWNAME)$(LNKEXT)
RVIMNAME	= r$(VIMNAME)
RVIMTARGET	= $(RVIMNAME)$(LNKEXT)
RVIEWNAME	= r$(VIEWNAME)
RVIEWTARGET	= $(RVIEWNAME)$(LNKEXT)
RGVIMNAME	= r$(GVIMNAME)
RGVIMTARGET	= $(RGVIMNAME)$(LNKEXT)
RGVIEWNAME	= r$(GVIEWNAME)
RGVIEWTARGET	= $(RGVIEWNAME)$(LNKEXT)
VIMDIFFNAME	= $(VIMNAME)diff
GVIMDIFFNAME	= g$(VIMDIFFNAME)
VIMDIFFTARGET	= $(VIMDIFFNAME)$(LNKEXT)
GVIMDIFFTARGET	= $(GVIMDIFFNAME)$(LNKEXT)
EVIMNAME	= e$(VIMNAME)
EVIMTARGET	= $(EVIMNAME)$(LNKEXT)
EVIEWNAME	= e$(VIEWNAME)
EVIEWTARGET	= $(EVIEWNAME)$(LNKEXT)

### Names of the tools that are also made  {{{1
TOOLS = xxd/xxd$(EXEEXT)

### Directory of the man pages
MAN1DIR = /man1

### Vim version (adjusted by a script)
VIMMAJOR = 7
VIMMINOR = 4

### Location of Vim files (should not need to be changed, and  {{{1
### some things might not work when they are changed!)
VIMDIR = /vim
VIMRTDIR = /vim$(VIMMAJOR)$(VIMMINOR)
HELPSUBDIR = /doc
COLSUBDIR = /colors
SYNSUBDIR = /syntax
INDSUBDIR = /indent
AUTOSUBDIR = /autoload
PLUGSUBDIR = /plugin
FTPLUGSUBDIR = /ftplugin
LANGSUBDIR = /lang
COMPSUBDIR = /compiler
KMAPSUBDIR = /keymap
MACROSUBDIR = /macros
TOOLSSUBDIR = /tools
TUTORSUBDIR = /tutor
SPELLSUBDIR = /spell
PRINTSUBDIR = /print
PODIR = po

VIMLOC		= $(DATADIR)$(VIMDIR)
VIMRTLOC	= $(DATADIR)$(VIMDIR)$(VIMRTDIR)
VIMRCLOC	= $(VIMLOC)
HELPSUBLOC	= $(VIMRTLOC)$(HELPSUBDIR)
COLSUBLOC	= $(VIMRTLOC)$(COLSUBDIR)
SYNSUBLOC	= $(VIMRTLOC)$(SYNSUBDIR)
INDSUBLOC	= $(VIMRTLOC)$(INDSUBDIR)
AUTOSUBLOC	= $(VIMRTLOC)$(AUTOSUBDIR)
PLUGSUBLOC	= $(VIMRTLOC)$(PLUGSUBDIR)
FTPLUGSUBLOC	= $(VIMRTLOC)$(FTPLUGSUBDIR)
LANGSUBLOC	= $(VIMRTLOC)$(LANGSUBDIR)
COMPSUBLOC	= $(VIMRTLOC)$(COMPSUBDIR)
KMAPSUBLOC	= $(VIMRTLOC)$(KMAPSUBDIR)
MACROSUBLOC	= $(VIMRTLOC)$(MACROSUBDIR)
TOOLSSUBLOC	= $(VIMRTLOC)$(TOOLSSUBDIR)
TUTORSUBLOC	= $(VIMRTLOC)$(TUTORSUBDIR)
SPELLSUBLOC	= $(VIMRTLOC)$(SPELLSUBDIR)
PRINTSUBLOC	= $(VIMRTLOC)$(PRINTSUBDIR)
SCRIPTLOC	= $(VIMRTLOC)

### Only set VIMRUNTIMEDIR when VIMRTLOC is set to a different location and
### the runtime directory is not below it.
#VIMRUNTIMEDIR = $(VIMRTLOC)

### Name of the evim file target.
EVIM_FILE	= $(DESTDIR)$(SCRIPTLOC)/evim.vim
MSWIN_FILE	= $(DESTDIR)$(SCRIPTLOC)/mswin.vim

### Name of the menu file target.
SYS_MENU_FILE	= $(DESTDIR)$(SCRIPTLOC)/menu.vim
SYS_SYNMENU_FILE = $(DESTDIR)$(SCRIPTLOC)/synmenu.vim
SYS_DELMENU_FILE = $(DESTDIR)$(SCRIPTLOC)/delmenu.vim

### Name of the bugreport file target.
SYS_BUGR_FILE	= $(DESTDIR)$(SCRIPTLOC)/bugreport.vim

### Name of the file type detection file target.
SYS_FILETYPE_FILE = $(DESTDIR)$(SCRIPTLOC)/filetype.vim

### Name of the file type detection file target.
SYS_FTOFF_FILE	= $(DESTDIR)$(SCRIPTLOC)/ftoff.vim

### Name of the file type detection script file target.
SYS_SCRIPTS_FILE = $(DESTDIR)$(SCRIPTLOC)/scripts.vim

### Name of the ftplugin-on file target.
SYS_FTPLUGIN_FILE = $(DESTDIR)$(SCRIPTLOC)/ftplugin.vim

### Name of the ftplugin-off file target.
SYS_FTPLUGOF_FILE = $(DESTDIR)$(SCRIPTLOC)/ftplugof.vim

### Name of the indent-on file target.
SYS_INDENT_FILE = $(DESTDIR)$(SCRIPTLOC)/indent.vim

### Name of the indent-off file target.
SYS_INDOFF_FILE = $(DESTDIR)$(SCRIPTLOC)/indoff.vim

### Name of the option window script file target.
SYS_OPTWIN_FILE = $(DESTDIR)$(SCRIPTLOC)/optwin.vim

# Program to install the program in the target directory.  Could also be "mv".
INSTALL_PROG	= cp

# Program to install the data in the target directory.	Cannot be "mv"!
INSTALL_DATA	= cp
INSTALL_DATA_R	= cp -r

### Program to run on installed binary.  Use the second one to disable strip.
#STRIP = strip
#STRIP = /bin/true

### Permissions for binaries  {{{1
BINMOD = 755

### Permissions for man page
MANMOD = 644

### Permissions for help files
HELPMOD = 644

### Permissions for Perl and shell scripts
SCRIPTMOD = 755

### Permission for Vim script files (menu.vim, bugreport.vim, ..)
VIMSCRIPTMOD = 644

### Permissions for all directories that are created
DIRMOD = 755

### Permissions for all other files that are created
FILEMOD = 644

# Where to copy the man and help files from
HELPSOURCE = ../runtime/doc

# Where to copy the script files from (menu, bugreport)
SCRIPTSOURCE = ../runtime

# Where to copy the colorscheme files from
COLSOURCE = ../runtime/colors

# Where to copy the syntax files from
SYNSOURCE = ../runtime/syntax

# Where to copy the indent files from
INDSOURCE = ../runtime/indent

# Where to copy the standard plugin files from
AUTOSOURCE = ../runtime/autoload

# Where to copy the standard plugin files from
PLUGSOURCE = ../runtime/plugin

# Where to copy the ftplugin files from
FTPLUGSOURCE = ../runtime/ftplugin

# Where to copy the macro files from
MACROSOURCE = ../runtime/macros

# Where to copy the tools files from
TOOLSSOURCE = ../runtime/tools

# Where to copy the tutor files from
TUTORSOURCE = ../runtime/tutor

# Where to copy the spell files from
SPELLSOURCE = ../runtime/spell

# Where to look for language specific files
LANGSOURCE = ../runtime/lang

# Where to look for compiler files
COMPSOURCE = ../runtime/compiler

# Where to look for keymap files
KMAPSOURCE = ../runtime/keymap

# Where to look for print resource files
PRINTSOURCE = ../runtime/print

LINKIT = @echo >/dev/null

# Without a GUI install the normal way.
NONE_INSTALL = install_normal

# MACVIM GUI
MACVIMGUI_SRC	= gui.c gui_beval.c MacVim/gui_macvim.m MacVim/MMBackend.m \
		  MacVim/MacVim.m
MACVIMGUI_OBJ	= objects/gui.o objects/gui_beval.o objects/pty.o \
		  objects/gui_macvim.o objects/MMBackend.o objects/MacVim.o
MACVIMGUI_DEFS	= -DFEAT_GUI_MACVIM -Wall -Wno-unknown-pragmas -pipe
MACVIMGUI_IPATH	=
MACVIMGUI_LIBS_DIR =
MACVIMGUI_LIBS1	= -framework Cocoa -framework Carbon
MACVIMGUI_LIBS2	=
MACVIMGUI_INSTALL = install_normal
MACVIMGUI_TARGETS =
MACVIMGUI_MAN_TARGETS =
MACVIMGUI_TESTTARGET = gui
MACVIMGUI_BUNDLE = macvim

# All GUI files
ALL_GUI_SRC  = gui.c gui_gtk.c gui_gtk_f.c gui_motif.c gui_xmdlg.c gui_xmebw.c gui_athena.c gui_gtk_x11.c gui_x11.c gui_at_sb.c gui_at_fs.c pty.c
ALL_GUI_PRO  = gui.pro gui_gtk.pro gui_motif.pro gui_xmdlg.pro gui_athena.pro gui_gtk_x11.pro gui_x11.pro gui_w16.pro gui_w32.pro gui_photon.pro

CPP_DEPEND = $(CC) -I$(srcdir) -M$(CPP_MM) \
		`echo "$(DEPEND_CFLAGS)" $(DEPEND_CFLAGS_FILTER)`

NO_ATTR=
PROTO_FLAGS = -m -M__ARGS -d -E"$(CPP)" $(NO_ATTR)


################################################
##   no changes required below this line      ##
################################################

SHELL = /bin/sh

.SUFFIXES:
.SUFFIXES: .c .o .pro

PRE_DEFS = -Iproto $(DEFS) $(GUI_DEFS) $(GUI_IPATH) $(CPPFLAGS) $(EXTRA_IPATHS)
POST_DEFS = $(X_CFLAGS) $(MZSCHEME_CFLAGS) $(TCL_CFLAGS) $(EXTRA_DEFS)

ALL_CFLAGS = $(PRE_DEFS) $(CFLAGS) $(PROFILE_CFLAGS) $(LEAK_CFLAGS) $(POST_DEFS)

# Exclude $CFLAGS for osdef.sh, for Mac 10.4 some flags don't work together
# with "-E".
OSDEF_CFLAGS = $(PRE_DEFS) $(POST_DEFS)

LINT_CFLAGS = -DLINT -I. $(PRE_DEFS) $(POST_DEFS) $(RUBY_CFLAGS) $(LUA_CFLAGS) $(PERL_CFLAGS) $(PYTHON_CFLAGS) $(PYTHON3_CFLAGS) -Dinline= -D__extension__= -Dalloca=alloca

LINT_EXTRA = -DUSE_SNIFF -DHANGUL_INPUT -D"__attribute__(x)="

DEPEND_CFLAGS = -DPROTO -DDEPEND -DFEAT_GUI $(LINT_CFLAGS)

# Note: MZSCHEME_LIBS must come before LIBS, because LIBS adds -lm which is
# needed by racket.
ALL_LIB_DIRS = $(GUI_LIBS_DIR) $(X_LIBS_DIR)
ALL_LIBS = \
	   $(GUI_LIBS1) \
	   $(GUI_X_LIBS) \
	   $(GUI_LIBS2) \
	   $(X_PRE_LIBS) \
	   $(X_LIBS) \
	   $(X_EXTRA_LIBS) \
	   $(MZSCHEME_LIBS) \
	   $(LIBS) \
	   $(EXTRA_LIBS) \
	   $(LUA_LIBS) \
	   $(PERL_LIBS) \
	   $(PYTHON_LIBS) \
	   $(PYTHON3_LIBS) \
	   $(TCL_LIBS) \
	   $(RUBY_LIBS) \
	   $(PROFILE_LIBS) \
	   $(LEAK_LIBS)

# abbreviations
DEST_BIN = $(DESTDIR)$(BINDIR)
DEST_VIM = $(DESTDIR)$(VIMLOC)
DEST_RT = $(DESTDIR)$(VIMRTLOC)
DEST_HELP = $(DESTDIR)$(HELPSUBLOC)
DEST_COL = $(DESTDIR)$(COLSUBLOC)
DEST_SYN = $(DESTDIR)$(SYNSUBLOC)
DEST_IND = $(DESTDIR)$(INDSUBLOC)
DEST_AUTO = $(DESTDIR)$(AUTOSUBLOC)
DEST_PLUG = $(DESTDIR)$(PLUGSUBLOC)
DEST_FTP = $(DESTDIR)$(FTPLUGSUBLOC)
DEST_LANG = $(DESTDIR)$(LANGSUBLOC)
DEST_COMP = $(DESTDIR)$(COMPSUBLOC)
DEST_KMAP = $(DESTDIR)$(KMAPSUBLOC)
DEST_MACRO = $(DESTDIR)$(MACROSUBLOC)
DEST_TOOLS = $(DESTDIR)$(TOOLSSUBLOC)
DEST_TUTOR = $(DESTDIR)$(TUTORSUBLOC)
DEST_SPELL = $(DESTDIR)$(SPELLSUBLOC)
DEST_SCRIPT = $(DESTDIR)$(SCRIPTLOC)
DEST_PRINT = $(DESTDIR)$(PRINTSUBLOC)
DEST_MAN_TOP = $(DESTDIR)$(MANDIR)

# We assume that the ".../man/xx/man1/" directory is for latin1 manual pages.
# Some systems use UTF-8, but these should find the ".../man/xx.UTF-8/man1/"
# directory first.
# FreeBSD uses ".../man/xx.ISO8859-1/man1" for latin1, use that one too.
DEST_MAN = $(DEST_MAN_TOP)$(MAN1DIR)
DEST_MAN_FR = $(DEST_MAN_TOP)/fr$(MAN1DIR)
DEST_MAN_FR_I = $(DEST_MAN_TOP)/fr.ISO8859-1$(MAN1DIR)
DEST_MAN_FR_U = $(DEST_MAN_TOP)/fr.UTF-8$(MAN1DIR)
DEST_MAN_IT = $(DEST_MAN_TOP)/it$(MAN1DIR)
DEST_MAN_IT_I = $(DEST_MAN_TOP)/it.ISO8859-1$(MAN1DIR)
DEST_MAN_IT_U = $(DEST_MAN_TOP)/it.UTF-8$(MAN1DIR)
DEST_MAN_JA_U = $(DEST_MAN_TOP)/ja$(MAN1DIR)
DEST_MAN_PL = $(DEST_MAN_TOP)/pl$(MAN1DIR)
DEST_MAN_PL_I = $(DEST_MAN_TOP)/pl.ISO8859-2$(MAN1DIR)
DEST_MAN_PL_U = $(DEST_MAN_TOP)/pl.UTF-8$(MAN1DIR)
DEST_MAN_RU = $(DEST_MAN_TOP)/ru.KOI8-R$(MAN1DIR)
DEST_MAN_RU_U = $(DEST_MAN_TOP)/ru.UTF-8$(MAN1DIR)


TAGS_INCL = *.h

BASIC_SRC = \
	blowfish.c \
	buffer.c \
	charset.c \
	crypt.c \
	crypt_zip.c \
	diff.c \
	digraph.c \
	edit.c \
	eval.c \
	ex_cmds.c \
	ex_cmds2.c \
	ex_docmd.c \
	ex_eval.c \
	ex_getln.c \
	fileio.c \
	fold.c \
	getchar.c \
	hardcopy.c \
	hashtab.c \
	if_cscope.c \
	if_xcmdsrv.c \
	main.c \
	mark.c \
	memfile.c \
	memline.c \
	menu.c \
	message.c \
	misc1.c \
	misc2.c \
	move.c \
	mbyte.c \
	normal.c \
	ops.c \
	option.c \
	os_unix.c \
	auto/pathdef.c \
	popupmnu.c \
	quickfix.c \
	regexp.c \
	screen.c \
	search.c \
	sha256.c \
	spell.c \
	syntax.c \
	tag.c \
	term.c \
	ui.c \
	undo.c \
	version.c \
	window.c \
	$(OS_EXTRA_SRC)

SRC =	$(BASIC_SRC) \
	$(GUI_SRC) \
	$(HANGULIN_SRC) \
	$(LUA_SRC) \
	$(MZSCHEME_SRC) \
	$(PERL_SRC) \
	$(PYTHON_SRC) $(PYTHON3_SRC) \
	$(TCL_SRC) \
	$(RUBY_SRC) \
	$(SNIFF_SRC) \
	$(WORKSHOP_SRC) \
	$(WSDEBUG_SRC)

TAGS_SRC = *.c *.cpp if_perl.xs

EXTRA_SRC = hangulin.c if_lua.c if_mzsch.c auto/if_perl.c if_perlsfio.c \
	    if_python.c if_python3.c if_tcl.c if_ruby.c if_sniff.c \
	    gui_beval.c workshop.c wsdebug.c integration.c netbeans.c

# Unittest files
MEMFILE_TEST_SRC = memfile_test.c
MEMFILE_TEST_TARGET = memfile_test$(EXEEXT)

UNITTEST_SRC = $(MEMFILE_TEST_SRC)
UNITTEST_TARGETS = $(MEMFILE_TEST_TARGET)

# All sources, also the ones that are not configured
ALL_SRC = $(BASIC_SRC) $(ALL_GUI_SRC) $(UNITTEST_SRC) $(EXTRA_SRC)

LINT_SRC = $(BASIC_SRC) $(GUI_SRC) $(HANGULIN_SRC) $(PYTHON_SRC) $(PYTHON3_SRC) $(TCL_SRC) \
	$(SNIFF_SRC) $(WORKSHOP_SRC) $(WSDEBUG_SRC) $(NETBEANS_SRC)

OBJ_COMMON = \
	objects/buffer.o \
	objects/blowfish.o \
	objects/charset.o \
	objects/crypt.o \
	objects/crypt_zip.o \
	objects/diff.o \
	objects/digraph.o \
	objects/edit.o \
	objects/eval.o \
	objects/ex_cmds.o \
	objects/ex_cmds2.o \
	objects/ex_docmd.o \
	objects/ex_eval.o \
	objects/ex_getln.o \
	objects/fileio.o \
	objects/fold.o \
	objects/getchar.o \
	objects/hardcopy.o \
	objects/hashtab.o \
	$(HANGULIN_OBJ) \
	objects/if_cscope.o \
	objects/if_xcmdsrv.o \
	objects/mark.o \
        objects/memline.o \
	objects/menu.o \
	objects/message.o \
	objects/misc1.o \
	objects/misc2.o \
	objects/move.o \
	objects/mbyte.o \
	objects/normal.o \
	objects/ops.o \
	objects/option.o \
	objects/os_unix.o \
	objects/pathdef.o \
	objects/popupmnu.o \
	objects/quickfix.o \
	objects/regexp.o \
	objects/screen.o \
	objects/search.o \
	objects/sha256.o \
	objects/spell.o \
	objects/syntax.o \
	$(SNIFF_OBJ) \
	objects/tag.o \
	objects/term.o \
	objects/ui.o \
	objects/undo.o \
	objects/version.o \
	objects/window.o \
	$(GUI_OBJ) \
	$(LUA_OBJ) \
	$(MZSCHEME_OBJ) \
	$(PERL_OBJ) \
	$(PYTHON_OBJ) \
	$(PYTHON3_OBJ) \
	$(TCL_OBJ) \
	$(RUBY_OBJ) \
	$(OS_EXTRA_OBJ) \
	$(WORKSHOP_OBJ) \
	$(NETBEANS_OBJ) \
	$(WSDEBUG_OBJ)

OBJ = $(OBJ_COMMON) \
	objects/main.o \
	objects/memfile.o

MEMFILE_TEST_OBJ = $(OBJ_COMMON) \
        objects/memfile_test.o

PRO_AUTO = \
	blowfish.pro \
	buffer.pro \
	charset.pro \
	crypt.pro \
	crypt_zip.pro \
	diff.pro \
	digraph.pro \
	edit.pro \
	eval.pro \
	ex_cmds.pro \
	ex_cmds2.pro \
	ex_docmd.pro \
	ex_eval.pro \
	ex_getln.pro \
	fileio.pro \
	fold.pro \
	getchar.pro \
	hardcopy.pro \
	hashtab.pro \
	hangulin.pro \
	if_cscope.pro \
	if_xcmdsrv.pro \
	if_python.pro \
	if_python3.pro \
	if_ruby.pro \
	main.pro \
	mark.pro \
	memfile.pro \
	memline.pro \
	menu.pro \
	message.pro \
	misc1.pro \
	misc2.pro \
	move.pro \
	mbyte.pro \
	normal.pro \
	ops.pro \
	option.pro \
	os_unix.pro \
	popupmnu.pro \
	quickfix.pro \
	regexp.pro \
	screen.pro \
	search.pro \
	sha256.pro \
	spell.pro \
	syntax.pro \
	tag.pro \
	term.pro \
	termlib.pro \
	ui.pro \
	undo.pro \
	version.pro \
	window.pro \
	gui_beval.pro \
	workshop.pro \
	netbeans.pro \
	$(ALL_GUI_PRO) \
	$(TCL_PRO)

# Resources used for the Mac are in one directory.
RSRC_DIR = os_mac_rsrc

PRO_MANUAL = os_amiga.pro os_msdos.pro os_win16.pro os_win32.pro \
	os_mswin.pro winclip.pro os_beos.pro os_vms.pro $(PERL_PRO)

# Default target is making the executable and tools
all: $(VIMTARGET) $(TOOLS) languages $(GUI_BUNDLE)

tools: $(TOOLS)

#
config auto/config.mk: auto/configure config.mk.in config.h.in
	-rm -f auto/config.cache
	if test "X$(MAKECMDGOALS)" != "Xclean" \
		-a "X$(MAKECMDGOALS)" != "Xdistclean" \
		-a "X$(MAKECMDGOALS)" != "Xautoconf" \
		-a "X$(MAKECMDGOALS)" != "Xreconfig"; then \
	    GUI_INC_LOC="$(GUI_INC_LOC)" GUI_LIB_LOC="$(GUI_LIB_LOC)" \
		CC="$(CC)" CPPFLAGS="$(CPPFLAGS)" CFLAGS="$(CFLAGS)" \
		LDFLAGS="$(LDFLAGS)" $(CONF_SHELL) srcdir="$(srcdir)" \
		./configure $(CONF_OPT_GUI) $(CONF_OPT_X) $(CONF_OPT_XSMP) \
		$(CONF_OPT_DARWIN) $(CONF_OPT_FAIL) \
		$(CONF_OPT_PERL) $(CONF_OPT_PYTHON) $(CONF_OPT_PYTHON3) \
		$(CONF_OPT_TCL) $(CONF_OPT_RUBY) $(CONF_OPT_NLS) \
		$(CONF_OPT_CSCOPE) $(CONF_OPT_MULTIBYTE) $(CONF_OPT_INPUT) \
		$(CONF_OPT_OUTPUT) $(CONF_OPT_GPM) $(CONF_OPT_WORKSHOP) \
		$(CONF_OPT_SNIFF) $(CONF_OPT_FEAT) $(CONF_TERM_LIB) \
		$(CONF_OPT_COMPBY) $(CONF_OPT_ACL)  $(CONF_OPT_NETBEANS) \
		$(CONF_ARGS) $(CONF_OPT_MZSCHEME) $(CONF_OPT_PLTHOME) \
		$(CONF_OPT_LUA) $(CONF_OPT_LUA_PREFIX) \
		$(CONF_OPT_SYSMOUSE); \
	fi

# Use "make reconfig" to rerun configure without cached values.
# When config.h changes, most things will be recompiled automatically.
# Invoke $(MAKE) to run config with the empty auto/config.mk.
# Invoke $(MAKE) to build all with the filled auto/config.mk.
reconfig: scratch clean
	$(MAKE) -f Makefile config
	$(MAKE) -f Makefile all

autoconf:
	if test ! -f configure.save; then mv configure configure.save; fi
	$(AUTOCONF)
	sed -e 's+>config.log+>auto/config.log+' -e 's+\./config.log+auto/config.log+' configure > auto/configure
	chmod 755 auto/configure
	mv -f configure.save configure
	-rm -rf autom4te.cache
	-rm -f auto/config.status auto/config.cache

# Re-execute this Makefile to include the new auto/config.mk produced by
# configure Only used when typing "make" with a fresh auto/config.mk.
myself:
	$(MAKE) -f Makefile all

# The normal command to compile a .c file to its .o file.
CCC = $(CC) -c -I$(srcdir) $(ALL_CFLAGS)

# Link the target for normal use or debugging.
# A shell script is used to try linking without unnecessary libraries.
$(VIMTARGET): auto/config.mk objects $(OBJ) version.c version.h
	$(CCC) version.c -o objects/version.o
	@LINK="$(PURIFY) $(SHRPENV) $(CClink) $(ALL_LIB_DIRS) $(LDFLAGS) \
		-o $(VIMTARGET) $(OBJ) $(ALL_LIBS)" \
		MAKE="$(MAKE)" LINK_AS_NEEDED=$(LINK_AS_NEEDED) \
		sh $(srcdir)/link.sh

xxd/xxd$(EXEEXT): xxd/xxd.c
	cd xxd; CC="$(CC)" CFLAGS="$(CPPFLAGS) $(CFLAGS)" LDFLAGS="$(LDFLAGS)" \
		$(MAKE) -f Makefile

# Build the language specific files if they were unpacked.
# Generate the converted .mo files separately, it's no problem if this fails.
languages:
	@if test -n "$(MAKEMO)" -a -f $(PODIR)/Makefile; then \
		cd $(PODIR); \
		  CC="$(CC)" $(MAKE) prefix=$(DESTDIR)$(prefix); \
	fi
	-@if test -n "$(MAKEMO)" -a -f $(PODIR)/Makefile; then \
		cd $(PODIR); \
		  CC="$(CC)" $(MAKE) prefix=$(DESTDIR)$(prefix) converted; \
	fi

# Update the *.po files for changes in the sources.  Only run manually.
update-po:
	cd $(PODIR); CC="$(CC)" $(MAKE) prefix=$(DESTDIR)$(prefix) update-po

# Generate function prototypes.  This is not needed to compile vim, but if
# you want to use it, cproto is out there on the net somewhere -- Webb
#
# When generating os_amiga.pro, os_msdos.pro and os_win32.pro there will be a
# few include files that can not be found, that's OK.

proto: $(PRO_AUTO) $(PRO_MANUAL)

# Filter out arguments that cproto doesn't support.
# Don't pass "-pthread", "-fwrapv" and similar arguments to cproto, it sees
# them as a list of individual flags.
# The -E"gcc -E" argument must be separate to avoid problems with shell
# quoting.
CPROTO = cproto $(PROTO_FLAGS) -DPROTO \
	 `echo '$(LINT_CFLAGS)' | sed -e 's/ -[a-z-]\+//g'`

# Always define FEAT_GUI.  This may generate a few warnings if it's also
# defined in auto/config.h, you can ignore that.
.c.pro:
	$(CPROTO) -DFEAT_GUI $< > proto/$@
	echo "/* vim: set ft=c : */" >> proto/$@

os_vms.pro: os_vms.c
# must use os_vms_conf.h for auto/config.h
	mv auto/config.h auto/config.h.save
	cp os_vms_conf.h auto/config.h
	$(CPROTO) -DVMS -UFEAT_GUI_ATHENA -UFEAT_GUI_NEXTAW -UFEAT_GUI_MOTIF -UFEAT_GUI_GTK $< > proto/$@
	echo "/* vim: set ft=c : */" >> proto/$@
	rm auto/config.h
	mv auto/config.h.save auto/config.h

# if_perl.pro is special: Use the generated if_perl.c for input and remove
# prototypes for local functions.
if_perl.pro: auto/if_perl.c
	$(CPROTO) -DFEAT_GUI auto/if_perl.c | sed "/_VI/d" > proto/$@


notags:
	-rm -f tags

# Note: tags is made for the currently configured version, can't include both
#	Motif and Athena GUI
# You can ignore error messages for missing files.
tags TAGS: notags
	$(TAGPRG) $(TAGS_SRC) $(TAGS_INCL)

# Make a highlight file for types.  Requires Exuberant ctags and awk
types: types.vim
types.vim: $(TAGS_SRC) $(TAGS_INCL)
	ctags --c-kinds=gstu -o- $(TAGS_SRC) $(TAGS_INCL) |\
		awk 'BEGIN{printf("syntax keyword Type\t")}\
			{printf("%s ", $$1)}END{print ""}' > $@

# Execute the test scripts.  Run these after compiling Vim, before installing.
# This doesn't depend on $(VIMTARGET), because that won't work when configure
# wasn't run yet.  Restart make to build it instead.
#
# This will produce a lot of garbage on your screen, including a few error
# messages.  Don't worry about that.
# If there is a real error, there will be a difference between "testXX.out" and
# a "testXX.ok" file.
# If everything is alright, the final message will be "ALL DONE".  If not you
# get "TEST FAILURE".
#
test check:
	$(MAKE) -f Makefile $(VIMTARGET)
	if test -n "$(MAKEMO)" -a -f $(PODIR)/Makefile; then \
		cd $(PODIR); $(MAKE) -f Makefile check VIM=../$(VIMTARGET); \
	fi
	-if test $(VIMTARGET) != vim -a ! -r vim; then \
		ln -s $(VIMTARGET) vim; \
	fi
	cd testdir; $(MAKE) -f Makefile $(GUI_TESTTARGET) VIMPROG=../$(VIMTARGET) $(GUI_TESTARG) SCRIPTSOURCE=../$(SCRIPTSOURCE)
	$(MAKE) -f Makefile unittest

benchmark:
	cd testdir; $(MAKE) -f Makefile benchmark VIMPROG=../$(VIMTARGET) SCRIPTSOURCE=../$(SCRIPTSOURCE)

unittesttargets:
	$(MAKE) -f Makefile $(UNITTEST_TARGETS)

unittest unittests: $(UNITTEST_TARGETS)
	@for t in $(UNITTEST_TARGETS); do \
		./$$t || exit 1; echo $$t passed; \
	done

# Run individual test, assuming that Vim was already compiled.
test1 \
	test_argument_count \
	test_autoformat_join \
	test_breakindent \
	test_changelist \
	test_close_count \
	test_command_count \
	test_eval \
	test_insertcount \
	test_listlbr \
	test_listlbr_utf8 \
	test_mapping \
	test_options \
	test_qf_title \
	test_signs \
	test_utf8 \
	test_writefile \
	test2 test3 test4 test5 test6 test7 test8 test9 \
	test10 test11 test12 test13 test14 test15 test16 test17 test18 test19 \
	test20 test21 test22 test23 test24 test25 test26 test27 test28 test29 \
	test30 test31 test32 test33 test34 test35 test36 test37 test38 test39 \
	test40 test41 test42 test43 test44 test45 test46 test47 test48 test49 \
	test50 test51 test52 test53 test54 test55 test56 test57 test58 test59 \
	test60 test61 test62 test63 test64 test65 test66 test67 test68 test69 \
	test70 test71 test72 test73 test74 test75 test76 test77 test78 test79 \
	test80 test81 test82 test83 test84 test85 test86 test87 test88 test89 \
	test90 test91 test92 test93 test94 test95 test96 test97 test98 test99 \
	test100 test101 test102 test103 test104 test105 test106 test107:
	cd testdir; rm $@.out; $(MAKE) -f Makefile $@.out VIMPROG=../$(VIMTARGET) $(GUI_TESTARG) SCRIPTSOURCE=../$(SCRIPTSOURCE)

testclean:
	cd testdir; $(MAKE) -f Makefile clean
	if test -d $(PODIR); then \
		cd $(PODIR); $(MAKE) checkclean; \
	fi

# Unittests
# It's build just like Vim to satisfy all dependencies.
$(MEMFILE_TEST_TARGET): auto/config.mk objects $(MEMFILE_TEST_OBJ)
	$(CCC) version.c -o objects/version.o
	@LINK="$(PURIFY) $(SHRPENV) $(CClink) $(ALL_LIB_DIRS) $(LDFLAGS) \
		-o $(MEMFILE_TEST_TARGET) $(MEMFILE_TEST_OBJ) $(ALL_LIBS)" \
		MAKE="$(MAKE)" LINK_AS_NEEDED=$(LINK_AS_NEEDED) \
		sh $(srcdir)/link.sh

# install targets

install: $(GUI_INSTALL)

install_normal: installvim installtools $(INSTALL_LANGS) install-icons

install_gui_extra: installgtutorbin

installvim: installvimbin installtutorbin \
		installruntime installlinks installmanlinks

#
# Avoid overwriting an existing executable, somebody might be running it and
# overwriting it could cause it to crash.  Deleting it is OK, it won't be
# really deleted until all running processes for it have exited.  It is
# renamed first, in case the deleting doesn't work.
#
# If you want to keep an older version, rename it before running "make
# install".
#
installvimbin: $(VIMTARGET) $(DESTDIR)$(exec_prefix) $(DEST_BIN)
	-if test -f $(DEST_BIN)/$(VIMTARGET); then \
	  mv -f $(DEST_BIN)/$(VIMTARGET) $(DEST_BIN)/$(VIMNAME).rm; \
	  rm -f $(DEST_BIN)/$(VIMNAME).rm; \
	fi
	$(INSTALL_PROG) $(VIMTARGET) $(DEST_BIN)
	$(STRIP) $(DEST_BIN)/$(VIMTARGET)
	chmod $(BINMOD) $(DEST_BIN)/$(VIMTARGET)
# may create a link to the new executable from /usr/bin/vi
	-$(LINKIT)

# Long list of arguments for the shell script that installs the manual pages
# for one language.
INSTALLMANARGS = $(VIMLOC) $(SCRIPTLOC) $(VIMRCLOC) $(HELPSOURCE) $(MANMOD) \
		$(VIMNAME) $(VIMDIFFNAME) $(EVIMNAME)

# Install most of the runtime files
installruntime: installrtbase installmacros installtutor installspell

# install the help files; first adjust the contents for the final location
installrtbase: $(HELPSOURCE)/vim.1 $(DEST_VIM) $(DEST_RT) \
		$(DEST_HELP) $(DEST_PRINT) $(DEST_COL) $(DEST_SYN) $(DEST_IND) \
		$(DEST_FTP) $(DEST_AUTO) $(DEST_AUTO)/xml $(DEST_PLUG) \
		$(DEST_TUTOR) $(DEST_SPELL) $(DEST_COMP)
	-$(SHELL) ./installman.sh install $(DEST_MAN) "" $(INSTALLMANARGS)
	@echo generating help tags
# Generate the help tags with ":helptags" to handle all languages.
	-@cd $(HELPSOURCE); $(MAKE) VIMEXE=$(DEST_BIN)/$(VIMTARGET) vimtags
	cd $(HELPSOURCE); \
		files=`ls *.txt tags`; \
		files="$$files `ls *.??x tags-?? 2>/dev/null || true`"; \
		$(INSTALL_DATA) $$files  $(DEST_HELP); \
		cd $(DEST_HELP); \
		chmod $(HELPMOD) $$files
	$(INSTALL_DATA)  $(HELPSOURCE)/*.pl $(DEST_HELP)
	chmod $(SCRIPTMOD) $(DEST_HELP)/*.pl
# install the menu files
	$(INSTALL_DATA) $(SCRIPTSOURCE)/menu.vim $(SYS_MENU_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_MENU_FILE)
	$(INSTALL_DATA) $(SCRIPTSOURCE)/synmenu.vim $(SYS_SYNMENU_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_SYNMENU_FILE)
	$(INSTALL_DATA) $(SCRIPTSOURCE)/delmenu.vim $(SYS_DELMENU_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_DELMENU_FILE)
# install the evim file
	$(INSTALL_DATA) $(SCRIPTSOURCE)/mswin.vim $(MSWIN_FILE)
	chmod $(VIMSCRIPTMOD) $(MSWIN_FILE)
	$(INSTALL_DATA) $(SCRIPTSOURCE)/evim.vim $(EVIM_FILE)
	chmod $(VIMSCRIPTMOD) $(EVIM_FILE)
# install the bugreport file
	$(INSTALL_DATA) $(SCRIPTSOURCE)/bugreport.vim $(SYS_BUGR_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_BUGR_FILE)
# install the example vimrc files
	$(INSTALL_DATA) $(SCRIPTSOURCE)/vimrc_example.vim $(DEST_SCRIPT)
	chmod $(VIMSCRIPTMOD) $(DEST_SCRIPT)/vimrc_example.vim
	$(INSTALL_DATA) $(SCRIPTSOURCE)/gvimrc_example.vim $(DEST_SCRIPT)
	chmod $(VIMSCRIPTMOD) $(DEST_SCRIPT)/gvimrc_example.vim
# install the file type detection files
	$(INSTALL_DATA) $(SCRIPTSOURCE)/filetype.vim $(SYS_FILETYPE_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_FILETYPE_FILE)
	$(INSTALL_DATA) $(SCRIPTSOURCE)/ftoff.vim $(SYS_FTOFF_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_FTOFF_FILE)
	$(INSTALL_DATA) $(SCRIPTSOURCE)/scripts.vim $(SYS_SCRIPTS_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_SCRIPTS_FILE)
	$(INSTALL_DATA) $(SCRIPTSOURCE)/ftplugin.vim $(SYS_FTPLUGIN_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_FTPLUGIN_FILE)
	$(INSTALL_DATA) $(SCRIPTSOURCE)/ftplugof.vim $(SYS_FTPLUGOF_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_FTPLUGOF_FILE)
	$(INSTALL_DATA) $(SCRIPTSOURCE)/indent.vim $(SYS_INDENT_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_INDENT_FILE)
	$(INSTALL_DATA) $(SCRIPTSOURCE)/indoff.vim $(SYS_INDOFF_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_INDOFF_FILE)
	$(INSTALL_DATA) $(SCRIPTSOURCE)/optwin.vim $(SYS_OPTWIN_FILE)
	chmod $(VIMSCRIPTMOD) $(SYS_OPTWIN_FILE)
# install the print resource files
	cd $(PRINTSOURCE); $(INSTALL_DATA) *.ps $(DEST_PRINT)
	cd $(DEST_PRINT); chmod $(FILEMOD) *.ps
# install the colorscheme files
	cd $(COLSOURCE); $(INSTALL_DATA) *.vim README.txt $(DEST_COL)
	cd $(DEST_COL); chmod $(HELPMOD) *.vim README.txt
# install the syntax files
	cd $(SYNSOURCE); $(INSTALL_DATA) *.vim README.txt $(DEST_SYN)
	cd $(DEST_SYN); chmod $(HELPMOD) *.vim README.txt
# install the indent files
	cd $(INDSOURCE); $(INSTALL_DATA) *.vim README.txt $(DEST_IND)
	cd $(DEST_IND); chmod $(HELPMOD) *.vim README.txt
# install the standard autoload files
	cd $(AUTOSOURCE); $(INSTALL_DATA) *.vim README.txt $(DEST_AUTO)
	cd $(DEST_AUTO); chmod $(HELPMOD) *.vim README.txt
	cd $(AUTOSOURCE)/xml; $(INSTALL_DATA) *.vim $(DEST_AUTO)/xml
	cd $(DEST_AUTO)/xml; chmod $(HELPMOD) *.vim
# install the standard plugin files
	cd $(PLUGSOURCE); $(INSTALL_DATA) *.vim README.txt $(DEST_PLUG)
	cd $(DEST_PLUG); chmod $(HELPMOD) *.vim README.txt
# install the ftplugin files
	cd $(FTPLUGSOURCE); $(INSTALL_DATA) *.vim README.txt logtalk.dict $(DEST_FTP)
	cd $(DEST_FTP); chmod $(HELPMOD) *.vim README.txt
# install the compiler files
	cd $(COMPSOURCE); $(INSTALL_DATA) *.vim README.txt $(DEST_COMP)
	cd $(DEST_COMP); chmod $(HELPMOD) *.vim README.txt

installmacros: $(DEST_VIM) $(DEST_RT) $(DEST_MACRO)
	$(INSTALL_DATA_R) $(MACROSOURCE)/* $(DEST_MACRO)
	chmod $(DIRMOD) `find $(DEST_MACRO) -type d -print`
	chmod $(FILEMOD) `find $(DEST_MACRO) -type f -print`
	chmod $(SCRIPTMOD) $(DEST_MACRO)/less.sh
# When using CVS some CVS directories might have been copied.
# Also delete AAPDIR and *.info files.
	cvs=`find $(DEST_MACRO) \( -name CVS -o -name AAPDIR -o -name "*.info" \) -print`; \
	      if test -n "$$cvs"; then \
		 rm -rf $$cvs; \
	      fi

# install the tutor files
installtutorbin: $(DEST_VIM)
	$(INSTALL_DATA) vimtutor $(DEST_BIN)/$(VIMNAME)tutor
	chmod $(SCRIPTMOD) $(DEST_BIN)/$(VIMNAME)tutor

installgtutorbin: $(DEST_VIM)
	$(INSTALL_DATA) gvimtutor $(DEST_BIN)/$(GVIMNAME)tutor
	chmod $(SCRIPTMOD) $(DEST_BIN)/$(GVIMNAME)tutor

installtutor: $(DEST_RT) $(DEST_TUTOR)
	-$(INSTALL_DATA) $(TUTORSOURCE)/README* $(TUTORSOURCE)/tutor* $(DEST_TUTOR)
	-rm -f $(DEST_TUTOR)/*.info
	chmod $(HELPMOD) $(DEST_TUTOR)/*

# Install the spell files, if they exist.  This assumes at least the English
# spell file is there.
installspell: $(DEST_VIM) $(DEST_RT) $(DEST_SPELL)
	if test -f $(SPELLSOURCE)/en.latin1.spl; then \
	  $(INSTALL_DATA) $(SPELLSOURCE)/*.spl $(SPELLSOURCE)/*.sug $(SPELLSOURCE)/*.vim $(DEST_SPELL); \
	  chmod $(HELPMOD) $(DEST_SPELL)/*.spl $(DEST_SPELL)/*.sug $(DEST_SPELL)/*.vim; \
	fi

# install helper program xxd
installtools: $(TOOLS) $(DESTDIR)$(exec_prefix) $(DEST_BIN) \
		$(TOOLSSOURCE) $(DEST_VIM) $(DEST_RT) $(DEST_TOOLS) \
		$(INSTALL_TOOL_LANGS)
	if test -f $(DEST_BIN)/xxd$(EXEEXT); then \
	  mv -f $(DEST_BIN)/xxd$(EXEEXT) $(DEST_BIN)/xxd.rm; \
	  rm -f $(DEST_BIN)/xxd.rm; \
	fi
	$(INSTALL_PROG) xxd/xxd$(EXEEXT) $(DEST_BIN)
	$(STRIP) $(DEST_BIN)/xxd$(EXEEXT)
	chmod $(BINMOD) $(DEST_BIN)/xxd$(EXEEXT)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN) "" $(INSTALLMANARGS)

# install the runtime tools
	$(INSTALL_DATA_R) $(TOOLSSOURCE)/* $(DEST_TOOLS)
# When using CVS some CVS directories might have been copied.
	cvs=`find $(DEST_TOOLS) \( -name CVS -o -name AAPDIR \) -print`; \
	      if test -n "$$cvs"; then \
		 rm -rf $$cvs; \
	      fi
	-chmod $(FILEMOD) $(DEST_TOOLS)/*
# replace the path in some tools
	perlpath=`./which.sh perl` && sed -e "s+/usr/bin/perl+$$perlpath+" $(TOOLSSOURCE)/efm_perl.pl >$(DEST_TOOLS)/efm_perl.pl
	awkpath=`./which.sh nawk` && sed -e "s+/usr/bin/nawk+$$awkpath+" $(TOOLSSOURCE)/mve.awk >$(DEST_TOOLS)/mve.awk; if test -z "$$awkpath"; then \
		awkpath=`./which.sh gawk` && sed -e "s+/usr/bin/nawk+$$awkpath+" $(TOOLSSOURCE)/mve.awk >$(DEST_TOOLS)/mve.awk; if test -z "$$awkpath"; then \
		awkpath=`./which.sh awk` && sed -e "s+/usr/bin/nawk+$$awkpath+" $(TOOLSSOURCE)/mve.awk >$(DEST_TOOLS)/mve.awk; fi; fi
	-chmod $(SCRIPTMOD) `grep -l "^#!" $(DEST_TOOLS)/*`

# install the language specific files for tools, if they were unpacked
install-tool-languages:
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_FR) "-fr" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_FR_I) "-fr" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_FR_U) "-fr.UTF-8" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_IT) "-it" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_IT_I) "-it" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_IT_U) "-it.UTF-8" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_JA_U) "-ja.UTF-8" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_PL) "-pl" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_PL_I) "-pl" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_PL_U) "-pl.UTF-8" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_RU) "-ru" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh xxd $(DEST_MAN_RU_U) "-ru.UTF-8" $(INSTALLMANARGS)

# install the language specific files, if they were unpacked
install-languages: languages $(DEST_LANG) $(DEST_KMAP)
	-$(SHELL) ./installman.sh install $(DEST_MAN_FR) "-fr" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_FR_I) "-fr" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_FR_U) "-fr.UTF-8" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_IT) "-it" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_IT_I) "-it" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_IT_U) "-it.UTF-8" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_JA_U) "-ja.UTF-8" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_PL) "-pl" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_PL_I) "-pl" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_PL_U) "-pl.UTF-8" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_RU) "-ru" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh install $(DEST_MAN_RU_U) "-ru.UTF-8" $(INSTALLMANARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_FR) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_FR_I) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_FR_U) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_IT) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_IT_I) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_IT_U) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_JA_U) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_PL) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_PL_I) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_PL_U) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_RU) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_RU_U) $(INSTALLMLARGS)
	if test -n "$(MAKEMO)" -a -f $(PODIR)/Makefile; then \
	   cd $(PODIR); $(MAKE) prefix=$(DESTDIR)$(prefix) LOCALEDIR=$(DEST_LANG) \
	   INSTALL_DATA=$(INSTALL_DATA) FILEMOD=$(FILEMOD) install; \
	fi
	if test -d $(LANGSOURCE); then \
	   $(INSTALL_DATA) $(LANGSOURCE)/README.txt $(LANGSOURCE)/*.vim $(DEST_LANG); \
	   chmod $(FILEMOD) $(DEST_LANG)/README.txt $(DEST_LANG)/*.vim; \
	fi
	if test -d $(KMAPSOURCE); then \
	   $(INSTALL_DATA) $(KMAPSOURCE)/README.txt $(KMAPSOURCE)/*.vim $(DEST_KMAP); \
	   chmod $(FILEMOD) $(DEST_KMAP)/README.txt $(DEST_KMAP)/*.vim; \
	fi

# install the icons for KDE, if the directory exists and the icon doesn't.
ICON48PATH = $(DESTDIR)$(DATADIR)/icons/hicolor/48x48/apps
ICON32PATH = $(DESTDIR)$(DATADIR)/icons/locolor/32x32/apps
ICON16PATH = $(DESTDIR)$(DATADIR)/icons/locolor/16x16/apps
KDEPATH = $(HOME)/.kde/share/icons
install-icons:
	if test -d $(ICON48PATH) -a -w $(ICON48PATH) \
		-a ! -f $(ICON48PATH)/gvim.png; then \
	   $(INSTALL_DATA) $(SCRIPTSOURCE)/vim48x48.png $(ICON48PATH)/gvim.png; \
	fi
	if test -d $(ICON32PATH) -a -w $(ICON32PATH) \
		-a ! -f $(ICON32PATH)/gvim.png; then \
	   $(INSTALL_DATA) $(SCRIPTSOURCE)/vim32x32.png $(ICON32PATH)/gvim.png; \
	fi
	if test -d $(ICON16PATH) -a -w $(ICON16PATH) \
		-a ! -f $(ICON16PATH)/gvim.png; then \
	   $(INSTALL_DATA) $(SCRIPTSOURCE)/vim16x16.png $(ICON16PATH)/gvim.png; \
	fi


$(HELPSOURCE)/vim.1 $(MACROSOURCE) $(TOOLSSOURCE):
	@echo Runtime files not found.
	@echo You need to unpack the runtime archive before running "make install".
	test -f error

$(DESTDIR)$(exec_prefix) $(DEST_BIN) \
		$(DEST_VIM) $(DEST_RT) $(DEST_HELP) \
		$(DEST_PRINT) $(DEST_COL) $(DEST_SYN) $(DEST_IND) $(DEST_FTP) \
		$(DEST_LANG) $(DEST_KMAP) $(DEST_COMP) \
		$(DEST_MACRO) $(DEST_TOOLS) $(DEST_TUTOR) $(DEST_SPELL) \
		$(DEST_AUTO) $(DEST_AUTO)/xml $(DEST_PLUG):
	-$(SHELL) ./mkinstalldirs $@
	-chmod $(DIRMOD) $@

# create links from various names to vim.  This is only done when the links
# (or executables with the same name) don't exist yet.
installlinks: $(GUI_TARGETS) \
			$(DEST_BIN)/$(EXTARGET) \
			$(DEST_BIN)/$(VIEWTARGET) \
			$(DEST_BIN)/$(RVIMTARGET) \
			$(DEST_BIN)/$(RVIEWTARGET) \
			$(INSTALLVIMDIFF)

installglinks: $(DEST_BIN)/$(GVIMTARGET) \
			$(DEST_BIN)/$(GVIEWTARGET) \
			$(DEST_BIN)/$(RGVIMTARGET) \
			$(DEST_BIN)/$(RGVIEWTARGET) \
			$(DEST_BIN)/$(EVIMTARGET) \
			$(DEST_BIN)/$(EVIEWTARGET) \
			$(INSTALLGVIMDIFF)

installvimdiff: $(DEST_BIN)/$(VIMDIFFTARGET)
installgvimdiff: $(DEST_BIN)/$(GVIMDIFFTARGET)

$(DEST_BIN)/$(EXTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(EXTARGET)

$(DEST_BIN)/$(VIEWTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(VIEWTARGET)

$(DEST_BIN)/$(GVIMTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(GVIMTARGET)

$(DEST_BIN)/$(GVIEWTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(GVIEWTARGET)

$(DEST_BIN)/$(RVIMTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(RVIMTARGET)

$(DEST_BIN)/$(RVIEWTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(RVIEWTARGET)

$(DEST_BIN)/$(RGVIMTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(RGVIMTARGET)

$(DEST_BIN)/$(RGVIEWTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(RGVIEWTARGET)

$(DEST_BIN)/$(VIMDIFFTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(VIMDIFFTARGET)

$(DEST_BIN)/$(GVIMDIFFTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(GVIMDIFFTARGET)

$(DEST_BIN)/$(EVIMTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(EVIMTARGET)

$(DEST_BIN)/$(EVIEWTARGET):
	cd $(DEST_BIN); ln -s $(VIMTARGET) $(EVIEWTARGET)

# Create links for the manual pages with various names to vim.	This is only
# done when the links (or manpages with the same name) don't exist yet.

INSTALLMLARGS = $(VIMNAME) $(VIMDIFFNAME) $(EVIMNAME) \
		$(EXNAME) $(VIEWNAME) $(RVIMNAME) $(RVIEWNAME) \
		$(GVIMNAME) $(GVIEWNAME) $(RGVIMNAME) $(RGVIEWNAME) \
		$(GVIMDIFFNAME) $(EVIEWNAME)

installmanlinks:
	-$(SHELL) ./installml.sh install "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN) $(INSTALLMLARGS)

uninstall: uninstall_runtime
	-rm -f $(DEST_BIN)/$(VIMTARGET)
	-rm -f $(DEST_BIN)/vimtutor
	-rm -f $(DEST_BIN)/gvimtutor
	-rm -f $(DEST_BIN)/$(EXTARGET) $(DEST_BIN)/$(VIEWTARGET)
	-rm -f $(DEST_BIN)/$(GVIMTARGET) $(DEST_BIN)/$(GVIEWTARGET)
	-rm -f $(DEST_BIN)/$(RVIMTARGET) $(DEST_BIN)/$(RVIEWTARGET)
	-rm -f $(DEST_BIN)/$(RGVIMTARGET) $(DEST_BIN)/$(RGVIEWTARGET)
	-rm -f $(DEST_BIN)/$(VIMDIFFTARGET) $(DEST_BIN)/$(GVIMDIFFTARGET)
	-rm -f $(DEST_BIN)/$(EVIMTARGET) $(DEST_BIN)/$(EVIEWTARGET)
	-rm -f $(DEST_BIN)/xxd$(EXEEXT)

# Note: the "rmdir" will fail if any files were added after "make install"
uninstall_runtime:
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_FR) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_FR_I) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_FR_U) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_IT) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_IT_I) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_IT_U) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_JA_U) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_PL) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_PL_I) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_PL_U) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_RU) "" $(INSTALLMANARGS)
	-$(SHELL) ./installman.sh uninstall $(DEST_MAN_RU_U) "" $(INSTALLMANARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_FR) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_FR_I) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_FR_U) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_IT) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_IT_I) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_IT_U) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_JA_U) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_PL) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_PL_I) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_PL_U) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_RU) $(INSTALLMLARGS)
	-$(SHELL) ./installml.sh uninstall "$(GUI_MAN_TARGETS)" \
		$(DEST_MAN_RU_U) $(INSTALLMLARGS)
	-rm -f $(DEST_MAN)/xxd.1
	-rm -f $(DEST_MAN_FR)/xxd.1 $(DEST_MAN_FR_I)/xxd.1 $(DEST_MAN_FR_U)/xxd.1
	-rm -f $(DEST_MAN_IT)/xxd.1 $(DEST_MAN_IT_I)/xxd.1 $(DEST_MAN_IT_U)/xxd.1
	-rm -f $(DEST_MAN_JA_U)/xxd.1
	-rm -f $(DEST_MAN_PL)/xxd.1 $(DEST_MAN_PL_I)/xxd.1 $(DEST_MAN_PL_U)/xxd.1
	-rm -f $(DEST_MAN_RU)/xxd.1 $(DEST_MAN_RU_U)/xxd.1
	-rm -f $(DEST_HELP)/*.txt $(DEST_HELP)/tags $(DEST_HELP)/*.pl
	-rm -f $(DEST_HELP)/*.??x $(DEST_HELP)/tags-??
	-rm -f $(SYS_MENU_FILE) $(SYS_SYNMENU_FILE) $(SYS_DELMENU_FILE)
	-rm -f $(SYS_BUGR_FILE) $(EVIM_FILE) $(MSWIN_FILE)
	-rm -f $(DEST_SCRIPT)/gvimrc_example.vim $(DEST_SCRIPT)/vimrc_example.vim
	-rm -f $(SYS_FILETYPE_FILE) $(SYS_FTOFF_FILE) $(SYS_SCRIPTS_FILE)
	-rm -f $(SYS_INDOFF_FILE) $(SYS_INDENT_FILE)
	-rm -f $(SYS_FTPLUGOF_FILE) $(SYS_FTPLUGIN_FILE)
	-rm -f $(SYS_OPTWIN_FILE)
	-rm -f $(DEST_COL)/*.vim $(DEST_COL)/README.txt
	-rm -f $(DEST_SYN)/*.vim $(DEST_SYN)/README.txt
	-rm -f $(DEST_IND)/*.vim $(DEST_IND)/README.txt
	-rm -rf $(DEST_MACRO)
	-rm -rf $(DEST_TUTOR)
	-rm -rf $(DEST_SPELL)
	-rm -rf $(DEST_TOOLS)
	-rm -rf $(DEST_LANG)
	-rm -rf $(DEST_KMAP)
	-rm -rf $(DEST_COMP)
	-rm -f $(DEST_PRINT)/*.ps
	-rmdir $(DEST_HELP) $(DEST_PRINT) $(DEST_COL) $(DEST_SYN) $(DEST_IND)
	-rm -rf $(DEST_FTP)/*.vim $(DEST_FTP)/README.txt $(DEST_FTP)/logtalk.dict
	-rm -f $(DEST_AUTO)/*.vim $(DEST_AUTO)/README.txt $(DEST_AUTO)/xml/*.vim
	-rm -f $(DEST_PLUG)/*.vim $(DEST_PLUG)/README.txt
	-rmdir $(DEST_FTP) $(DEST_AUTO)/xml $(DEST_AUTO) $(DEST_PLUG) $(DEST_RT)
#	This will fail when other Vim versions are installed, no worries.
	-rmdir $(DEST_VIM)

# Clean up all the files that have been produced, except configure's.
# We support common typing mistakes for Juergen! :-)
clean celan: testclean macvimclean
	-rm -f *.o objects/* core $(VIMTARGET).core $(VIMTARGET) vim xxd/*.o
	-rm -f $(TOOLS) auto/osdef.h auto/pathdef.c auto/if_perl.c
	-rm -f conftest* *~ auto/link.sed
	-rm -f $(UNITTEST_TARGETS)
	-rm -f runtime pixmaps
	-rm -rf $(APPDIR)
	-rm -rf mzscheme_base.c
	if test -d $(PODIR); then \
		cd $(PODIR); $(MAKE) prefix=$(DESTDIR)$(prefix) clean; \
	fi

# Make a shadow directory for compilation on another system or with different
# features.
SHADOWDIR = shadow

shadow:	runtime pixmaps
	mkdir $(SHADOWDIR)
	cd $(SHADOWDIR); ln -s ../*.[ch] ../*.in ../*.sh ../*.xs ../*.xbm ../toolcheck ../proto ../vimtutor ../gvimtutor ../mkinstalldirs .
	mkdir $(SHADOWDIR)/auto
	cd $(SHADOWDIR)/auto; ln -s ../../auto/configure .
	mkdir $(SHADOWDIR)/po
	cd $(SHADOWDIR)/po; ln -s ../../po/*.po ../../po/*.mak ../../po/*.vim ../../po/Makefile .
	cd $(SHADOWDIR); rm -f auto/link.sed
	cp Makefile configure $(SHADOWDIR)
	rm -f $(SHADOWDIR)/auto/config.mk $(SHADOWDIR)/config.mk.dist
	cp config.mk.dist $(SHADOWDIR)/auto/config.mk
	cp config.mk.dist $(SHADOWDIR)
	mkdir $(SHADOWDIR)/xxd
	cd $(SHADOWDIR)/xxd; ln -s ../../xxd/*.[ch] ../../xxd/Make* .
	if test -d $(RSRC_DIR); then \
		cd $(SHADOWDIR); \
		ln -s ../infplist.xml .; \
		ln -s ../$(RSRC_DIR) ../os_mac.rsr.hqx ../dehqx.py .; \
	fi
	mkdir $(SHADOWDIR)/testdir
	cd $(SHADOWDIR)/testdir; ln -s ../../testdir/Makefile \
				 ../../testdir/vimrc.unix \
				 ../../testdir/*.in \
				 ../../testdir/*.vim \
				 ../../testdir/python* \
				 ../../testdir/sautest \
				 ../../testdir/test83-tags? \
				 ../../testdir/*.ok .

# Link needed for doing "make install" in a shadow directory.
runtime:
	-ln -s ../runtime .

# Link needed for doing "make" using GTK in a shadow directory.
pixmaps:
	-ln -s ../pixmaps .

# Update the synmenu.vim file with the latest Syntax menu.
# This is only needed when runtime/makemenu.vim was changed.
menu: ./vim ../runtime/makemenu.vim
	./vim -u ../runtime/makemenu.vim

# Start configure from scratch
scrub scratch:
	-rm -f auto/config.status auto/config.cache config.log auto/config.log
	-rm -f auto/config.h auto/link.log auto/link.sed auto/config.mk
	touch auto/config.h
	cp config.mk.dist auto/config.mk

distclean: clean scratch
	-rm -f tags

dist: distclean
	@echo
	@echo Making the distribution has to be done in the top directory

mdepend:
	-@rm -f Makefile~
	cp Makefile Makefile~
	sed -e '/\#\#\# Dependencies/q' < Makefile > tmp_make
	@for i in $(ALL_SRC) ; do \
	  echo "$$i" ; \
	  echo `echo "$$i" | sed -e 's/[^ ]*\.c$$/objects\/\1.o/'`": $$i" `\
	    $(CPP) $$i |\
	    grep '^# .*"\./.*\.h"' |\
	    sort -t'"' -u +1 -2 |\
	    sed -e 's/.*"\.\/\(.*\)".*/\1/'\
	    ` >> tmp_make ; \
	done
	mv tmp_make Makefile

depend:
	-@rm -f Makefile~
	cp Makefile Makefile~
	sed -e '/\#\#\# Dependencies/q' < Makefile > tmp_make
	-for i in $(ALL_SRC); do echo $$i; \
		$(CPP_DEPEND) $$i | \
		sed -e 's+^\([^ ]*\.o\)+objects/\1+' >> tmp_make; done
	mv tmp_make Makefile

# Run lint.  Clean up the *.ln files that are sometimes left behind.
lint:
	$(LINT) $(LINT_OPTIONS) $(LINT_CFLAGS) $(LINT_EXTRA) $(LINT_SRC)
	-rm -f *.ln

# Check dosinst.c with lint.
lintinstall:
	$(LINT) $(LINT_OPTIONS) -DWIN32 -DUNIX_LINT dosinst.c
	-rm -f dosinst.ln

###########################################################################

.c.o:
	$(CCC) $<

auto/if_perl.c: if_perl.xs
	$(PERL) -e 'unless ( $$] >= 5.005 ) { for (qw(na defgv errgv)) { print "#define PL_$$_ $$_\n" }}' > $@
	-@if test -e $(PERLSITELIB)/ExtUtils/xsubpp; then \
		$(PERL) $(PERLSITELIB)/ExtUtils/xsubpp -prototypes -typemap \
			$(PERLLIB)/ExtUtils/typemap if_perl.xs >> $@; \
	else \
		$(PERL) $(PERLLIB)/ExtUtils/xsubpp -prototypes -typemap \
			$(PERLLIB)/ExtUtils/typemap if_perl.xs >> $@; \
	fi

auto/osdef.h: auto/config.h osdef.sh osdef1.h.in osdef2.h.in
	CC="$(CC) $(OSDEF_CFLAGS)" srcdir=$(srcdir) sh $(srcdir)/osdef.sh

auto/pathdef.c: Makefile auto/config.mk
	-@echo creating $@
	-@echo '/* pathdef.c */' > $@
	-@echo '/* This file is automatically created by Makefile' >> $@
	-@echo ' * DO NOT EDIT!  Change Makefile only. */' >> $@
	-@echo '#include "vim.h"' >> $@
	-@echo 'char_u *default_vim_dir = (char_u *)"$(VIMRCLOC)";' | $(QUOTESED) >> $@
	-@echo 'char_u *default_vimruntime_dir = (char_u *)"$(VIMRUNTIMEDIR)";' | $(QUOTESED) >> $@
	-@echo 'char_u *all_cflags = (char_u *)"$(CC) -c -I$(srcdir) $(ALL_CFLAGS)";' | $(QUOTESED) >>  $@
	-@echo 'char_u *all_lflags = (char_u *)"$(CC) $(ALL_LIB_DIRS) $(LDFLAGS) -o $(VIMTARGET) $(ALL_LIBS) ";' | $(QUOTESED) >>  $@
	-@echo 'char_u *compiled_user = (char_u *)"' | tr -d $(NL) >> $@
	-@if test -n "$(COMPILEDBY)"; then \
		echo "$(COMPILEDBY)" | tr -d $(NL) >> $@; \
		else ((logname) 2>/dev/null || whoami) | tr -d $(NL) >> $@; fi
	-@echo '";' >> $@
	-@echo 'char_u *compiled_sys = (char_u *)"' | tr -d $(NL) >> $@
	-@if test -z "$(COMPILEDBY)"; then hostname | tr -d $(NL) >> $@; fi
	-@echo '";' >> $@
	-@sh $(srcdir)/pathdef.sh

# All the object files are put in the "objects" directory.  Since not all make
# commands understand putting object files in another directory, it must be
# specified for each file separately.

objects:
	mkdir objects

objects/MMBackend.o: MacVim/MMBackend.m
	$(CCC) -fobjc-exceptions -o $@ MacVim/MMBackend.m

objects/MacVim.o: MacVim/MacVim.m
	$(CCC) -o $@ MacVim/MacVim.m

objects/blowfish.o: blowfish.c
	$(CCC) -o $@ blowfish.c

objects/buffer.o: buffer.c
	$(CCC) -o $@ buffer.c

objects/charset.o: charset.c
	$(CCC) -o $@ charset.c

objects/crypt.o: crypt.c
	$(CCC) -o $@ crypt.c

objects/crypt_zip.o: crypt_zip.c
	$(CCC) -o $@ crypt_zip.c

objects/diff.o: diff.c
	$(CCC) -o $@ diff.c

objects/digraph.o: digraph.c
	$(CCC) -o $@ digraph.c

objects/edit.o: edit.c
	$(CCC) -o $@ edit.c

objects/eval.o: eval.c
	$(CCC) -o $@ eval.c

objects/ex_cmds.o: ex_cmds.c
	$(CCC) -o $@ ex_cmds.c

objects/ex_cmds2.o: ex_cmds2.c
	$(CCC) -o $@ ex_cmds2.c

objects/ex_docmd.o: ex_docmd.c
	$(CCC) -o $@ ex_docmd.c

objects/ex_eval.o: ex_eval.c
	$(CCC) -o $@ ex_eval.c

objects/ex_getln.o: ex_getln.c
	$(CCC) -o $@ ex_getln.c

objects/fileio.o: fileio.c
	$(CCC) -o $@ fileio.c

objects/fold.o: fold.c
	$(CCC) -o $@ fold.c

objects/getchar.o: getchar.c
	$(CCC) -o $@ getchar.c

objects/hardcopy.o: hardcopy.c
	$(CCC) -o $@ hardcopy.c

objects/hashtab.o: hashtab.c
	$(CCC) -o $@ hashtab.c

objects/gui.o: gui.c
	$(CCC) -o $@ gui.c

objects/gui_at_fs.o: gui_at_fs.c
	$(CCC) -o $@ gui_at_fs.c

objects/gui_at_sb.o: gui_at_sb.c
	$(CCC) -o $@ gui_at_sb.c

objects/gui_athena.o: gui_athena.c
	$(CCC) -o $@ gui_athena.c

objects/gui_beval.o: gui_beval.c
	$(CCC) -o $@ gui_beval.c

objects/gui_gtk.o: gui_gtk.c
	$(CCC) -o $@ gui_gtk.c

objects/gui_gtk_f.o: gui_gtk_f.c
	$(CCC) -o $@ gui_gtk_f.c

objects/gui_gtk_x11.o: gui_gtk_x11.c
	$(CCC) -o $@ gui_gtk_x11.c

objects/gui_motif.o: gui_motif.c
	$(CCC) -o $@ gui_motif.c

objects/gui_xmdlg.o: gui_xmdlg.c
	$(CCC) -o $@ gui_xmdlg.c

objects/gui_xmebw.o: gui_xmebw.c
	$(CCC) -o $@ gui_xmebw.c

objects/gui_x11.o: gui_x11.c
	$(CCC) -o $@ gui_x11.c

objects/gui_photon.o: gui_photon.c
	$(CCC) -o $@ gui_photon.c

objects/gui_mac.o: gui_mac.c
	$(CCC) -o $@ gui_mac.c

objects/gui_macvim.o: MacVim/gui_macvim.m
	$(CCC) -fobjc-exceptions -o $@ MacVim/gui_macvim.m

objects/hangulin.o: hangulin.c
	$(CCC) -o $@ hangulin.c

objects/if_cscope.o: if_cscope.c
	$(CCC) -o $@ if_cscope.c

objects/if_xcmdsrv.o: if_xcmdsrv.c
	$(CCC) -o $@ if_xcmdsrv.c

objects/if_lua.o: if_lua.c
	$(CCC) $(LUA_CFLAGS) -o $@ if_lua.c

objects/if_mzsch.o: if_mzsch.c $(MZSCHEME_EXTRA)
	$(CCC) -o $@ $(MZSCHEME_CFLAGS_EXTRA) if_mzsch.c
 
mzscheme_base.c:
	$(MZSCHEME_MZC) --c-mods mzscheme_base.c ++lib scheme/base

objects/if_perl.o: auto/if_perl.c
	$(CCC) $(PERL_CFLAGS) -o $@ auto/if_perl.c

objects/if_perlsfio.o: if_perlsfio.c
	$(CCC) $(PERL_CFLAGS) -o $@ if_perlsfio.c

objects/py_getpath.o: $(PYTHON_CONFDIR)/getpath.c
	$(CCC) $(PYTHON_CFLAGS) -o $@ $(PYTHON_CONFDIR)/getpath.c \
		-I$(PYTHON_CONFDIR) -DHAVE_CONFIG_H -DNO_MAIN \
		$(PYTHON_GETPATH_CFLAGS)

objects/if_python.o: if_python.c if_py_both.h
	$(CCC) $(PYTHON_CFLAGS) $(PYTHON_CFLAGS_EXTRA) -o $@ if_python.c

objects/if_python3.o: if_python3.c if_py_both.h
	$(CCC) $(PYTHON3_CFLAGS) $(PYTHON3_CFLAGS_EXTRA) -o $@ if_python3.c

objects/if_ruby.o: if_ruby.c
	$(CCC) $(RUBY_CFLAGS) -o $@ if_ruby.c

objects/if_sniff.o: if_sniff.c
	$(CCC) -o $@ if_sniff.c

objects/if_tcl.o: if_tcl.c
	$(CCC) -o $@ if_tcl.c

objects/integration.o: integration.c
	$(CCC) -o $@ integration.c

objects/main.o: main.c
	$(CCC) -o $@ main.c

objects/mark.o: mark.c
	$(CCC) -o $@ mark.c

objects/memfile.o: memfile.c
	$(CCC) -o $@ memfile.c

objects/memfile_test.o: memfile_test.c
	$(CCC) -o $@ memfile_test.c

objects/memline.o: memline.c
	$(CCC) -o $@ memline.c

objects/menu.o: menu.c
	$(CCC) -o $@ menu.c

objects/message.o: message.c
	$(CCC) -o $@ message.c

objects/misc1.o: misc1.c
	$(CCC) -o $@ misc1.c

objects/misc2.o: misc2.c
	$(CCC) -o $@ misc2.c

objects/move.o: move.c
	$(CCC) -o $@ move.c

objects/mbyte.o: mbyte.c
	$(CCC) -o $@ mbyte.c

objects/normal.o: normal.c
	$(CCC) -o $@ normal.c

objects/ops.o: ops.c
	$(CCC) -o $@ ops.c

objects/option.o: option.c
	$(CCC) -o $@ option.c

objects/os_beos.o: os_beos.c
	$(CCC) -o $@ os_beos.c

objects/os_qnx.o: os_qnx.c
	$(CCC) -o $@ os_qnx.c

objects/os_macosx.o: os_macosx.m
	$(CCC) -o $@ os_macosx.m

objects/os_mac_conv.o: os_mac_conv.c
	$(CCC) -o $@ os_mac_conv.c

objects/os_unix.o: os_unix.c
	$(CCC) -o $@ os_unix.c

objects/os_mswin.o: os_mswin.c
	$(CCC) -o $@ os_mswin.c

objects/winclip.o: winclip.c
	$(CCC) -o $@ winclip.c

objects/pathdef.o: auto/pathdef.c
	$(CCC) -o $@ auto/pathdef.c

objects/pty.o: pty.c
	$(CCC) -o $@ pty.c

objects/popupmnu.o: popupmnu.c
	$(CCC) -o $@ popupmnu.c

objects/quickfix.o: quickfix.c
	$(CCC) -o $@ quickfix.c

objects/regexp.o: regexp.c regexp_nfa.c
	$(CCC) -o $@ regexp.c

objects/screen.o: screen.c
	$(CCC) -o $@ screen.c

objects/search.o: search.c
	$(CCC) -o $@ search.c

objects/sha256.o: sha256.c
	$(CCC) -o $@ sha256.c

objects/spell.o: spell.c
	$(CCC) -o $@ spell.c

objects/syntax.o: syntax.c
	$(CCC) -o $@ syntax.c

objects/tag.o: tag.c
	$(CCC) -o $@ tag.c

objects/term.o: term.c
	$(CCC) -o $@ term.c

objects/ui.o: ui.c
	$(CCC) -o $@ ui.c

objects/undo.o: undo.c
	$(CCC) -o $@ undo.c

objects/window.o: window.c
	$(CCC) -o $@ window.c

objects/workshop.o: workshop.c
	$(CCC) -o $@ workshop.c

objects/wsdebug.o: wsdebug.c
	$(CCC) -o $@ wsdebug.c

objects/netbeans.o: netbeans.c
	$(CCC) -o $@ netbeans.c

Makefile:
	@echo The name of the makefile MUST be "Makefile" (with capital M)!!!!

###############################################################################
### MacOS X installation
###
### This installs a runnable Vim.app in $(prefix)

REZ    = /Developer/Tools/Rez
RESDIR = $(APPDIR)/Contents/Resources
VERSION = $(VIMMAJOR).$(VIMMINOR)

### Common flags
M4FLAGSX = $(M4FLAGS) -DAPP_EXE=$(VIMNAME) -DAPP_NAME=$(VIMNAME) \
		-DAPP_VER=$(VERSION)

install_macosx: gui_bundle
	-rm $(RESDIR)/vim/runtime
	$(INSTALL_DATA_R) $(APPDIR) $(DESTDIR)$(prefix)
	-@srcdir=`pwd`; cd $(HELPSOURCE); $(MAKE) VIMEXE=$$srcdir/$(VIMTARGET) vimtags
	-mkdir -p $(DESTDIR)$(prefix)/$(RESDIR)/vim/runtime
	srcdir=`pwd`; $(MAKE) -f Makefile installruntime \
		VIMEXE=$$srcdir/$(VIMTARGET) \
		prefix=$(DESTDIR)$(prefix)/$(RESDIR)$(VIMDIR) \
		exec_prefix=$(DESTDIR)$(prefix)/$(APPDIR)/Contents \
		BINDIR=$(DESTDIR)$(prefix)/$(APPDIR)/Contents/MacOS \
		VIMLOC=$(DESTDIR)$(prefix)/$(RESDIR)$(VIMDIR) \
		VIMRTLOC=$(DESTDIR)$(prefix)/$(RESDIR)$(VIMDIR)/runtime
	ln -s `pwd`/../runtime $(RESDIR)/vim
	$(INSTALL_DATA) $(SCRIPTSOURCE)/rgb.txt $(DESTDIR)$(prefix)/$(RESDIR)/vim/runtime

gui_bundle: $(RESDIR) bundle-dir bundle-executable bundle-info bundle-resource \
	bundle-language

$(RESDIR):
	mkdir -p $@

bundle-dir: $(APPDIR)/Contents $(VIMTARGET)
	mkdir -p $(RESDIR)/vim
	-ln -s `pwd`/../runtime $(RESDIR)/vim

bundle-executable: $(VIMTARGET)
	mkdir -p $(APPDIR)/Contents/MacOS
	cp $(VIMTARGET) $(APPDIR)/Contents/MacOS/$(VIMTARGET)

bundle-info:  bundle-dir
	@echo "Creating PkgInfo"
	@echo -n "APPLVIM!" > $(APPDIR)/Contents/PkgInfo
	@echo "Creating Info.plist"
	m4 $(M4FLAGSX) infplist.xml > $(APPDIR)/Contents/Info.plist

bundle-resource: bundle-dir bundle-rsrc
	cp -f $(RSRC_DIR)/*.icns $(RESDIR)

### Classic resources
# Resource fork (in the form of a .rsrc file) for Classic Vim (Mac OS 9)
# This file is also required for OS X Vim.
bundle-rsrc: os_mac.rsr.hqx
	@echo "Creating resource fork"
	python dehqx.py $<
	rm -f gui_mac.rsrc
	mv gui_mac.rsrc.rsrcfork $(RESDIR)/$(VIMNAME).rsrc

bundle-language: bundle-dir

$(APPDIR)/Contents:
	-$(SHELL) ./mkinstalldirs $(APPDIR)/Contents/MacOS
	-$(SHELL) ./mkinstalldirs $(RESDIR)/English.lproj


##############################################################################
### MacVim GUI
.PHONY: macvim macvimclean
macvim: $(VIMTARGET)
	xcodebuild -project MacVim/MacVim.xcodeproj $(XCODEFLAGS)

macvimclean:
	if test -d MacVim; then \
		xcodebuild -project MacVim/MacVim.xcodeproj clean; \
	fi


###############################################################################
### Dependencies:
objects/blowfish.o: blowfish.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/buffer.o: buffer.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h version.h
objects/charset.o: charset.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/crypt.o: crypt.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/crypt_zip.o: crypt_zip.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/diff.o: diff.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/digraph.o: digraph.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/edit.o: edit.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/eval.o: eval.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h version.h
objects/ex_cmds.o: ex_cmds.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h version.h
objects/ex_cmds2.o: ex_cmds2.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h version.h
objects/ex_docmd.o: ex_docmd.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/ex_eval.o: ex_eval.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/ex_getln.o: ex_getln.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/fileio.o: fileio.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/fold.o: fold.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/getchar.o: getchar.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/hardcopy.o: hardcopy.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h version.h
objects/hashtab.o: hashtab.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/if_cscope.o: if_cscope.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h if_cscope.h
objects/if_xcmdsrv.o: if_xcmdsrv.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h version.h
objects/main.o: main.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h farsi.c arabic.c
objects/mark.o: mark.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/memfile.o: memfile.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/memline.o: memline.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/menu.o: menu.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/message.o: message.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/misc1.o: misc1.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h version.h
objects/misc2.o: misc2.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/move.o: move.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/mbyte.o: mbyte.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/normal.o: normal.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/ops.o: ops.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h ascii.h \
 keymap.h term.h macros.h option.h structs.h regexp.h gui.h gui_beval.h \
 proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h arabic.h
objects/option.o: option.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/os_unix.o: os_unix.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h if_mzsch.h os_unixx.h
objects/pathdef.o: auto/pathdef.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/popupmnu.o: popupmnu.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/quickfix.o: quickfix.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/regexp.o: regexp.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h regexp_nfa.c
objects/screen.o: screen.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/search.o: search.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/sha256.o: sha256.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/spell.o: spell.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/syntax.o: syntax.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/tag.o: tag.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h ascii.h \
 keymap.h term.h macros.h option.h structs.h regexp.h gui.h gui_beval.h \
 proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h arabic.h
objects/term.o: term.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/ui.o: ui.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h ascii.h \
 keymap.h term.h macros.h option.h structs.h regexp.h gui.h gui_beval.h \
 proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h arabic.h
objects/undo.o: undo.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/version.o: version.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h version.h
objects/window.o: window.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/gui.o: gui.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h ascii.h \
 keymap.h term.h macros.h option.h structs.h regexp.h gui.h gui_beval.h \
 proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h arabic.h
objects/gui_gtk.o: gui_gtk.c gui_gtk_f.h vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h ../pixmaps/stock_icons.h
objects/gui_gtk_f.o: gui_gtk_f.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h gui_gtk_f.h
objects/gui_motif.o: gui_motif.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h gui_xmebw.h ../pixmaps/alert.xpm \
 ../pixmaps/error.xpm ../pixmaps/generic.xpm ../pixmaps/info.xpm \
 ../pixmaps/quest.xpm gui_x11_pm.h ../pixmaps/tb_new.xpm \
 ../pixmaps/tb_open.xpm ../pixmaps/tb_close.xpm ../pixmaps/tb_save.xpm \
 ../pixmaps/tb_print.xpm ../pixmaps/tb_cut.xpm ../pixmaps/tb_copy.xpm \
 ../pixmaps/tb_paste.xpm ../pixmaps/tb_find.xpm \
 ../pixmaps/tb_find_next.xpm ../pixmaps/tb_find_prev.xpm \
 ../pixmaps/tb_find_help.xpm ../pixmaps/tb_exit.xpm \
 ../pixmaps/tb_undo.xpm ../pixmaps/tb_redo.xpm ../pixmaps/tb_help.xpm \
 ../pixmaps/tb_macro.xpm ../pixmaps/tb_make.xpm \
 ../pixmaps/tb_save_all.xpm ../pixmaps/tb_jump.xpm \
 ../pixmaps/tb_ctags.xpm ../pixmaps/tb_load_session.xpm \
 ../pixmaps/tb_save_session.xpm ../pixmaps/tb_new_session.xpm \
 ../pixmaps/tb_blank.xpm ../pixmaps/tb_maximize.xpm \
 ../pixmaps/tb_split.xpm ../pixmaps/tb_minimize.xpm \
 ../pixmaps/tb_shell.xpm ../pixmaps/tb_replace.xpm \
 ../pixmaps/tb_vsplit.xpm ../pixmaps/tb_maxwidth.xpm \
 ../pixmaps/tb_minwidth.xpm
objects/gui_xmdlg.o: gui_xmdlg.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/gui_xmebw.o: gui_xmebw.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h gui_xmebwp.h gui_xmebw.h
objects/gui_athena.o: gui_athena.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h gui_at_sb.h gui_x11_pm.h \
 ../pixmaps/tb_new.xpm ../pixmaps/tb_open.xpm ../pixmaps/tb_close.xpm \
 ../pixmaps/tb_save.xpm ../pixmaps/tb_print.xpm ../pixmaps/tb_cut.xpm \
 ../pixmaps/tb_copy.xpm ../pixmaps/tb_paste.xpm ../pixmaps/tb_find.xpm \
 ../pixmaps/tb_find_next.xpm ../pixmaps/tb_find_prev.xpm \
 ../pixmaps/tb_find_help.xpm ../pixmaps/tb_exit.xpm \
 ../pixmaps/tb_undo.xpm ../pixmaps/tb_redo.xpm ../pixmaps/tb_help.xpm \
 ../pixmaps/tb_macro.xpm ../pixmaps/tb_make.xpm \
 ../pixmaps/tb_save_all.xpm ../pixmaps/tb_jump.xpm \
 ../pixmaps/tb_ctags.xpm ../pixmaps/tb_load_session.xpm \
 ../pixmaps/tb_save_session.xpm ../pixmaps/tb_new_session.xpm \
 ../pixmaps/tb_blank.xpm ../pixmaps/tb_maximize.xpm \
 ../pixmaps/tb_split.xpm ../pixmaps/tb_minimize.xpm \
 ../pixmaps/tb_shell.xpm ../pixmaps/tb_replace.xpm \
 ../pixmaps/tb_vsplit.xpm ../pixmaps/tb_maxwidth.xpm \
 ../pixmaps/tb_minwidth.xpm
objects/gui_gtk_x11.o: gui_gtk_x11.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h gui_gtk_f.h ../runtime/vim32x32.xpm \
 ../runtime/vim16x16.xpm ../runtime/vim48x48.xpm
objects/gui_x11.o: gui_x11.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h ../runtime/vim32x32.xpm ../runtime/vim16x16.xpm \
 ../runtime/vim48x48.xpm
objects/gui_at_sb.o: gui_at_sb.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h gui_at_sb.h
objects/gui_at_fs.o: gui_at_fs.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h gui_at_sb.h
objects/pty.o: pty.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h ascii.h \
 keymap.h term.h macros.h option.h structs.h regexp.h gui.h gui_beval.h \
 proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h arabic.h
objects/memfile_test.o: memfile_test.c main.c vim.h auto/config.h feature.h \
 os_unix.h auto/osdef.h ascii.h keymap.h term.h macros.h option.h \
 structs.h regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h \
 proto.h globals.h farsi.h arabic.h farsi.c arabic.c memfile.c
objects/hangulin.o: hangulin.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/if_lua.o: if_lua.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/if_mzsch.o: if_mzsch.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h if_mzsch.h mzscheme_base.c
objects/if_perl.o: auto/if_perl.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/if_perlsfio.o: if_perlsfio.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/if_python.o: if_python.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h if_py_both.h
objects/if_python3.o: if_python3.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h if_py_both.h
objects/if_tcl.o: if_tcl.c vim.h auto/config.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h
objects/if_ruby.o: if_ruby.c auto/config.h vim.h feature.h os_unix.h auto/osdef.h \
 ascii.h keymap.h term.h macros.h option.h structs.h regexp.h gui.h \
 gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h globals.h farsi.h \
 arabic.h version.h
objects/if_sniff.o: if_sniff.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h os_unixx.h
objects/gui_beval.o: gui_beval.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h
objects/workshop.o: workshop.c auto/config.h integration.h vim.h feature.h \
 os_unix.h auto/osdef.h ascii.h keymap.h term.h macros.h option.h \
 structs.h regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h \
 proto.h globals.h farsi.h arabic.h version.h workshop.h
objects/wsdebug.o: wsdebug.c
objects/integration.o: integration.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h integration.h
objects/netbeans.o: netbeans.c vim.h auto/config.h feature.h os_unix.h \
 auto/osdef.h ascii.h keymap.h term.h macros.h option.h structs.h \
 regexp.h gui.h gui_beval.h proto/gui_beval.pro ex_cmds.h proto.h \
 globals.h farsi.h arabic.h version.h
