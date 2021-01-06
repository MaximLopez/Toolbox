#!/bin/bash

# This Script is released under MIT License
#
# Copyright 2020 Just Perfection
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

declare -A themes
themes[0]="/usr/share/themes/Yaru";
themes[1]="/usr/share/themes/Yaru";

if [ "$EUID" -ne 0 ]
then echo "You need to run this script as root"
exit
fi
for d in /var/lib/flatpak/runtime/org.gnome.Platform/x86_64/*; do
if [ -d "$d" ]; then
ver="${d##*/}";
printf "**** Version $ver ****\n";
for d2 in $d/*; do
verid="${d2##*/}";
verid_length="${#verid}";
if [ -d "$d2" ] && [ "$verid_length" -ge 60 ]; then
for i in "${!themes[@]}"; do
cp -r "${themes[$i]}" "$d2/files/share/themes"
done
fi
done
fi
done
