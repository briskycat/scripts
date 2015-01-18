#!/usr/bin/env bash

# install haskell platform to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/local"
GO="/opt/go"
VER="1.2.2"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/go/bin/go go $GO/$VER/bin/go $PRIORITY_LEVEL \
  --slave $BIN/go/bin/godoc godoc $GO/$VER/bin/godoc \
  --slave $BIN/go/bin/gofmt gofmt $GO/$VER/bin/gofmt \
  --slave $BIN/go/bin/gofmt gofmt $GO/$VER/bin/gofmt \
  --slave $BIN/go/lib/time/update.bash update.bash $GO/$VER/lib/time/update.bash \
  --slave $BIN/go/pkg/tool/linux_amd64/6a 6a $GO/$VER/pkg/tool/linux_amd64/6a \
  --slave $BIN/go/pkg/tool/linux_amd64/6c 6c $GO/$VER/pkg/tool/linux_amd64/6c \
  --slave $BIN/go/pkg/tool/linux_amd64/6g 6g $GO/$VER/pkg/tool/linux_amd64/6g \
  --slave $BIN/go/pkg/tool/linux_amd64/6l 6l $GO/$VER/pkg/tool/linux_amd64/6l \
  --slave $BIN/go/pkg/tool/linux_amd64/addr2line addr2line $GO/$VER/pkg/tool/linux_amd64/addr2line \
  --slave $BIN/go/pkg/tool/linux_amd64/cgo cgo $GO/$VER/pkg/tool/linux_amd64/cgo \
  --slave $BIN/go/pkg/tool/linux_amd64/cover cover $GO/$VER/pkg/tool/linux_amd64/cover \
  --slave $BIN/go/pkg/tool/linux_amd64/dist dist $GO/$VER/pkg/tool/linux_amd64/dist \
  --slave $BIN/go/pkg/tool/linux_amd64/fix fix $GO/$VER/pkg/tool/linux_amd64/fix \
  --slave $BIN/go/pkg/tool/linux_amd64/nm nm $GO/$VER/pkg/tool/linux_amd64/nm \
  --slave $BIN/go/pkg/tool/linux_amd64/objdump objdump $GO/$VER/pkg/tool/linux_amd64/objdump \
  --slave $BIN/go/pkg/tool/linux_amd64/pack pack $GO/$VER/pkg/tool/linux_amd64/pack \
  --slave $BIN/go/pkg/tool/linux_amd64/pprof pprof $GO/$VER/pkg/tool/linux_amd64/pprof \
  --slave $BIN/go/pkg/tool/linux_amd64/tour tour $GO/$VER/pkg/tool/linux_amd64/tour \
  --slave $BIN/go/pkg/tool/linux_amd64/vet vet $GO/$VER/pkg/tool/linux_amd64/vet \
  --slave $BIN/go/pkg/tool/linux_amd64/yacc yacc $GO/$VER/pkg/tool/linux_amd64/yacc \
  --slave $BIN/go/test/errchk errchk $GO/$VER/test/errchk \
  --slave $BIN/go/test/run run $GO/$VER/test/run
