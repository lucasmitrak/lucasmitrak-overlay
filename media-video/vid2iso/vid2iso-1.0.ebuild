# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Converts a single video file to a burnable iso for playing in a dvd player"
HOMEPAGE="https://github.com/lucasmitrak/vid2iso"
SRC_URI="https://github.com/lucasmitrak/vid2iso/archive/$PV.tar.gz -> $P.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}
app-cdr/cdrtools
app-cdr/dvd+rw-tools
media-video/dvdauthor
media-video/ffmpeg
"
BDEPEND=""

src_install() {
	dobin vid2iso
}
