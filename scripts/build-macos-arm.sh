#!/bin/sh

git submodule init && git submodule update

brew install sdl2 freetype2 fontconfig pkg-config opus libpng libedit python3 jpeg jpeg-turbo

./waf configure -T debug --disable-warns $* &&
./waf configure -T release --prefix='' --build-games=portal
./waf build
./waf install --destdir="portal_game"
