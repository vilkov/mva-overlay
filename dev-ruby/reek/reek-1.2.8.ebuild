# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: This ebuild is from mva overlay $

EAPI="4"
USE_RUBY="ruby18"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="History.txt README.md"

RUBY_FAKEGEM_TASK_TEST="spec features"

#RUBY_FAKEGEM_EXTRAINSTALL="config"

inherit ruby-fakegem

DESCRIPTION="A tool that examines Ruby classes, modules and methods and reports any code smells it finds."
HOMEPAGE="http://wiki.github.com/kevinrutherford/reek/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-macos"
IUSE=""

ruby_add_rdepend "=dev-ruby/ruby_parser-2.0* =dev-ruby/ruby2ruby-1.2* =dev-ruby/sexp-processor-3.0*"
