# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: This ebuild is from mva overlay $

EAPI="4"

USE_RUBY="ruby18"

RUBY_FAKEGEM_TASK_DOC=""
# Tests require configuration file in user's home directory.
RUBY_FAKEGEM_TASK_TEST=""
RUBY_FAKEGEM_EXTRADOC="CHANGELOG README"

inherit ruby-fakegem

DESCRIPTION="Jabber::Simple - An extremely easy-to-use Jabber client library."
HOMEPAGE="http://xmpp4r-simple.rubyforge.org/"
LICENSE="GPL-2"

KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

ruby_add_rdepend ">=dev-ruby/xmpp4r-0.3.2"
