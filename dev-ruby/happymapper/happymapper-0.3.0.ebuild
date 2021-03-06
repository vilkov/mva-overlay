# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: This ebuild is from mva overlay $

EAPI="4"
USE_RUBY="ruby18"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="History README TODO"

RUBY_FAKEGEM_TASK_TEST="spec"

inherit ruby-fakegem

DESCRIPTION="Object to xml mapping library."
HOMEPAGE="http://github.com/jnunemaker/happymapper/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_bdepend test "dev-ruby/echoe dev-ruby/rspec"

#Gem happymapper-0.3.0
#  libxml-ruby (= 1.1.3, runtime)
