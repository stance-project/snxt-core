
Debian
====================
This directory contains files used to package csportsd/csports-qt
for Debian-based Linux systems. If you compile csportsd/csports-qt yourself, there are some useful files here.

## csports: URI support ##


csports-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install csports-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your csportsqt binary to `/usr/bin`
and the `../../share/pixmaps/csports128.png` to `/usr/share/pixmaps`

csports-qt.protocol (KDE)

