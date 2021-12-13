# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="A cli to browse and watch anime"
HOMEPAGE="https://github.com/pystardust/ani-cli"
EGIT_REPO_URI="https://github.com/pystardust/ani-cli.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}
	net-misc/curl
	media-video/mpv
	media-video/ffmpeg
"
BDEPEND=""

src_prepare(){
	# delete Makefile otherwise it will install during compile phase
	rm Makefile || die
	default
}

src_install(){
	dobin ani-cli
	dodoc README.md
}
