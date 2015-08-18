#!/usr/bin/env bash

ROOT="/usr/local"
BIN="$ROOT/bin"
BTC_SRC="/opt/bitcoin/core"
BTC_VER="0.11.0"
BTC_BIN="$BTC_SRC/$BTC_VER/bin"
BTC_INC="$BTC_SRC/$BTC_VER/include"
BTC_LIB="$BTC_SRC/$BTC_VER/lib"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/bitcoind bitcoind $BTC_BIN/bitcoind $PRIORITY_LEVEL \
  --slave $BIN/bitcoin-cli bitcoin-cli $BTC_BIN/bitcoin-cli \
  --slave $BIN/bitcoin-qt bitcoin-qt $BTC_BIN/bitcoin-qt \
  --slave $BIN/bitcoin-tx bitcoin-tx $BTC_BIN/bitcoin-tx \
  --slave $BIN/test_bitcoin test_bitcoin $BTC_BIN/test_bitcoin \
  --slave $BIN/test_bitcoin-qt test_bitcoin-qt $BTC_BIN/test_bitcoin-qt

