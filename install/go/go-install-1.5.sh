#!/usr/bin/env bash

# need separate install file for 1.5 since many of the tools are different

BIN="/usr/bin"
LIB="/usr/lib"
TOOL="$LIB/pkg/tool/linux_amd64"
GO_SRC="/opt/go"
GO_VER="1.5rc1"
GO_BIN="$GO_SRC/$GO_VER/bin"
GO_TOOL="$GO_SRC/$GO_VER/pkg/tool/linux_amd64"
GO_MISC="$GO_SRC/$GO_VER/misc"
PRIORITY_LEVEL=1100

update-alternatives --install $BIN/go golang-go $GO_BIN/go $PRIORITY_LEVEL \
  --slave $BIN/godoc golang-doc $GO_BIN/godoc \
  --slave $BIN/gofmt gofmt $GO_BIN/gofmt \
  --slave $TOOL/addr2line addr2line $GO_TOOL/addr2line \
  --slave $TOOL/api api $GO_TOOL/api \
  --slave $TOOL/asm asm $GO_TOOL/asm \
  --slave $TOOL/cgo cgo $GO_TOOL/cgo \
  --slave $TOOL/compile compile $GO_TOOL/compile \
  --slave $TOOL/cover cover $GO_TOOL/cover \
  --slave $TOOL/dist dist $GO_TOOL/dist \
  --slave $TOOL/doc doc $GO_TOOL/doc \
  --slave $TOOL/fix fix $GO_TOOL/fix \
  --slave $TOOL/link link $GO_TOOL/link \
  --slave $TOOL/nm nm $GO_TOOL/nm \
  --slave $TOOL/objdump objdump $GO_TOOL/objdump \
  --slave $TOOL/pack pack $GO_TOOL/pack \
  --slave $TOOL/pprof pprof $GO_TOOL/pprof \
  --slave $TOOL/tour tour $GO_TOOL/tour \
  --slave $TOOL/trace trace $GO_TOOL/trace \
  --slave $TOOL/vet vet $GO_TOOL/vet \
  --slave $TOOL/yacc yacc $GO_TOOL/yacc \
