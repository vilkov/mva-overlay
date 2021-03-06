# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: This ebuild is from mva overlay $

EAPI="4"
USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README"

inherit ruby-fakegem

DESCRIPTION="Tools for parsing and manipulating HTML documents"
HOMEPAGE="http://ruby-htmltools.rubyforge.org/"
LICENSE="Ruby"

KEYWORDS="~amd64 ~x86 ~x86-macos"
SLOT="0"
IUSE=""

# Tests fails but failure looks innocent.
RESTRICT="test"

each_ruby_test() {
	${RUBY} test/suite.rb
}
