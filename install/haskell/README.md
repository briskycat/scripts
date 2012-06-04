##How to install Haskell Platform with Debian update-alternatives

Works with Debian, Ubuntu, or any derivative that has the Debian update-alternatives
command available.

###Why?

1.  keep the entire platform together in a single directory like 
    /opt/haskell/platform/2012.2.0.0, a direct install vomits files all throughout 
    /usr/bin, /usr/lib, and /usr/share.  
2.  install and easily toggle between multiple versions (which you can't do when
    installing it from the deb repo)
3.  easily uninstall - just `update-alternatives --remove ghc_` then `rm -rf 
    /opt/haskell/platform/2012.2.0.0`
4.  get use to using the wonderful `update-alternatives` with everything.  Works great
    with Java, Scala (Typesafe Stack), etc. 

###I.  Install GHC

1.  download [GHC][1] to a temp dir (the binary, not the source, unless you specifically need to build from 
    source and it's worth the long build)
2.  tar -xvf ghc-7.4.1-x86\_64-unknown-linux.tar.bz
3.  cd ghc-7.4.1
4.  ./configure --prefix=/opt/haskell/ghc/7.4.1
5.  sudo make install
6.  sudo sh [haskell-ghc-install.sh][2] (before running, make sure the last line in the 
    script does not overwrite `/usr/share/man/man10`.  If it does, change to `man11` or 
    something else safe.
7.  test:  
    `ghc --version`
    `man ghc`

###II.  Install Haskell Platform

1.  Download [current Haskell-Platform source][3]
2.  tar -xvf haskell-platform-2012.2.0.0.tar.gz 
3.  cd haskell-platform-2012.2.0.0
4.  ./configure --prefix=/opt/haskell/platform/2012.2.00
5.  sudo make
6.  sudo make install
7.  sudo sh [haskell-platform-install.sh][4] 
8.  test: `which cabal`
9.  cabal update

###III. Troubleshooting

If any errors occurred, check these pages:

1.  [GHC build errors][5]
2.  [Platform build errors][6] (check prereqs)

[1]: http://www.haskell.org/ghc/download\_ghc\_7\_4\_1#x86linux
[2]: https://github.com/byrongibson/scripts/blob/master/install/haskell/haskell-ghc-install.sh 
[3]: http://hackage.haskell.org/platform/linux.html
[4]: https://github.com/byrongibson/scripts/blob/master/install/haskell/haskell-platform-install.sh

