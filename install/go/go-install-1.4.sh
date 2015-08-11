#!/usr/bin/env bash

ROOT="/usr/local/go"
BIN="$ROOT/bin"
TOOL="$ROOT/pkg/tool/linux_amd64"
GO_SRC="/opt/go"
GO_VER="1.4.2"
GO_BIN="$GO_SRC/$GO_VER/bin"
GO_TOOL="$GO_SRC/$GO_VER/pkg/tool/linux_amd64"
GO_MISC="$GO_SRC/$GO_VER/misc"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/go golang-go $GO_BIN/go $PRIORITY_LEVEL \
  --slave $BIN/godoc golang-doc $GO_BIN/godoc \
  --slave $BIN/gofmt gofmt $GO_BIN/gofmt \
  --slave $TOOL/pprof pprof $GO_TOOL/pprof \
  --slave $TOOL/addr2line addr2line $GO_TOOL/addr2line \
  --slave $TOOL/nm nm $GO_TOOL/nm \
  --slave $TOOL/objdump objdump $GO_TOOL/objdump \
  --slave $TOOL/pack pack $GO_TOOL/pack \
  --slave $TOOL/6l 6l $GO_TOOL/6l \
  --slave $TOOL/6a 6a $GO_TOOL/6a \
  --slave $TOOL/6c 6c $GO_TOOL/6c \
  --slave $TOOL/6g 6g $GO_TOOL/6g \
  --slave $TOOL/dist dist $GO_TOOL/dist \
  --slave $TOOL/cgo cgo $GO_TOOL/cgo \
  --slave $TOOL/fix fix $GO_TOOL/fix \
  --slave $TOOL/vet vet $GO_TOOL/vet \
  --slave $TOOL/yacc yacc $GO_TOOL/yacc \
