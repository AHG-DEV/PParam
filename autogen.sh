#!/bin/sh

bash install.sh
touch AUTHORS NEWS ChangeLog README
autoheader \
    && aclocal \
    && libtoolize --ltdl --copy --force \
    && automake --add-missing --copy \
    && autoreconf --force --install 
    rm -rf autom4te*.cache
