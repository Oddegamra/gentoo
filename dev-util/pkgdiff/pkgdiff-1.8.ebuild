# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Package Changes Analyzer (pkgdiff)"
HOMEPAGE="https://github.com/lvc/pkgdiff"
SRC_URI="https://github.com/lvc/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=">=dev-lang/perl-5"
RDEPEND="${DEPEND}
	app-text/wdiff
	dev-perl/File-LibMagic
	sys-apps/diffutils
	sys-apps/gawk
	sys-devel/binutils
"

src_compile() {
	:
}

PREFIX="/usr"

src_install() {
	dodir ${PREFIX}
	perl Makefile.pl -install --destdir "${ED}" || die "install failed"
}
