TERMUX_PKG_HOMEPAGE=https://github.com/mtoyoda/sl
TERMUX_PKG_DESCRIPTION="Tool curing your bad habit of mistyping"
TERMUX_PKG_VERSION=5.02
TERMUX_PKG_SRCURL=https://github.com/mtoyoda/sl/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_DEPENDS="ncurses"
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_FOLDERNAME=sl-${TERMUX_PKG_VERSION}

termux_step_make_install () {
	install sl $TERMUX_PREFIX/bin/
	cp sl.1 $TERMUX_PREFIX/share/man/man1
}
