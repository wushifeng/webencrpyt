@echo off
echo.
echo [信息] 安装中央仓库缺失jar。
echo.
rem pause
rem echo.

set MAVEN_OPTS=%MAVEN_OPTS% -Xms256m -Xmx512m -XX:PermSize=128m -XX:MaxPermSize=256m

goto inst
mvn 显示的缺包
http://mvnrepository.com

org.hibernate:hibernate-validator:jar:4.3.0,
javax:validation-api:jar:1.0.0,
org.apache.commons:commons-dbcp:jar:1.3,
org.apache.commons:commons-pool:jar:1.5.4,
com.oracle:ojdbc7:jar:12.1.0.1,
com.ibm:db2jcc:jar:1.2,
com.microsoft.sqlserver:sqljdbc42:jar:4.2,
com.dm6.jdbc:dameng:jar:6,
com.dm.jdbc:dameng:jar:7,
com.informix.jdbc:informix:jar:10,
org.apache.commons:commons-io:jar:2.2,
com.zeroc:Ice:jar:3.5.0,
org.newsclub.net:junixsocket-mysql:jar:1.3,
org.newsclub.net:junixsocket:jar:1.3,
org.snmp4j:snmp4j:jar:2.2.2,
org.hyperic:sigar:jar:1.6.4,
org.apache.commons:commons-lang3:jar:4.1

:inst
cd ../lib
call mvn install:install-file -Dfile=dameng-6.jar -DgroupId=com.dm6.jdbc -DartifactId=dameng -Dversion=6 -Dpackaging=jar
call mvn install:install-file -Dfile=dameng-7.jar -DgroupId=com.dm.jdbc -DartifactId=dameng -Dversion=7 -Dpackaging=jar
call mvn install:install-file -Dfile=informix-10.jar -DgroupId=com.informix.jdbc -DartifactId=informix -Dversion=10 -Dpackaging=jar
call mvn install:install-file -Dfile=ojdbc7-12.1.0.1.jar -DgroupId=com.oracle -DartifactId=ojdbc7 -Dversion=12.1.0.1 -Dpackaging=jar
call mvn install:install-file -Dfile=db2jcc-1.2.jar -DgroupId=com.ibm -DartifactId=db2jcc -Dversion=1.2 -Dpackaging=jar
call mvn install:install-file -Dfile=sqljdbc42-4.2.jar -DgroupId=com.microsoft.sqlserver -DartifactId=sqljdbc42 -Dversion=4.2 -Dpackaging=jar

call mvn install:install-file -Dfile=junixsocket-1.3.jar -DgroupId=org.newsclub.net -DartifactId=junixsocket -Dversion=1.3 -Dpackaging=jar
call mvn install:install-file -Dfile=junixsocket-mysql-1.3.jar -DgroupId=org.newsclub.net -DartifactId=junixsocket-mysql -Dversion=1.3 -Dpackaging=jar

call mvn install:install-file -Dfile=Ice-3.5.0.jar -DgroupId=com.zeroc -DartifactId=Ice -Dversion=3.5.0 -Dpackaging=jar

call mvn install:install-file -Dfile=sigar-1.6.4.jar -DgroupId=org.hyperic -DartifactId=sigar -Dversion=1.6.4 -Dpackaging=jar

call mvn install:install-file -Dfile=snmp4j-2.2.2.jar -DgroupId=org.snmp4j -DartifactId=snmp4j -Dversion=2.2.2 -Dpackaging=jar

cd ../bin
