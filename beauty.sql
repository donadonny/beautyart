CREATE DATABASE  IF NOT EXISTS `beauty` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `beauty`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: beauty
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` longtext,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` bigint(20) NOT NULL DEFAULT '2',
  `username` varchar(255) NOT NULL DEFAULT '',
  `siteid` bigint(20) NOT NULL DEFAULT '0',
  `type` bigint(20) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `pid` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'关于缀美','<span style=\"color:#333333;line-height:2;font-family:SimSun;background-color:#FFFFFF;\"><strong><span style=\"font-size:16px;\">北京于萍美术培训中心</span></strong><strong><span style=\"font-size:16px;\">(北京于萍画室)</span></strong><span style=\"font-size:16px;\">成立于2001年，在历经了十年磨砺与沉淀之后，已成为师资力量雄</span></span><span style=\"color:#333333;font-family:宋体;line-height:2;background-color:#FFFFFF;\"><strong></strong><strong></strong><span style=\"font-family:SimSun;font-size:16px;\">厚，教学体系严谨的国内知名品牌画室。画室坐落于北京市朝阳区望京板块的核心，地理位置优越，闹中取静，交通便利。于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">与中央美术学院和798艺术区毗邻，具有得天独厚的学术氛围和资源优势。</span></span><span style=\"color:#333333;font-family:宋体;line-height:2;background-color:#FFFFFF;\"><span style=\"font-family:SimSun;font-size:16px;\">于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">作为全国较具影响力的美术培训机构，一流的教学实力是其发展的核心所在。于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">由全国美术高考培训界享有较高知名度和美誉度的于萍老师亲自带队教学，执教团队是由毕业于中央美术学院、清华美院的专业过硬、教学经验丰富的一流师资组成。在北京，大家都知道</span></span><span style=\"color:#333333;font-family:宋体;line-height:normal;background-color:#FFFFFF;\"><span style=\"line-height:24px;font-family:SimSun;font-size:16px;\">于萍画室</span><span style=\"line-height:2;font-family:SimSun;font-size:16px;\">的全明星实力阵容，于萍画室</span><span style=\"line-height:2;font-family:SimSun;font-size:16px;\">与时俱进的教学思路，严谨务实的教学态度，不仅赢得了学生的信任，更是画室实力的保证！&nbsp;</span></span><br />\r\n<span style=\"color:#333333;font-family:宋体;line-height:2;background-color:#FFFFFF;\"><span style=\"font-family:SimSun;font-size:16px;\">&nbsp;&nbsp;&nbsp; 升学率高是于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">的生命所在，2006---2016年，画室连续几年在美术高考培训方面取得了优异的成绩。其中各省联考通过率99%，取得过中央美院造型第一名、国画第一名、建筑第二名；清华美院造型第一名、设计第二名；中戏第一名；中国传媒第一名、第三名；北京电影第四名、第六名；国美第三名；天美第一名；川美第一名；广美第二名；鲁美第一名等优异成绩。取得成绩的同时画室并没有盲目扩大，而是严格限招，稳扎稳打。2016年，于萍画室已连续3年中央美术学院国画全国第一名，成就该专业三连冠，另外国画附中保送第一名，港澳台第一名出自于萍画室。参加考试的200名学员中，有一百七十余人通过中央，清华，北京名校与全国八大美院，得到广大师生和家长的拥护和一致好评。</span></span><br />\r\n<span style=\"color:#333333;font-family:宋体;line-height:2;background-color:#FFFFFF;\"><span style=\"font-family:SimSun;font-size:16px;\">&nbsp; &nbsp;于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">将一如既往的坚持“出</span><span style=\"font-family:SimSun;font-size:16px;\">成绩·出人才”为核心理念，走精品教学，精英教育的路线，保证全国最强名校升学率。我们的目标始终是------让所有的学生都上北京名校或全国八大美院，优中选优实现央美，清华梦！选择于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">，</span><span style=\"font-family:SimSun;font-size:16px;\">离梦想更近一步！&nbsp;</span></span><br />\r\n<span style=\"color:#333333;font-family:宋体;line-height:2;background-color:#FFFFFF;\"><span style=\"font-family:SimSun;font-size:16px;\">&nbsp;&nbsp;&nbsp; 2016年，于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">与大家齐心协力，再接再厉，为了我们共同的目标与梦想！……</span></span>','2016-07-29 22:17:34',NULL,4,1,'admin',0,0,'ZmlsZSUyRmltYWdlJTJGMjAxNjA3MjklMkZXMDIwMTUxMDEyNDQ1NzIyNTAzMzA4LmpwZw==',0),(2,'画室简介','','2016-07-29 22:24:54',NULL,4,1,'admin',0,0,'',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `address` longtext,
  `phone` varchar(255) NOT NULL DEFAULT '',
  `webinfo` longtext,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `slogan` longtext,
  `code1` longtext,
  `code2` longtext,
  `code3` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'广州缀美美术学校官网','<div class=\"fl\" align=\"center\">\r\n	<div class=\"li\">\r\n		<h2>\r\n			顶级师资团队全职任教：5大清华央美状元+10大全国名师+央美教师\r\n		</h2>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">李阁(清华状元)：孙逊(央美状元);郭创(央美状元);孙启伟(清华状元);陈鸿毅(央美状元)</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">杨彪(全国名师)；史吉(全国名师)；魏伟(全国名师)；王世双(全国名师)；陈军泽(全国名师)；刘嘉(央美设计名师)；何禹霏(全国设计名师)；汪菲(央美设计名师)；老曲(全国名师)；李飞（全国名师）</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">孙保江(央美教师：曾培养过央美状元)</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">如此强大师资，全国仅此一家</span> \r\n		</p>\r\n	</div>\r\n	<div class=\"li\">\r\n		<h2>\r\n			<span style=\"line-height:1.5;\">独特“精益”教学模式</span> \r\n		</h2>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">精细：小班制教学，一个老师教10—15名学生 (保证质量，保证进度，保证成绩)</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">精准：重实战，狠抓得分点，直击各科本质，深谙考试要点</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">精心：严抓进度，绝不让任何一个学生掉队，严把教学关，保证90%以上升学率</span> \r\n		</p>\r\n	</div>\r\n</div>','<div align=\"center\">\r\n	<br />\r\n	<p align=\"left\">\r\n		<br />\r\n<img src=\"http://localhost:8080/public/file/getfile?token=ZmlsZSUyRmltYWdlJTJGMjAxNjA3MzAlMkZQMDIwMTYwNjA3MzcxMjMxOTk2MjY5LmpwZw==\" alt=\"\" height=\"362\" width=\"396\" /> &nbsp; &nbsp; &nbsp;\r\n		<iframe src=\"http://localhost:8080/static/admin/kindeditor/plugins/baidumap/index.html?center=121.473704%2C31.230393&amp;zoom=11&amp;width=558&amp;height=360&amp;markers=121.473704%2C31.230393&amp;markerStyles=l%2CA\" style=\"width:560px;height:362px;\" frameborder=\"0\">\r\n		</iframe>\r\n&nbsp;\r\n	</p>\r\n</div>','02200000','','ZmlsZSUyRmltYWdlJTJGMjAxNjA3MjklMkZRUSVFNiU4OCVBQSVFNSU5QiVCRTIwMTYwNzI5MjE1MTM0LmpwZw==','','','','Copyright © 2012-2015,www.beautyart.top All rights reserved<br/>\r\n版权所有 ©广州缀美美术学校官网 粤ICP备00000号');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'画室官网','后台管理',1,1),(2,'画室官网','文章管理',1,2),(3,'画室官网','图片管理',1,3);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '1',
  `pid` bigint(20) NOT NULL DEFAULT '0',
  `remark` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES (1,'权限中心','rbac',1,0,'',1,1),(2,'节点管理','node/index',2,1,'',1,1),(3,'节点首页','Index',3,2,'',1,1),(4,'增编节点','AddAndEdit',3,2,'',1,1),(5,'删除节点','DelNode',3,2,'',1,1),(6,'用户管理','user/index',2,1,'',1,1),(7,'用户首页','Index',3,6,'',1,1),(8,'增加用户','AddUser',3,6,'',1,1),(9,'更新用户','UpdateUser',3,6,'',1,1),(10,'删除用户','DelUser',3,6,'',1,1),(11,'分组管理','group/index',2,1,'',1,1),(12,'分组首页','Index',3,11,'',1,1),(13,'增加分组','AddGroup',3,11,'',1,1),(14,'更新分组','UpdateGroup',3,11,'',1,1),(15,'删除分组','DelGroup',3,11,'',1,1),(16,'角色管理','role/index',2,1,'',1,1),(17,'角色首页','index',3,16,'',1,1),(18,'增编角色','AddAndEdit',3,16,'',1,1),(19,'删除角色','DelRole',3,16,'',1,1),(20,'列出角色','GetList',3,16,'',1,1),(21,'显示权限','AccessToNode',3,16,'',1,1),(22,'增加权限','AddAccess',3,16,'',1,1),(23,'列出角色下用户','RoleToUserList',3,16,'',1,1),(24,'授予用户角色','AddRoleToUser',3,16,'',1,1),(25,'配置中心','config',1,0,'',1,1),(26,'网站配置','option/index',2,25,'',1,1),(27,'网站配置首页','Index',3,26,'',1,1),(28,'更新网站配置','UpdateOption',3,26,'',1,1),(29,'个人信息','user/index',2,25,'',1,1),(30,'个人信息首页','Index',3,29,'',1,1),(31,'更新个人信息','UpdateUser',3,29,'',1,1),(32,'文章中心','blog',1,0,'',1,2),(33,'目录列表','category/index',2,32,'',1,2),(34,'目录列表首页','Index',3,33,'',1,2),(35,'增加目录','AddCategory',3,33,'',1,2),(36,'修改目录','UpdateCategory',3,33,'',1,2),(37,'文章列表','paper/index',2,32,'',1,2),(38,'文章列表首页','Index',3,37,'',1,2),(39,'增加文章','AddPaper',3,37,'',1,2),(40,'修改文章','UpdatePaper',3,37,'',1,2),(41,'回收文章','DeletePaper',3,37,'',1,2),(42,'删除文章','RealDelPaper',3,37,'',1,2),(43,'图片中心','picture',1,0,'',1,3),(44,'相册管理','album/index',2,43,'',1,3),(45,'相册首页','Index',3,44,'',1,3),(46,'增加相册','AddAlbum',3,44,'',1,3),(47,'删除相册','DeleteAlbum',3,44,'',1,3),(48,'修改相册','UpdateAlbum',3,44,'',1,3),(49,'图片管理','photo/index',2,43,'',1,3),(50,'图片首页','Index',3,49,'',1,3),(51,'增加图片','AddPhoto',3,49,'',1,3),(52,'回收图片','DeletePhoto',3,49,'',1,3),(53,'修改图片','UpdatePhoto',3,49,'',1,3),(54,'删除图片','RealDelPhoto',3,49,'',1,3),(55,'删除目录','DeleteCategory',3,33,'',1,2),(56,'文章回收站','paper/rubbish',2,32,'',1,2),(57,'文章回收站','Rubbish',3,56,'',1,2),(58,'图片回收站','photo/rubbish',2,43,'',1,3),(59,'图片回收站','Rubbish',3,58,'',1,3),(60,'首页轮转','roll/index',2,25,'',1,1),(61,'轮转列表','Index',3,60,'',1,1),(62,'增加轮转','AddRoll',3,60,'',1,1),(63,'更新轮转','UpdateRoll',3,60,'',1,1),(64,'删除轮转','DeleteRoll',3,60,'',1,1);
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_roles`
--

DROP TABLE IF EXISTS `node_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_roles`
--

LOCK TABLES `node_roles` WRITE;
/*!40000 ALTER TABLE `node_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `descontent` longtext,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` bigint(20) NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `view` bigint(20) NOT NULL DEFAULT '0',
  `cid` bigint(20) NOT NULL DEFAULT '0',
  `istop` bigint(20) NOT NULL DEFAULT '0',
  `ishot` bigint(20) NOT NULL DEFAULT '0',
  `isroll` bigint(20) NOT NULL DEFAULT '0',
  `rollpath` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'管理员角色','管理员','权限最高的一群人',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roll`
--

DROP TABLE IF EXISTS `roll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roll` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` bigint(20) NOT NULL DEFAULT '0',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `view` bigint(20) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roll`
--

LOCK TABLES `roll` WRITE;
/*!40000 ALTER TABLE `roll` DISABLE KEYS */;
INSERT INTO `roll` VALUES (1,'示例1','请输入图片描述','2016-07-29 05:46:17','2016-07-29 21:47:44',1,1,'ZmlsZSUyRmltYWdlJTJGMjAxNjA3MjklMkZQMDIwMTYwNjA3MzcxMjMxOTk2MjY5LmpwZw==',0,'http://www.lenggirl.com'),(2,'示例二','请输入图片描述','2016-07-29 05:46:51','2016-07-29 21:47:58',2,1,'ZmlsZSUyRmltYWdlJTJGMjAxNjA3MjklMkZXMDIwMTYwNTIzNTg5ODkwMDExMDE5LmpwZw==',0,'http://ei.lenggirl.com'),(3,'实例三','请输入图片描述','2016-07-29 13:47:31',NULL,0,1,'ZmlsZSUyRmltYWdlJTJGMjAxNjA3MjklMkZXMDIwMTYwNjI3MzcxOTkzMTM2MTE2LmpwZw==',0,'http://blog.lenggirl.com');
/*!40000 ALTER TABLE `roll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logincount` int(11) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `nickname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `remark` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `lastlogintime` datetime DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `lastip` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,2,'admin','21232f297a57a5a743894a0e4a801fc3','画室','569929309@qq.com','最高权限的王',2,'2016-07-29 22:44:39','2016-07-29 05:41:53','['),(2,0,'user','ee11cbb19052e40b07aac0ca060c23ee','测试用户','569929309@qq.com','测试用户',2,NULL,'2016-07-29 21:41:53','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'beauty'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-30  0:47:24
