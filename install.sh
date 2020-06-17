#!/bin/sh

SOURCE=./tmp.sh
DEST=tmp

mkdir -p $XDG_BIN_HOME
cp $SOURCE $XDG_BIN_HOME/$DEST
