# 数据库加密系统

## 平台简介

## 内置功能
1.	用户管理：用户是系统操作者，该功能主要完成系统用户配置。

## 技术选型
1、后端
* 核心框架：Spring Framework 4.0
* 安全框架：Apache Shiro 1.2
* 视图框架：Spring MVC 4.0
* 服务端验证：Hibernate Validator 5.1
* 布局框架：SiteMesh 2.4
* 工作流引擎：Activiti 5.15、FoxBPM 6
* 任务调度：Spring Task 4.0
* 持久层框架：MyBatis 3.2
* 数据库连接池：Alibaba Druid 1.0
* 缓存框架：Ehcache 2.6、Redis
* 日志管理：SLF4J 1.7、Log4j
* 工具类：Apache Commons、Jackson 2.2、Xstream 1.4、Dozer 5.3、POI 3.9

2、前端

* JS框架：jQuery 1.9。
* CSS框架：Twitter Bootstrap 2.3.1。
* 客户端验证：JQuery Validation Plugin 1.11。

4、平台

* 服务器中间件：在Java EE 5规范（Servlet 2.5、JSP 2.1）下开发，支持应用服务器中间件
有Tomcat 6、Jboss 7、WebLogic 10、WebSphere 8。
* 数据库支持：目前仅提供MySql和Oracle数据库的支持，但不限于数据库，平台留有其它数据库支持接口，
可方便更改为其它数据库，如：SqlServer 2008、MySql 5.5、H2等
* 开发环境：Java EE、Eclipse、Maven、Git

## 安全考虑

1. 开发语言：系统采用Java 语言开发，具有卓越的通用性、高效性、平台移植性和安全性。
2. 分层设计：（数据库层，数据访问层，业务逻辑层，展示层）层次清楚，低耦合，各层必须通过接口才能接入并进行参数校验（如：在展示层不可直接操作数据库），保证数据操作的安全。
3. 双重验证：用户表单提交双验证：包括服务器端验证及客户端验证，防止用户通过浏览器恶意修改（如不可写文本域、隐藏变量篡改、上传非法文件等），跳过客户端验证操作数据库。
4. 安全编码：用户表单提交所有数据，在服务器端都进行安全编码，防止用户提交非法脚本及SQL注入获取敏感数据等，确保数据安全。
5. 密码加密：登录用户密码进行SHA1散列加密，此加密方法是不可逆的。保证密文泄露后的安全问题。
6. 强制访问：系统对所有管理端链接都进行用户身份权限验证，防止用户直接填写url进行访问。

## 快速体验
 运行bin\init-db.bat脚本，即可导入表结构及演示数据(linux操作系统：在控制台中切换至项目根目录，运行命令：mvn antrun:run -Pinit-db)
CREATE DATABASE IF NOT EXISTS jeesite default charset utf8 COLLATE utf8_general_ci; 
运行bin\run-tomcat7.bat或bin\run-jetty.bat，启动Web服务器（第一次运行，需要下载依赖jar包，请耐心等待）。

## 常见问题

1. 有时出现文字乱码：修改Tomcat的server.xml文件的Connector项，增加URIEncoding="UTF-8"
2. 用一段时间提示内存溢出，请修改JVM参数：-Xmx512m -XX:MaxPermSize=256m
3. 为什么新建菜单后看不到新建的菜单？因为授权问题，菜单管理只允许最高管理员账号管理（最高管理员默认账号：thinkgem 密码：admin）。

