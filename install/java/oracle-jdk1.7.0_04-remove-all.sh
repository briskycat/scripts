#!$BIN/env bash -

# set priority level
BIN="/usr/bin"
JVM="/usr/lib/jvm"
#JDK="jdk1.6.0_32"
JDK="jdk1.7.0_04"
JDK_BIN="$JDK/bin"
JDK_DB_BIN="$JDK/db/bin"
PRIORITY_LEVEL=1100

# uninstall Oracle JDK7 alternative for update-alternatives --config java

# $JDK_BIN
update-alternatives --install java 
update-alternatives --install appletviewer 
update-alternatives --install apt 
update-alternatives --install ControlPanel 
update-alternatives --install extcheck 
update-alternatives --install idlj 
update-alternatives --install jar 
update-alternatives --install jarsigner 
update-alternatives --install javac 
update-alternatives --install javadoc 
update-alternatives --install javah 
update-alternatives --remove-all javap 
update-alternatives --remove-all java-rmi.cgi 
update-alternatives --remove-all javaws 
update-alternatives --remove-all jconsole 
update-alternatives --remove-all jcontrol 
update-alternatives --remove-all jcmd 
update-alternatives --remove-all jdb 
update-alternatives --remove-all jhat 
update-alternatives --remove-all jinfo 
update-alternatives --remove-all jmap 
update-alternatives --remove-all jps 
update-alternatives --remove-all jrunscript 
update-alternatives --remove-all jsadebugd 
update-alternatives --remove-all jstack 
update-alternatives --remove-all jstat 
update-alternatives --remove-all jstatd 
update-alternatives --remove-all jvisualvm 
update-alternatives --remove-all keytool 
update-alternatives --remove-all native2ascii 
update-alternatives --remove-all orbd 
update-alternatives --remove-all pack200 
update-alternatives --remove-all policytool 
update-alternatives --remove-all rmic 
update-alternatives --remove-all rmid 
update-alternatives --remove-all rmiregistry 
update-alternatives --remove-all schemagen 
update-alternatives --remove-all serialver 
update-alternatives --remove-all servertool 
update-alternatives --remove-all tnameserv 
update-alternatives --remove-all unpack200
update-alternatives --remove-all wsgen 
update-alternatives --remove-all wsimport 
update-alternatives --remove-all xjc 
# $JDK_DB_BIN
update-alternatives --remove-all dblook 
update-alternatives --remove-all dblook.bat 
update-alternatives --remove-all derby_common.bat 
update-alternatives --remove-all ij 
update-alternatives --remove-all ij.bat 
update-alternatives --remove-all NetworkServerControl 
update-alternatives --remove-all NetworkServerControl.bat 
update-alternatives --remove-all setEmbeddedCP 
update-alternatives --remove-all setEmbeddedCP.bat 
update-alternatives --remove-all setNetworkClientCP 
update-alternatives --remove-all setNetworkClientCP.bat 
update-alternatives --remove-all setNetworkServerCP 
update-alternatives --remove-all setNetworkServerCP.bat 
update-alternatives --remove-all startNetworkServer 
update-alternatives --remove-all startNetworkServer.bat 
update-alternatives --remove-all stopNetworkServer 
update-alternatives --remove-all stopNetworkServer.bat 
update-alternatives --remove-all sysinfo 
update-alternatives --remove-all sysinfo.bat 
