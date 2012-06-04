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

1.  download [GHC][1] (the binary, not the source, unless you specifically need to build from 
    source and it's worth the long build)
2.  extract to a temp directory
3.  cd temp
4.  tar -xvf ghc-7.4.1-x86\_64-unknown-linux.tar.bz
5.  cd ghc-7.4.1
6.  ./configure --prefix=/opt/haskell/ghc/7.4.1
7.  sudo make install
8.  sudo sh [haskell-ghc-install.sh][2]

###II.  Install Haskell Platform

1.  Download [current Haskell-Platform source][3]
2.  Extract to a temp dir
3.  cd temp
4.  ./configure --prefix=/opt/haskell/platform/2012.2.00
5.  sudo make
6.  sudo make install
7.  sudo sh [haskell-platform-install.sh][4]
8.  cabal update

[1]: http://www.haskell.org/ghc/download\_ghc\_7\_4\_1#x86linux
[2]: https://github.com/byrongibson/scripts/blob/master/install/haskell/haskell-ghc-install.sh 
[3]: http://hackage.haskell.org/platform/linux.html
[4]: https://github.com/byrongibson/scripts/blob/master/install/haskell/haskell-platform-install.sh
