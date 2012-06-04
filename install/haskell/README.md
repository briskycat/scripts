##How to install Haskell Platform with Debian update-alternatives

Works with Debian, Ubuntu, or any derivative that has the Debian *update-alternatives*
command available.

###Why?

1.  Debian/Ubuntu/etc repos seem to consistently lag the current version of Haskell 
    platform.  Though they might be getting better about this now, judging from 
    http://packages.ubuntu.com/haskell-platform and 
    http://packages.debian.org/haskell-platform)
2.  Manage multiple GHC and Haskell Platform versions, easily toggle between them with 
    *update-alternatives --config*.
3.  Keep all files of GHC and Haskell Platform together in a  single location like 
    /opt/haskell/, instead of spread out over /usr/bin, /usr/lib, and /usr/share.
4.  Easily uninstall with *update-alternatives --remove-all* (script included), and 
    *rm -rf /opt/haskell*.
5.  Run as system user instead of adding /opt/haskell to your .profile.
6.  Get used to using *update-alternatives*, it's a great tool that makes managing 
    manually installed, multi-version software painless.  Java and Scala (via Typesafe 
    Stack) both work equally well with it.

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

If any errors occurred during build, check that you have [the required dependencies][5].

Also, make sure you have the correct pairs of GHC and Haskell Platform.  Each Haskell
Platform release is [designed to work with a specific version of GHC][5] (scroll down
to the chart showing the matching version of GHC for each platform.  The latest platform
2012.2.0.0 pairs with GHC 7.4.1).

[1]: http://www.haskell.org/ghc/download\_ghc\_7\_4\_1#x86linux
[2]: https://github.com/byrongibson/scripts/blob/master/install/haskell/haskell-ghc-install.sh 
[3]: http://hackage.haskell.org/platform/linux.html
[4]: https://github.com/byrongibson/scripts/blob/master/install/haskell/haskell-platform-install.sh
[5]: http://www.vex.net/~trebla/haskell/haskell-platform.xhtml
