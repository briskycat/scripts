#!/usr/bin/env bash -
# tested on Ubuntu 12.04 only

JVM_TAR="/usr/bin"
JVM_SRC="/opt/java/jdk"
JDK_VER="$JVM_SRC/1.7.0_60"
JDK_SRC="$JDK_VER/bin"
JDK_DB_SRC="$JDK_VER/db/bin"
MAN_SRC="$JDK_VER/man/man1"
MAN_TAR="/usr/share/man/man11"
PRIORITY_LEVEL=1100

# install Oracle JDK7 alternative for update-alternatives --config java

update-alternatives --install $JVM_TAR/java java $JDK_SRC/java $PRIORITY_LEVEL \
--slave $JVM_TAR/appletviewer appletviewer $JDK_SRC/appletviewer \
--slave $JVM_TAR/apt apt $JDK_SRC/apt \
--slave $JVM_TAR/ControlPanel ControlPanel $JDK_SRC/ControlPanel \
--slave $JVM_TAR/extcheck extcheck $JDK_SRC/extcheck \
--slave $JVM_TAR/idlj idlj $JDK_SRC/idlj \
--slave $JVM_TAR/jar jar $JDK_SRC/jar \
--slave $JVM_TAR/jarsigner jarsigner $JDK_SRC/jarsigner \
--slave $JVM_TAR/javac javac $JDK_SRC/javac \
--slave $JVM_TAR/javadoc javadoc $JDK_SRC/javadoc \
--slave $JVM_TAR/javah javah $JDK_SRC/javah \
--slave $JVM_TAR/javap javap $JDK_SRC/javap \
--slave $JVM_TAR/java-rmi.cgi java-rmi.cgi $JDK_SRC/java-rmi.cgi \
--slave $JVM_TAR/javaws javaws $JDK_SRC/javaws \
--slave $JVM_TAR/jconsole jconsole $JDK_SRC/jconsole \
--slave $JVM_TAR/jcontrol jcontrol $JDK_SRC/jcontrol \
--slave $JVM_TAR/jcmd jcmd $JDK_SRC/jcmd \
--slave $JVM_TAR/jdb jdb $JDK_SRC/jdb \
--slave $JVM_TAR/jhat jhat $JDK_SRC/jhat \
--slave $JVM_TAR/jinfo jinfo $JDK_SRC/jinfo \
--slave $JVM_TAR/jmap jmap $JDK_SRC/jmap \
--slave $JVM_TAR/jps jps $JDK_SRC/jps \
--slave $JVM_TAR/jrunscript jrunscript $JDK_SRC/jrunscript \
--slave $JVM_TAR/jsadebugd jsadebugd $JDK_SRC/jsadebugd \
--slave $JVM_TAR/jstack jstack $JDK_SRC/jstack \
--slave $JVM_TAR/jstat jstat $JDK_SRC/jstat \
--slave $JVM_TAR/jstatd jstatd $JDK_SRC/jstatd \
--slave $JVM_TAR/jvisualvm jvisualvm $JDK_SRC/jvisualvm \
--slave $JVM_TAR/keytool keytool $JDK_SRC/keytool \
--slave $JVM_TAR/native2ascii native2ascii $JDK_SRC/native2ascii \
--slave $JVM_TAR/orbd orbd $JDK_SRC/orbd \
--slave $JVM_TAR/pack200 pack200 $JDK_SRC/pack200 \
--slave $JVM_TAR/policytool policytool $JDK_SRC/policytool \
--slave $JVM_TAR/rmic rmic $JDK_SRC/rmic \
--slave $JVM_TAR/rmid rmid $JDK_SRC/rmid \
--slave $JVM_TAR/rmiregistry rmiregistry $JDK_SRC/rmiregistry \
--slave $JVM_TAR/schemagen schemagen $JDK_SRC/schemagen \
--slave $JVM_TAR/serialver serialver $JDK_SRC/serialver \
--slave $JVM_TAR/servertool servertool $JDK_SRC/servertool \
--slave $JVM_TAR/tnameserv tnameserv $JDK_SRC/tnameserv \
--slave $JVM_TAR/unpack200 unpack200 $JDK_SRC/unpack200 \
--slave $JVM_TAR/wsgen wsgen $JDK_SRC/wsgen \
--slave $JVM_TAR/wsimport wsimport $JDK_SRC/wsimport \
--slave $JVM_TAR/xjc xjc $JDK_SRC/xjc \
--slave $JVM_TAR/dblook dblook $JDK_DB_SRC/dblook \
--slave $JVM_TAR/ij ij $JDK_DB_SRC/ij \
--slave $JVM_TAR/NetworkServerControl NetworkServerControl $JDK_DB_SRC/NetworkServerControl \
--slave $JVM_TAR/setEmbeddedCP setEmbeddedCP $JDK_DB_SRC/setEmbeddedCP \
--slave $JVM_TAR/setNetworkClientCP setNetworkClientCP $JDK_DB_SRC/setNetworkClientCP \
--slave $JVM_TAR/setNetworkServerCP setNetworkServerCP $JDK_DB_SRC/setNetworkServerCP \
--slave $JVM_TAR/startNetworkServer startNetworkServer $JDK_DB_SRC/startNetworkServer \
--slave $JVM_TAR/stopNetworkServer stopNetworkServer $JDK_DB_SRC/stopNetworkServer \
--slave $JVM_TAR/sysinfo sysinfo $JDK_DB_SRC/sysinfo \
--slave $MAN_TAR man.java $MAN_SRC
