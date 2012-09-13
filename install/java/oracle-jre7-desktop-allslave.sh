#!/usr/bin/env bash -
# tested on Ubuntu 12.04 only
# FIXME: not working yet, just outline/skeleton.  Still using all JDK files.

BIN="/usr/bin"
MAN="/usr/share/man"
JVM="/opt/java/jdk/"
JRE="1.7.0_04"
JRE_BIN="$JRE/lib"
#JRE_DB_BIN="$JRE/db/bin"
JRE_MAN="$JRE/man"
PRIORITY_LEVEL=1100

# install Oracle JRE7 alternative for update-alternatives --config jre

update-alternatives --install $BIN/java jre $JVM/$JRE_BIN/java $PRIORITY_LEVEL \
--slave $BIN/appletviewer appletviewer $JVM/$JRE_BIN/appletviewer \
--slave $BIN/apt apt $JVM/$JRE_BIN/apt \
--slave $BIN/ControlPanel ControlPanel $JVM/$JRE_BIN/ControlPanel \
--slave $BIN/extcheck extcheck $JVM/$JRE_BIN/extcheck \
--slave $BIN/idlj idlj $JVM/$JRE_BIN/idlj \
--slave $BIN/jar jar $JVM/$JRE_BIN/jar \
--slave $BIN/jarsigner jarsigner $JVM/$JRE_BIN/jarsigner \
--slave $BIN/javac javac $JVM/$JRE_BIN/javac \
--slave $BIN/javadoc javadoc $JVM/$JRE_BIN/javadoc \
--slave $BIN/javah javah $JVM/$JRE_BIN/javah \
--slave $BIN/javap javap $JVM/$JRE_BIN/javap \
--slave $BIN/java-rmi.cgi java-rmi.cgi $JVM/$JRE_BIN/java-rmi.cgi \
--slave $BIN/javaws javaws $JVM/$JRE_BIN/javaws \
--slave $BIN/jconsole jconsole $JVM/$JRE_BIN/jconsole \
--slave $BIN/jcontrol jcontrol $JVM/$JRE_BIN/jcontrol \
--slave $BIN/jcmd jcmd $JVM/$JRE_BIN/jcmd \
--slave $BIN/jdb jdb $JVM/$JRE_BIN/jdb \
--slave $BIN/jhat jhat $JVM/$JRE_BIN/jhat \
--slave $BIN/jinfo jinfo $JVM/$JRE_BIN/jinfo \
--slave $BIN/jmap jmap $JVM/$JRE_BIN/jmap \
--slave $BIN/jps jps $JVM/$JRE_BIN/jps \
--slave $BIN/jrunscript jrunscript $JVM/$JRE_BIN/jrunscript \
--slave $BIN/jsadebugd jsadebugd $JVM/$JRE_BIN/jsadebugd \
--slave $BIN/jstack jstack $JVM/$JRE_BIN/jstack \
--slave $BIN/jstat jstat $JVM/$JRE_BIN/jstat \
--slave $BIN/jstatd jstatd $JVM/$JRE_BIN/jstatd \
--slave $BIN/jvisualvm jvisualvm $JVM/$JRE_BIN/jvisualvm \
--slave $BIN/keytool keytool $JVM/$JRE_BIN/keytool \
--slave $BIN/native2ascii native2ascii $JVM/$JRE_BIN/native2ascii \
--slave $BIN/orbd orbd $JVM/$JRE_BIN/orbd \
--slave $BIN/pack200 pack200 $JVM/$JRE_BIN/pack200 \
--slave $BIN/policytool policytool $JVM/$JRE_BIN/policytool \
--slave $BIN/rmic rmic $JVM/$JRE_BIN/rmic \
--slave $BIN/rmid rmid $JVM/$JRE_BIN/rmid \
--slave $BIN/rmiregistry rmiregistry $JVM/$JRE_BIN/rmiregistry \
--slave $BIN/schemagen schemagen $JVM/$JRE_BIN/schemagen \
--slave $BIN/serialver serialver $JVM/$JRE_BIN/serialver \
--slave $BIN/servertool servertool $JVM/$JRE_BIN/servertool \
--slave $BIN/tnameserv tnameserv $JVM/$JRE_BIN/tnameserv \
--slave $BIN/unpack200 unpack200 $JVM/$JRE_BIN/unpack200 \
--slave $BIN/wsgen wsgen $JVM/$JRE_BIN/wsgen \
--slave $BIN/wsimport wsimport $JVM/$JRE_BIN/wsimport \
--slave $BIN/xjc xjc $JVM/$JRE_BIN/xjc \
--slave $BIN/dblook dblook $JVM/$JRE_DB_BIN/dblook \
--slave $BIN/ij ij $JVM/$JRE_DB_BIN/ij \
--slave $BIN/NetworkServerControl NetworkServerControl $JVM/$JRE_DB_BIN/NetworkServerControl \
--slave $BIN/setEmbeddedCP setEmbeddedCP $JVM/$JRE_DB_BIN/setEmbeddedCP \
--slave $BIN/setNetworkClientCP setNetworkClientCP $JVM/$JRE_DB_BIN/setNetworkClientCP \
--slave $BIN/setNetworkServerCP setNetworkServerCP $JVM/$JRE_DB_BIN/setNetworkServerCP \
--slave $BIN/startNetworkServer startNetworkServer $JVM/$JRE_DB_BIN/startNetworkServer \
--slave $BIN/stopNetworkServer stopNetworkServer $JVM/$JRE_DB_BIN/stopNetworkServer \
--slave $BIN/sysinfo sysinfo $JVM/$JRE_DB_BIN/sysinfo \
--slave $MAN/man10 man.java $JVM/$JRE_MAN/man1
