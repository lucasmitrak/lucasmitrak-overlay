# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CMAKE_MAKEFILE_GENERATOR="emake"
inherit cmake

DESCRIPTION="PokerStove is a highly hand optimized C++ poker hand evaluation library."
HOMEPAGE="https://github.com/andrewprock/pokerstove"

if [[ ${PV} == 9999 ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/andrewprock/pokerstove.git"
else
	SRC_URI="https://github.com/andrewprock/pokerstove/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="BSD"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

DEPEND="
	dev-libs/boost
	>=dev-util/cmake-3.14
	dev-cpp/gtest
"
PATCHES=(
	"${FILESDIR}/remove_find_gtest.patch"
	"${FILESDIR}/add_install.patch"
)

src_configure() {
	local mycmakeargs=(
		-DCMAKE_BUILD_TYPE=Release
	)
	cmake_comment_add_subdirectory src/ext/googletest
	cmake_src_configure
}
