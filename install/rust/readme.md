###INTRO

Compile and install [Rust][1] without package manager via [debian update-alternatives][3]
Manage multiple versions, compile and install to /opt/rust/[version], then swap
between active version with a single command "update-alternaties --config".

###HOWTO

1.  Download Rust, either curl/wget the tarball or clone the git repo
2.  unpack, cd to src dir
3.  ./configure --prefix=/opt/rust/[version]
4.  sudo make && make install
5.  run this script to add to update-alternatives ("man update-alternatives" 
    for details) 
6.  for future versions of Rust, repeat these steps but change the version in 
    ./config prefix and the VER value in this file.  You can install multiple
    versions simultaneously and use update-alternatives to toggle between acitive
    versions.


[1]:http://www.rust-lang.org/
[2]:http://github.com/mozilla/rust
[3]:http://wiki.debian.org/DebianAlternatives
