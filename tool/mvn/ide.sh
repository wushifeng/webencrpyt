#!/bin/bash

sudo unzip -o apache-maven-3.3.3-bin.zip -d /usr/local

cat /etc/profile | grep 'apache-maven-3.3.3'
if [ $? -eq 1 ]; then
	sudo chmod o+w /etc/profile
	sudo echo 'export PATH=/usr/local/apache-maven-3.3.3/bin:$PATH' >> /etc/profile
	sudo chmod o-w /etc/profile
fi

#nexus-2.12.0-01-bundle.zip 部署在 172.16.1.201的虚机ubuntu上，物理机上通过portmap.exe进行端口镜像 8081端口
#central.tar.gz中的jar和版本信息等放到 /root/nexus/sonatype-work/nexus/storage/central 下
#执行 /root/nexus/nexus-2.12.0-01/bin/nexus 即可访问maven仓库 http://dev.csbit.cn:8081/nexus/content/groups/public
mkdir -p ~/.m2
cp settings.xml ~/.m2/.

cat /etc/hosts | grep 'dev.csbit.cn'
if [ $? -eq 1 ]; then
	sudo echo '172.16.1.201	dev.csbit.cn	dev.csbit.cn' >> /etc/hosts
fi

source /etc/profile
mvn --version

#本地jar包maven依赖安装方法（以javax.mail-1.5.5.jar为例）：
#1. 在外网http://mvnrepository.com 查询javax.mail包的相关信息，包括groupId,artifactId和version:
#	<dependency>
#		<groupId>com.sun.mail</groupId>
#		<artifactId>javax.mail</artifactId>
#		<version>1.5.5</version>
#	<dependency>
#	注意：此处的groupId、artifactId、version也可以自己随意写，为与jar包信息统一，最好根据外网查询结果填写，如果查询没有，可根据jar包内容填写。
#2. 执行mvn install命令
#	命令说明如下：
#		mvn install:install-file -Dfile=jar包路径 -DgroupId=jar包groupId -DartifactId=jar包artifactId -Dversion=jar包version -Dpackaging=jar
#	对应安装javax.mail-1.5.5.jar的命令如下：
#		mvn install:install-file -Dfile=/root/mvn/javax.mail-1.5.5.jar -DgroupId=com.sun.mail -DartifactId=javax.mail -Dversion=1.5.5 -Dpackaging=jar
#	注意：命令中不要有多余的空格，否则会导致安装失败。
#3. pom.xml中添加相关依赖即可
