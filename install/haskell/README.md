##Install Haskell Platform from source with Debian update-alternatives

Scripts to make manual/source installation and management of multiple versions of GHC 
and Haskell Platform easy.  Bypasses the Debian repos.  Works with Debian, Ubuntu, or 
any derivative that has the Debian `update-alternatives` tool available.

###Why?

1.  Debian/Ubuntu/etc repos seem to consistently lag the current version of GHC and 
    Haskell platform.  (Though that might be getting better, judging from how quickly
    http://packages.ubuntu.com/haskell-platform and 
    http://packages.debian.org/haskell-platform were updated with Platform 2012.2.0.0)
2.  Install multiple GHC and Haskell Platform versions side-by-side, and easily toggle 
    between them with `update-alternatives --config`.
3.  Upgrade to new versions of GHC and Haskell Platform without overwriting or deleting 
    the previous.  If this causes regressions in your apps, easily roll back to the prior 
    working version with a simple `update-alternatives --config`.
4.  Keep all files of GHC and Haskell Platform together in a  single location like 
    `/opt/haskell/ghc` and `/opt/haskell/platform`, instead of spread out over `/usr/bin`, 
    `/usr/lib`, and `/usr/share` as with an `apt-get` or `dpkg -i` installation.  The 
    files are kept in `/opt/haskell/` and `update-alternatives` soft links them to their 
    system directories.
5.  Easily uninstall with `update-alternatives --remove-all` (script included), and 
    `rm -rf /opt/haskell`.
6.  Run haskell via system PATH instead of user PATH (eg, no need to add 
    `/opt/haskell/ghc/bin` to your PATH in .profile)
7.  Get used to using `update-alternatives`, it's a great tool that makes managing 
    manually installed, multi-version software painless.  [Java][6] and [Scala][7] both 
    work equally well with it.

###I.  Install GHC

0.  GHC must be installed before Haskell Platform can be, so...
1.  download [GHC][1] to a temp dir (the binary, not the source, unless you specifically need to build from 
    source and it's worth the long build)
2.  `tar -xvf ghc-7.4.1-x86_64-unknown-linux.tar.bz`
3.  `cd ghc-7.4.1`
4.  `./configure --prefix=/opt/haskell/ghc/7.4.1` (or wherever you want to install GHC)
5.  `sudo make install`
6.  `sudo sh haskell-ghc-install.sh` ([see script][2]) (before running, make sure the last line in the 
    script does not overwrite `/usr/share/man/man9`.  If there is already a `man9` in
    `/usr/share/man` then change the line in the script to `man11` or something else safe:
    `--slave $MAN/man9 man.ghc $GHC_MAN/man1`
7.  test:

    `cd`

    `ghc --version`

    `man ghc`

###II.  Install Haskell Platform

1.  Download [current Haskell-Platform source][3]
2.  `tar -xvf haskell-platform-2012.2.0.0.tar.gz`
3.  `cd haskell-platform-2012.2.0.0`
4.  `./configure --prefix=/opt/haskell/platform/2012.2.00`
5.  `sudo make`
6.  `sudo make install`
7.  `sudo sh haskell-platform-install.sh` ([see script][4])
8.  test: 
    `which cabal`
9.  `cabal update`

###III. Troubleshooting

If any errors occurred during build, check that you have [the required dependencies][5].

Also, make sure you have the correct pairs of GHC and Haskell Platform.  Each Haskell
Platform release is [designed to work with a specific version of GHC][5] (scroll down
to the chart showing the matching version of GHC for each platform.  The latest platform
2012.2.0.0 pairs with GHC 7.4.1).

###IV.  XMonad

Optionally, install XMonad using a similar method.  However, instead of downloading the
source from a website, build it with Cabal into /opt/haskell/xmonad:

0.  `cd ~`
0.  Get latest version of xmonad and xmonad-contrib
    * `cabal info xmonad`
    * `cabal info xmonad-contrib`
1.  Build and install both to `/opt`, using the version as part of the path.  This makes it easy 
    to add future releases side-by-side with this one, each in its own versioned path, and swap 
    between them easily using `update-alternatives --config xmonad`.
    * `sudo cabal install xmonad --prefix=/opt/haskell/xmonad/$VER`
    * `sudo cabal install xmonad-contrib --prefix=/opt/haskell/xmonad-contrib/$VER`
2.  Edit xmonad-install.sh, change the XMONAD\_VER and CONTRIB\_VER to correct versions from #2. 
2.  `sudo sh xmonad-install.sh`
3.  [Set up XMonad][10] as you would for a globally installed version. 

[1]:http://www.haskell.org/ghc/download\_ghc\_7\_4\_1#x86linux
[2]:https://github.com/byrongibson/scripts/blob/master/install/haskell/haskell-ghc-install.sh 
[3]:http://hackage.haskell.org/platform/linux.html
[4]:https://github.com/byrongibson/scripts/blob/master/install/haskell/haskell-platform-install.sh
[5]:http://www.vex.net/~trebla/haskell/haskell-platform.xhtml
[6]:https://github.com/byrongibson/scripts/tree/master/install/java
[7]:https://github.com/byrongibson/scripts/tree/master/install/scala 
[8]:http://www.haskell.org/haskellwiki/Xmonad/Using_xmonad_in_Gnome
[9]:http://www.haskell.org/haskellwiki/Xmonad/Using_xmonad_in_Unity_2D
[10]:http://www.haskell.org/haskellwiki/Xmonad
