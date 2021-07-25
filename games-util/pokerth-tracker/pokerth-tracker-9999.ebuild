# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop qmake-utils xdg

DESCRIPTION="A simple poker statistics program to analyse your opponents' behaviour"
HOMEPAGE="https://github.com/Pik-9/PokerTH-Tracker"
if [[ ${PV} == 9999 ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/Pik-9/PokerTH-Tracker.git"
	S="${WORKDIR}/${P}"
else
	SRC_URI="https://github.com/Pik-9/PokerTH-Tracker/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
	S="${WORKDIR}/PokerTH-Tracker-${PV}"
fi

LICENSE="GPL-3+"
SLOT="0"

DEPEND="dev-qt/qtcore:5
dev-qt/qtwidgets:5
dev-qt/qtxml:5
dev-qt/qtsql:5
dev-qt/qttranslations:5"

RDEPEND="${DEPEND}
games-board/pokerth"

PATCHES=(
	"${FILESDIR}"/${PN}-disable_find_git.patch
	"${FILESDIR}"/${PN}-desktop_icon_path.patch
	)

src_prepare() {
	sed -e "s/@GIT_COMMIT@/${PV}/g" misc/version.hpp.in > version.hpp
	default
}

src_configure() {
	eqmake5 PokerTH_tracker.pro
}

src_install() {
	dobin PokerTH_tracker
	dodoc README.md
	domenu PokerTH_tracker.desktop
	doicon -s 48 Icons/*
}
