#!/usr/bin/env bash -
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
JVM="/opt/java/jdk"
#JVM="/usr/lib/jvm"
JDK="1.7.0_04"
#JDK="jdk1.7.0_04"
JDK_BIN="$JDK/bin"
JDK_DB_BIN="$JDK/db/bin"
JDK_MAN="$JDK/man"
PRIORITY_LEVEL=1100

# install Oracle JDK7 alternative for update-alternatives --config java

update-alternatives --install $BIN/java java $JVM/$JDK_BIN/java $PRIORITY_LEVEL \
--slave $BIN/appletviewer appletviewer $JVM/$JDK_BIN/appletviewer \
--slave $BIN/apt apt $JVM/$JDK_BIN/apt \
--slave $BIN/ControlPanel ControlPanel $JVM/$JDK_BIN/ControlPanel \
--slave $BIN/extcheck extcheck $JVM/$JDK_BIN/extcheck \
--slave $BIN/idlj idlj $JVM/$JDK_BIN/idlj \
--slave $BIN/jar jar $JVM/$JDK_BIN/jar \
--slave $BIN/jarsigner jarsigner $JVM/$JDK_BIN/jarsigner \
--slave $BIN/javac javac $JVM/$JDK_BIN/javac \
--slave $BIN/javadoc javadoc $JVM/$JDK_BIN/javadoc \
--slave $BIN/javah javah $JVM/$JDK_BIN/javah \
--slave $BIN/javap javap $JVM/$JDK_BIN/javap \
--slave $BIN/java-rmi.cgi java-rmi.cgi $JVM/$JDK_BIN/java-rmi.cgi \
--slave $BIN/javaws javaws $JVM/$JDK_BIN/javaws \
--slave $BIN/jconsole jconsole $JVM/$JDK_BIN/jconsole \
--slave $BIN/jcontrol jcontrol $JVM/$JDK_BIN/jcontrol \
--slave $BIN/jcmd jcmd $JVM/$JDK_BIN/jcmd \
--slave $BIN/jdb jdb $JVM/$JDK_BIN/jdb \
--slave $BIN/jhat jhat $JVM/$JDK_BIN/jhat \
--slave $BIN/jinfo jinfo $JVM/$JDK_BIN/jinfo \
--slave $BIN/jmap jmap $JVM/$JDK_BIN/jmap \
--slave $BIN/jps jps $JVM/$JDK_BIN/jps \
--slave $BIN/jrunscript jrunscript $JVM/$JDK_BIN/jrunscript \
--slave $BIN/jsadebugd jsadebugd $JVM/$JDK_BIN/jsadebugd \
--slave $BIN/jstack jstack $JVM/$JDK_BIN/jstack \
--slave $BIN/jstat jstat $JVM/$JDK_BIN/jstat \
--slave $BIN/jstatd jstatd $JVM/$JDK_BIN/jstatd \
--slave $BIN/jvisualvm jvisualvm $JVM/$JDK_BIN/jvisualvm \
--slave $BIN/keytool keytool $JVM/$JDK_BIN/keytool \
--slave $BIN/native2ascii native2ascii $JVM/$JDK_BIN/native2ascii \
--slave $BIN/orbd orbd $JVM/$JDK_BIN/orbd \
--slave $BIN/pack200 pack200 $JVM/$JDK_BIN/pack200 \
--slave $BIN/policytool policytool $JVM/$JDK_BIN/policytool \
--slave $BIN/rmic rmic $JVM/$JDK_BIN/rmic \
--slave $BIN/rmid rmid $JVM/$JDK_BIN/rmid \
--slave $BIN/rmiregistry rmiregistry $JVM/$JDK_BIN/rmiregistry \
--slave $BIN/schemagen schemagen $JVM/$JDK_BIN/schemagen \
--slave $BIN/serialver serialver $JVM/$JDK_BIN/serialver \
--slave $BIN/servertool servertool $JVM/$JDK_BIN/servertool \
--slave $BIN/tnameserv tnameserv $JVM/$JDK_BIN/tnameserv \
--slave $BIN/unpack200 unpack200 $JVM/$JDK_BIN/unpack200 \
--slave $BIN/wsgen wsgen $JVM/$JDK_BIN/wsgen \
--slave $BIN/wsimport wsimport $JVM/$JDK_BIN/wsimport \
--slave $BIN/xjc xjc $JVM/$JDK_BIN/xjc \
--slave $BIN/dblook dblook $JVM/$JDK_DB_BIN/dblook \
--slave $BIN/ij ij $JVM/$JDK_DB_BIN/ij \
--slave $BIN/NetworkServerControl NetworkServerControl $JVM/$JDK_DB_BIN/NetworkServerControl \
--slave $BIN/setEmbeddedCP setEmbeddedCP $JVM/$JDK_DB_BIN/setEmbeddedCP \
--slave $BIN/setNetworkClientCP setNetworkClientCP $JVM/$JDK_DB_BIN/setNetworkClientCP \
--slave $BIN/setNetworkServerCP setNetworkServerCP $JVM/$JDK_DB_BIN/setNetworkServerCP \
--slave $BIN/startNetworkServer startNetworkServer $JVM/$JDK_DB_BIN/startNetworkServer \
--slave $BIN/stopNetworkServer stopNetworkServer $JVM/$JDK_DB_BIN/stopNetworkServer \
--slave $BIN/sysinfo sysinfo $JVM/$JDK_DB_BIN/sysinfo \
--slave $MAN/man10 man.java $JVM/$JDK_MAN/man1
