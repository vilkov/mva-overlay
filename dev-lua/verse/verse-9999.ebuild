# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit multilib toolchain-funcs flag-o-matic mercurial eutils

DESCRIPTION="XMPP client library written in Lua."
HOMEPAGE="http://code.mathewwild.co.uk/"
EHG_REPO_URI="http://code.matthewwild.co.uk/verse/"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-lang/lua-5.1
	dev-lua/squish
	dev-lua/luasocket"
DEPEND="${RDEPEND}"

src_compile() {
squish --use-http
}

src_install() {
	insinto $(pkg-config --variable INSTALL_LMOD lua)
	doins verse.lua || die
	dodoc doc/* || die
}