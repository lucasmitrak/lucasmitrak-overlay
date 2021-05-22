# Lucas Mitrak's Personal Overlay ![repoman](https://github.com/lucasmitrak/lucasmitrak-overlay/workflows/repoman/badge.svg)
## Installation

### Install

As per the current [Portage specifications](https://dev.gentoo.org/~zmedico/portage/doc/man/portage.5.html), ebuild repositories (a.k.a. overlays) can be managed via file collections under `/etc/portage/repos.conf/`, via the new [plug-in sync system](https://wiki.gentoo.org/wiki/Project:Portage/Sync).

To enable the overlay without the need for additional software, you first need to have `git` installed:

```console
emerge --ask --verbose dev-vcs/git
````

Then you need to add this repository configuration by downloading the [lucasmitrak-overlay.conf](metadata/lucasmitrak-overlay.conf) file:

```console
wget https://raw.githubusercontent.com/lucasmitrak/lucasmitrak-overlay/master/metadata/lucasmitrak-overlay.conf \
	-O /etc/portage/repos.conf/lucasmitrak-overlay.conf
```

### Uninstall

To uninstall the overlay, simply run:

```console
rm /etc/portage/repos.conf/lucasmitrak-overlay.conf
rm /var/db/repos/lucasmitrak-overlay -rf
```
