# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="WebDriver for Firefox"
HOMEPAGE="https://github.com/mozilla/geckodriver"
SRC_URI="amd64? ( https://github.com/mozilla/geckodriver/releases/download/v${PV}/geckodriver-v${PV}-linux64.tar.gz -> ${P}.linux64.tar.gz )
	x86? ( https://github.com/mozilla/geckodriver/releases/download/v${PV}/geckodriver-v${PV}-linux32.tar.gz -> ${P}.linux32.tar.gz )"

LICENSE="MPL-2.0 GPL-2 LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Disabled due to QA issues created by unstable firefox in arch
#RDEPEND="www-client/firefox"

S="${WORKDIR}"
QA_PREBUILT="usr/bin/geckodriver"

src_install()
{
	dobin geckodriver
}
