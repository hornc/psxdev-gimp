# psxdev-gimp TIM plugin

This project takes the now offline [psxdev.de (archived)](https://web.archive.org/web/20021010095358/http://www.psxdev.de/whatispsxdev.html)
project's GIMP [TIM image format](https://www.psxdev.net/forum/viewtopic.php?t=109)
 plugin source code and brings it up to date to run under [GIMP 2.10](https://www.gimp.org/release-notes/gimp-2.10.html).

The plugin does not yet run under the latest version of GIMP, [3.0](https://www.gimp.org/release-notes/gimp-3.0.html).

It splits the `psxdev-gimp-2.0.0` folder out from the fuller dev environment archived [on github](https://github.com/g4jc/psxdev).


## Source
* [tim.c](./tim.c): Extends GIMP to read and write images in TIM format. 24-bit mode is currently not supported.
* [bs.c](./bs.c) / [rgba.c](./rgba.c): BS (MDEC Stream / JPEG like image format) GIMP plugin. Not yet working on 2.10.


## Dependencies
* libgtk2.0-dev
* libgimp2.0-dev

## Build the TIM plugin
Ubuntu/Linux:

    gcc tim.c -o gimp-psx-tim  `pkg-config --cflags --libs gtk+-2.0 gimp-2.0`

## Install the plugin
Find your plugins folder via the GIMP "Preferences" dialog, under "Folders > Plug-ins".

Copy the output file, `gimp-psx-tim`, to that folder.

## PSXDEV original notice
-------------------------------------------------------------------------

 PSXDEV is a free, GPL'd development environment for the Sony PlayStation
 aka PSX. It consists of a collection of utitiles, a patched GNU egcs compiler,
 patched GNU binutils, a device driver (kernel module) and data converters.
 It requires a PC commslink package, an ActionReplay with the CAETLA PS/PAR
 replacement firmware and of course a PSX. It does not include the required
 development libraries, includes and documentation - see documentation why.

 It allows you to up- and download main memory, video memory and memory card
 contents. Besides that, it's a full remote-target cross-compiling development
 environment hosted under unix. A remote PSX application can use the unix host
 as a file server and standard input/output can also be redirected. The kernel
 device driver has a simple API and support libraries; this makes it very easy
 to write special video game development applications like graphic editors,
 which for example can directly communicate with the target system.

 PlayStation(TM) is a registered trademark of Sony Computer Entertainment Inc.
 PSXDEV is not a SCEI product and has no relations to SCEI, is not supported
 by SCEI and was not developed by SCEI.

-------------------------------------------------------------------------

 Copyright (C) 1997, 1998, 1999, 2000 by these people, who contributed to this project

* Daniel Balster <dbalster@psxdev.de>
* Sergio Moreira <sergio@x-plorer.co.uk>
* Andrew Kieschnick <andrewk@cerc.utexas.edu>
* Kazuki Sakamoto <bsd-ps@geocities.co.jp>

 Latest changes 2023, 2025
* Charles Horn [@hornc](https://github.com/hornc)	

 This program is free software; you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 2 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
