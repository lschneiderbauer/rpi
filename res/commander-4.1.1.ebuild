# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_TASK_DOC=""

inherit ruby-fakegem

DESCRIPTION="The complete solution for Ruby command-line executables"
HOMEPAGE="http://visionmedia.github.com/commander/"

GITHUB_USER="visionmedia"
SRC_URI="https://github.com/${GITHUB_USER}/${PN}/tarball/v${PV} -> ${P}.tgz"
RUBY_S="${GITHUB_USER}-${PN}-*"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

#IUSE="${IUSE} gnuplot"

RDEPEND="${RDEPEND} >=dev-ruby/highline-1.6.11"

all_ruby_install() {

	ruby_fakegem_binwrapper commander || die
}
