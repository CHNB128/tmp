#!/bin/sh

ROOT=$HOME/.tmp

new () {
  TEMPDIR=$ROOT/$(date +%s)/

  mkdir -p $TEMPDIR
  sh -c "cd $TEMPDIR; exec $SHELL"
}

clean() {
  rm -Rf $ROOT/*
}

case $1 in
  "clean")
    clean
    ;;
  *)
    new
  ;;
esac
