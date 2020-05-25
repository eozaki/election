#!/usr/bin/fish

meson build --prefix=/usr --reconfigure
cd build
ninja
ninja install
