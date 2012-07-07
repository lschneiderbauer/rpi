def text_ebuild(projectname, options)
%Q{# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# # # $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_TASK_DOC=""

inherit ruby-fakegem

DESCRIPTION="#{options.description}"
#HOMEPAGE="HOMEPAGE"

GITHUB_USER="GITHUBUSER"
SRC_URI="https://github.com/${GITHUB_USER}/${PN}/tarball/r${PV} -> ${P}.tgz"
RUBY_S="${GITHUB_USER}-${PN}-*"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="${RDEPEND} >=dev-ruby/commander-4.1.1"

all_ruby_install() {
	ruby_fakegem_binwrapper #{projectname} || die
}
}
end
