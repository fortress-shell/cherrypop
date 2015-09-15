#!/bin/sh
#   compile.sh: Compiles cherrypop
#   Copyright (C) 2015 Gustav Fransson Nyvell
#
#   This file is part of cherrypop.
#
#   Foobar is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 2 of the License, or
#   (at your option) any later version.
#
#   Foobar is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with cherrypop.  If not, see <http://www.gnu.org/licenses/>.
gcc distributevms.c `pkg-config libvirt --libs` -o distributevms
gcc discoveryd.c mkaddr.c -o discoveryd
gcc -g vmrunnerd.c -lcrypt `pkg-config libvirt --libs` -o vmrunnerd
