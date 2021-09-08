# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_8 )
#inherit distutils-r1

DESCRIPTION="A scraper that outputs information regarding the saint of the day"
HOMEPAGE="https://github.com/lucasmitrak/dailysaints"
SRC_URI="https://github.com/lucasmitrak/dailysaints/archive/$PV.tar.gz -> $P.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}
	dev-python/requests
	dev-python/beautifulsoup4
"
BDEPEND=""

src_install() {
	dobin dailysaints.py
}
