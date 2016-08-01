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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'关于缀美','<span style=\"color:#333333;line-height:2;font-family:SimSun;background-color:#FFFFFF;\"><strong><span style=\"font-size:16px;\">北京于萍美术培训中心</span></strong><strong><span style=\"font-size:16px;\">(北京于萍画室)</span></strong><span style=\"font-size:16px;\">成立于2001年，在历经了十年磨砺与沉淀之后，已成为师资力量雄</span></span><span style=\"color:#333333;font-family:宋体;line-height:2;background-color:#FFFFFF;\"><strong></strong><strong></strong><span style=\"font-family:SimSun;font-size:16px;\">厚，教学体系严谨的国内知名品牌画室。画室坐落于北京市朝阳区望京板块的核心，地理位置优越，闹中取静，交通便利。于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">与中央美术学院和798艺术区毗邻，具有得天独厚的学术氛围和资源优势。</span></span><span style=\"color:#333333;font-family:宋体;line-height:2;background-color:#FFFFFF;\"><span style=\"font-family:SimSun;font-size:16px;\">于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">作为全国较具影响力的美术培训机构，一流的教学实力是其发展的核心所在。于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">由全国美术高考培训界享有较高知名度和美誉度的于萍老师亲自带队教学，执教团队是由毕业于中央美术学院、清华美院的专业过硬、教学经验丰富的一流师资组成。在北京，大家都知道</span></span><span style=\"color:#333333;font-family:宋体;line-height:normal;background-color:#FFFFFF;\"><span style=\"line-height:24px;font-family:SimSun;font-size:16px;\">于萍画室</span><span style=\"line-height:2;font-family:SimSun;font-size:16px;\">的全明星实力阵容，于萍画室</span><span style=\"line-height:2;font-family:SimSun;font-size:16px;\">与时俱进的教学思路，严谨务实的教学态度，不仅赢得了学生的信任，更是画室实力的保证！&nbsp;</span></span><br />\r\n<span style=\"color:#333333;font-family:宋体;line-height:2;background-color:#FFFFFF;\"><span style=\"font-family:SimSun;font-size:16px;\">&nbsp;&nbsp;&nbsp; 升学率高是于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">的生命所在，2006---2016年，画室连续几年在美术高考培训方面取得了优异的成绩。其中各省联考通过率99%，取得过中央美院造型第一名、国画第一名、建筑第二名；清华美院造型第一名、设计第二名；中戏第一名；中国传媒第一名、第三名；北京电影第四名、第六名；国美第三名；天美第一名；川美第一名；广美第二名；鲁美第一名等优异成绩。取得成绩的同时画室并没有盲目扩大，而是严格限招，稳扎稳打。2016年，于萍画室已连续3年中央美术学院国画全国第一名，成就该专业三连冠，另外国画附中保送第一名，港澳台第一名出自于萍画室。参加考试的200名学员中，有一百七十余人通过中央，清华，北京名校与全国八大美院，得到广大师生和家长的拥护和一致好评。</span></span><br />\r\n<span style=\"color:#333333;font-family:宋体;line-height:2;background-color:#FFFFFF;\"><span style=\"font-family:SimSun;font-size:16px;\">&nbsp; &nbsp;于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">将一如既往的坚持“出</span><span style=\"font-family:SimSun;font-size:16px;\">成绩·出人才”为核心理念，走精品教学，精英教育的路线，保证全国最强名校升学率。我们的目标始终是------让所有的学生都上北京名校或全国八大美院，优中选优实现央美，清华梦！选择于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">，</span><span style=\"font-family:SimSun;font-size:16px;\">离梦想更近一步！&nbsp;</span></span><br />\r\n<span style=\"color:#333333;font-family:宋体;line-height:2;background-color:#FFFFFF;\"><span style=\"font-family:SimSun;font-size:16px;\">&nbsp;&nbsp;&nbsp; 2016年，于萍画室</span><span style=\"font-family:SimSun;font-size:16px;\">与大家齐心协力，再接再厉，为了我们共同的目标与梦想！……</span></span>','2016-07-29 22:17:34','2016-07-30 14:57:52',4,1,'画室',0,0,'/file/image/20160730/20160730145748P020160607371231996269.jpg',0),(2,'画室简介','','2016-07-29 22:24:54',NULL,4,1,'admin',0,0,'',1),(3,'高考喜报','','2016-07-30 14:58:47','2016-07-30 17:51:21',0,1,'画室',0,0,'/file/image/20160730/20160730175119QQ截图20160729215134.jpg',0),(4,'画室动态','','2016-07-30 14:59:14','2016-07-30 18:30:55',0,1,'画室',0,0,'/file/image/20160730/W020160627371993136116.jpg',0),(5,'招生动态','','2016-07-30 14:59:27','2016-07-30 15:32:46',0,1,'画室',0,0,'',4),(6,'美术资讯','','2016-07-30 14:59:38','2016-07-30 15:42:58',0,1,'画室',0,0,'',0),(7,'学员风采','','2016-07-30 15:02:09','2016-07-30 15:37:48',0,1,'admin',0,1,'',12),(9,'作品展示','<div>\r\n	<div class=\"zm-editable-content clearfix\">\r\n		贫僧认识不少与老外交往的女生，且贫僧素不喜暴露三观，加上长得丑，许多姑娘就愿意稍稍放开心怀，和贫僧聊一聊和老外的那些事。<br />\r\n大而化之，就是：求绿卡、器大活好、帅的，不到5%；剩下的，都是因为对方是姑娘想要的那款。而且我们必须承认，姑娘们对中国男人的指责，部分还是很有道理滴。<br />\r\n首先，指几个热点。<br />\r\n<b>器大活好。</b><br />\r\nInterracial 的片子点击率从来不低，因为黑的粗的，骑在白的嫩的身上，冲击力确实够猛。观影多后，贫僧也对黑人白人的尺寸充满敬畏，总觉得那是一力降十技，无解。<br />\r\n等到后来到尼日利亚，发现当地基建太差，公测是个奢侈品。上至部长下到走夫，一尿急都是路边解决。观鸟多只（太tm基了），总觉得，嗯，差不多呀。请小工来家里挖井，劳作毕，大家一排靠墙站着，开尿。余光瞄去，感觉是稍微长点，但也没有片子里的那么夸张。心稍安。<br />\r\n后认识一在印度人工程做总工程师的开平老乡，闲聊之余，他拿出手机炫耀战利品。这厮居然把工厂里近百个黑人少女都睡了！贫僧抱着瞻仰民族英雄的心情与他交流：大哥，够用么？<br />\r\n够用！和国内的没区别！\r\n	</div>\r\n<br />\r\n作者：王子君<br />\r\n链接：http://www.zhihu.com/question/24300261/answer/27369549<br />\r\n来源：知乎<br />\r\n著作权归作者所有，转载请联系作者获得授权。\r\n</div>','2016-07-30 15:03:22','2016-07-31 17:55:25',0,1,'admin',0,1,'/file/image/20160731/W020151012445722503308.jpg',0),(10,'素描','','2016-07-30 15:04:00',NULL,0,1,'admin',0,1,'',9),(11,'色彩','','2016-07-30 15:04:09',NULL,0,1,'admin',0,1,'',9),(12,'人物风采','','2016-07-30 15:37:38',NULL,0,1,'admin',0,1,'',0),(13,'教师风采','','2016-07-30 15:38:07',NULL,0,1,'admin',0,1,'',12),(14,'每日动态','','2016-07-30 15:41:24','2016-07-30 21:30:37',0,1,'画室',0,0,'/file/image/20160730/20160730213036P020160607371231996269.jpg',4),(15,'学生作品','','2016-07-30 15:45:18','2016-07-30 23:47:22',0,1,'admin',0,1,'',9),(16,'教师示例','','2016-07-30 15:45:42',NULL,0,1,'admin',0,1,'',9);
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
INSERT INTO `config` VALUES (1,'广州缀美美术学校官网','<div class=\"fl\" align=\"center\">\r\n	<div class=\"li\">\r\n		<h2>\r\n			顶级师资团队全职任教：5大清华央美状元+10大全国名师+央美教师\r\n		</h2>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">李阁(清华状元)：孙逊(央美状元);郭创(央美状元);孙启伟(清华状元);陈鸿毅(央美状元)</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">杨彪(全国名师)；史吉(全国名师)；魏伟(全国名师)；王世双(全国名师)；陈军泽(全国名师)；刘嘉(央美设计名师)；何禹霏(全国设计名师)；汪菲(央美设计名师)；老曲(全国名师)；李飞（全国名师）</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">孙保江(央美教师：曾培养过央美状元)</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">如此强大师资，全国仅此一家</span> \r\n		</p>\r\n	</div>\r\n	<div class=\"li\">\r\n		<h2>\r\n			<span style=\"line-height:1.5;\">独特“精益”教学模式</span> \r\n		</h2>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">精细：小班制教学，一个老师教10—15名学生 (保证质量，保证进度，保证成绩)</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">精准：重实战，狠抓得分点，直击各科本质，深谙考试要点</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:1.5;\">精心：严抓进度，绝不让任何一个学生掉队，严把教学关，保证90%以上升学率</span> \r\n		</p>\r\n	</div>\r\n</div>','<div align=\"center\">\r\n	<br />\r\n	<p align=\"left\">\r\n		<br />\r\n<img src=\"http://localhost:8080/public/file/getfile?token=ZmlsZSUyRmltYWdlJTJGMjAxNjA3MzAlMkZQMDIwMTYwNjA3MzcxMjMxOTk2MjY5LmpwZw==\" alt=\"\" height=\"366\" width=\"400\" title=\"\" align=\"\" /> &nbsp; &nbsp; &nbsp;\r\n		<iframe src=\"http://localhost:8080/static/admin/kindeditor/plugins/baidumap/index.html?center=121.473704%2C31.230393&amp;zoom=11&amp;width=558&amp;height=360&amp;markers=121.473704%2C31.230393&amp;markerStyles=l%2CA\" style=\"width:560px;height:362px;\" frameborder=\"0\">\r\n		</iframe>\r\n&nbsp;<img src=\"/file/image/20160730/W020160523589890011019.jpg\" alt=\"\" width=\"500\" height=\"220\" title=\"\" align=\"\" />二维码请扫左边。\r\n	</p>\r\n</div>','0768-6833066','{\"1\":{\"name\":\"每日动态\",\"limit\":6},\r\n\"2\":{\"name\":\"画室动态\",\"limit\":6},\r\n\"3\":{\"name\":\"招生动态\",\"limit\":6},\r\n\"4\":{\"name\":\"美术资讯\",\"limit\":6},\r\n\"5\":{\"name\":\"高考喜报\",\"limit\":6},\r\n\"6\":{\"name\":\"学员风采\",\"limit\":3},\r\n\"7\":{\"name\":\"教师风采\",\"limit\":3},\r\n\"8\":{\"name\":\"学生作品\",\"limit\":6}}','/file/image/20160730/20160730125745P020160607371231996269.jpg','广州缀美美术学校官网广州缀美美术学校官网广州缀美美术学校官网','beautyart','','<p style=\"text-align:center;\">\r\n	<span style=\"line-height:1.5;font-size:14px;\">友情链接：烦烦烦分&nbsp;<img src=\"/file/image/20160730/20160730235713W020160627371993136116.jpg\" alt=\"\" width=\"500\" height=\"220\" title=\"\" align=\"\" /><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:1.5;font-size:14px;\">Copyright &copy; 2012-2015,www.beautyart.top All rights reserved</span> \r\n</p>\r\n<div style=\"text-align:center;\">\r\n	<span style=\"line-height:1.5;font-size:14px;\">版权所有 &copy;广州缀美美术学校官网 粤ICP备00000号</span> \r\n</div>');
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
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES (1,'招生办党支部召开 “两学一做学习教育会招生办党支部召开 “两学一做学习教育会','','','2016-07-30 09:53:06','2016-07-30 15:02:06',0,1,'gg','',1,3,1,0,0,'',0),(2,'substrsubstrsubstr','','','2016-07-30 17:56:54','2016-07-30 23:02:11',0,1,'s','/file/image/20160730/20160730203332QQ截图20160729215134.jpg',0,14,0,0,0,'',0),(3,'招生办党支部召开 “两学一做学习教育会招生办党支部召开 “两学一做学习教育会','','','2016-07-30 18:06:55','2016-07-30 23:02:11',0,1,'招生办党支部召开 “两学一做学习教育会','',0,3,0,0,0,'',0),(4,'招生办党支部召开 “两学一做学习教育会招生办党支部召开 “两学一做学习教育会','','','2016-07-30 18:07:40','2016-07-30 23:02:17',0,1,'招生办党支部召开 “两学一做学习教育会','',0,3,0,0,0,'',0),(5,'招生办党支部召开 “两学一做学习教育会','','','2016-07-30 18:10:26','2016-07-30 23:02:17',0,1,'5545','',0,3,0,0,0,'',0),(6,'招生办党支部召开 “两学一做学习教育会','','','2016-07-30 18:14:07','2016-07-30 23:02:18',0,1,'招生办党支部召开 “两学一做学习教育会','',0,3,0,0,0,'',0),(7,'http://localhost:8080/blog/paper/addpaper','','','2016-07-30 18:36:32','2016-07-30 23:02:18',0,1,'http://localhost:8080/blog/paper/addpaper','',0,4,0,0,0,'',0),(8,'http://localhost:8080/blog/paper/addpaperhttp://localhost:8080/blog/paper/addpaper','','','2016-07-30 18:37:18','2016-07-30 23:02:19',0,1,'http://localhost:8080/blog/paper/addpaper','',0,4,0,0,0,'',0),(9,'http://localhost:8080/blog/paper/addpaper','','','2016-07-30 18:38:22','2016-07-30 23:02:19',0,1,'http://localhost:8080/blog/paper/addpaper','',0,4,0,0,0,'',0),(10,'招生办党支部召开 “两学一做学习教育会招...','','','2016-07-30 18:38:40','2016-07-30 23:02:19',0,1,'招生办党支部召开 “两学一做学习教育会招...','/file/image/20160730/20160730203310W020160627371993136116.jpg',0,14,0,0,0,'',0),(11,'招生办党支部召开 “两学一做学习教育会招...','','','2016-07-30 18:38:55','2016-07-30 23:02:07',0,1,'招生办党支部召开 “两学一做学习教育会招...','',0,4,1,0,0,'',0),(12,'招生办党支部召开 “两学一做学习教育会招...招生办党支部召开 “两学一做学习教育会招...','','','2016-07-30 18:39:20','2016-07-30 23:02:08',0,1,'招生办党支部召开 “两学一做学习教育会招...','',0,5,1,0,0,'',0),(13,'招生办党支部召开 “两学一做学习教育会招...招生办党支部召开 “两学一做学习教','','','2016-07-30 18:40:49','2016-07-30 23:02:08',0,1,'招生办党支部召开 “两学一做学习教育会招...','',0,5,1,0,0,'',0),(14,'招生办党支部召开 “两学一做学习教育会招...招生办党支部召开 “两学一做学习教育会招...','','','2016-07-30 18:41:23','2016-07-30 23:02:20',0,1,'招生办党支部召开 “两学一做学习教育会招...','',0,5,0,0,0,'',0),(15,'招生办党支部召开 “两学一做学习教育会招...','','','2016-07-30 18:41:35','2016-07-30 23:02:20',0,1,'招生办党支部召开 “两学一做学习教育会招...','',0,5,0,0,0,'',0),(16,'招生办党支部召开 “两学一做学习教育会招...','','生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...','2016-07-30 18:41:48','2016-07-30 23:02:09',0,1,'招生办党支部召开 “两学一做学习教育会招...','/file/image/20160730/20160730203122W020160627371993136116.jpg',0,14,1,0,0,'',0),(17,'招生办党支部召开 “两学一做学习教育会招...','','','2016-07-30 18:42:09','2016-07-30 23:02:20',0,1,'招生办党支部召开 “两学一做学习教育会招...','',0,5,0,0,0,'',0),(18,'招生办党支部召开 “两学一做学习教育会招...','','','2016-07-30 18:42:49','2016-07-30 23:02:09',0,1,'招生办党支部召开 “两学一做学习教育会招...','',0,6,1,0,0,'',0),(19,'DescontentDescontentDescontentDescontentDescontentDescontentDescontentDescontentDescontentDescontent','','<pre><span style=\"background-color:#e4e4ff;\">Descontent</span></pre>\r\n<pre><span style=\"background-color:#e4e4ff;\">Descontent<img src=\"/file/image/20160730/20160730202235P020160607371231996269.jpg\" alt=\"\" /></span></pre>\r\n<pre><span style=\"background-color:#e4e4ff;\">Descontent</span></pre>\r\n<pre><span style=\"background-color:#e4e4ff;\">Descontent</span></pre>\r\n<pre><span style=\"background-color:#e4e4ff;\">Descontent</span></pre>\r\n<pre><span style=\"background-color:#e4e4ff;\">Descontent</span></pre>\r\n<pre><span style=\"background-color:#e4e4ff;\">Descontent</span></pre>','2016-07-30 20:21:07','2016-07-30 23:01:39',0,0,'DescontentDescontentDescontentDescontent','/file/image/20160730/20160730202126P020160607371231996269.jpg',0,14,0,0,0,'',0),(20,'生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...','','<a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a><a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a>','2016-07-30 20:27:36','2016-07-30 23:02:10',0,1,'生办党支部召开 “两学一做学习教育会招...','/file/image/20160730/20160730202755QQ截图20160729215134.jpg',0,14,1,0,0,'',0),(21,'生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...','<a target=\"_blank\" href=\"http://localhost:8080/3/1\" class=\"tit\">生办党支部召开 “两学一做学习教育会招...</a>','生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...','2016-07-30 20:30:21','2016-07-30 23:02:10',0,1,'生办党支部召开 “两学一做学习教育会招...生办党支部召开 “两学一做学习教育会招...','/file/image/20160730/20160730203009QQ截图20160729215134.jpg',0,14,1,0,0,'',0),(22,'{{if lt $i 2}}{{if lt $i 2}}{{if lt $i 2}}','','<pre>{{<span style=\"color:#000080;font-weight:bold;\">if </span>lt $i 2}}</pre>\r\n<pre>{{<span style=\"color:#000080;font-weight:bold;\">if </span>lt $i 2}}</pre>\r\n<pre>{{<span style=\"color:#000080;font-weight:bold;\">if </span>lt $i 2}}</pre>','2016-07-30 22:37:07','2016-07-30 23:01:39',0,0,'{{if lt $i 2}}{{if lt $i 2}}{{if lt $i 2}}','ZmlsZSUyRmltYWdlJTJGMjAxNjA3MzAlMkYyMDE2MDczMDIyMzg0NVAwMjAxNjA2MDczNzEyMzE5OTYyNjkuanBn',0,5,0,0,0,'',0),(23,'htrfhrtcddhtrfhrtcddhtrfhrtcdd','','','2016-07-30 23:03:32',NULL,0,1,'htrfhrtcddhtrfhrtcddhtrfhrtcdd','/file/image/20160730/20160730230329P020160607371231996269.jpg',0,7,0,0,0,'',0),(24,'ffff','','','2016-07-30 23:21:24',NULL,0,1,'ggg','/file/image/20160730/20160730232112W020160627371993136116.jpg',0,7,0,0,0,'',0),(25,'ergreg','','','2016-07-30 23:23:50','2016-07-30 23:26:19',0,1,'gerg','/file/image/20160730/20160730232344P020160607371231996269.jpg',0,7,0,0,0,'',1),(26,'222222','','','2016-07-30 23:27:38','2016-07-30 23:45:15',0,1,'drd','/file/image/20160730/20160730232732P020160607371231996269.jpg',0,7,0,0,1,'',1),(27,'eeeeeeeeeee','','','2016-07-30 23:33:52',NULL,0,1,'eee','/file/image/20160730/20160730233348P020160607371231996269.jpg',0,7,0,0,0,'',1),(28,'333333333','','greg','2016-07-29 15:37:27','2016-07-29 15:45:35',0,1,'gerg','/file/image/20160730/20160730233724P020160607371231996269.jpg',4,13,0,0,1,'',1),(29,'sfsfsfsfsf','','','2016-07-30 15:38:04','2016-07-30 15:38:10',0,1,'dd','/file/image/20160730/20160730233759P020160607371231996269.jpg',1,13,0,0,0,'',1),(30,'11111111','','sfsf','2016-07-30 23:38:33',NULL,0,1,'11','/file/image/20160730/20160730233819P020160607371231996269.jpg',0,13,1,0,0,'',1),(31,'vrever','','','2016-07-31 00:02:07',NULL,0,1,'而不热','/file/image/20160731/P020160607371231996269.jpg',0,15,0,0,0,'',1),(32,'11111111','','trb','2016-07-31 00:02:34','2016-07-31 00:02:55',0,1,'btb','/file/image/20160731/20160731000225P020160607371231996269.jpg',0,15,1,0,0,'',1),(33,'vrv','','','2016-07-31 00:04:03',NULL,0,1,'reg','/file/image/20160731/20160731000355P020160607371231996269.jpg',0,15,0,0,0,'',1),(34,'jfjtyj','','jytj','2016-07-31 00:05:35',NULL,0,1,'jtyj','/file/image/20160731/20160731000524P020160607371231996269.jpg',0,15,1,0,0,'',1),(35,'建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获','建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获v<img src=\"/file/image/20160801/20160801232658P020160607371231996269.jpg\" alt=\"\" width=\"500\" height=\"220\" title=\"\" align=\"\" />','建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获','2016-07-18 01:56:39','2016-07-23 15:33:30',0,1,'建太差，公测是个奢侈品。上至部长下到走夫，一尿急知乎 著作权归作者所有，转载请联系作者获','/file/image/20160731/20160731184537P020160607371231996269.jpg',33,9,1,0,0,'',1),(36,'中国美术学院21号楼仓库废旧厨房设备报废处置项目询价结果公示中国美术学院21号楼仓库废旧','','','2016-07-31 10:12:26',NULL,0,1,'中国美术学院21号楼仓库废旧厨房设备报废处置项','',1,9,1,0,0,'',1),(37,'sdsdsdsdsdsdsdsd','','','2016-07-29 19:00:06',NULL,0,1,'sd','/file/image/20160731/20160731185957P020160607371231996269.jpg',6,9,0,0,0,'',1),(38,'sdsdsdsdsdsdsdsd','','','2016-07-31 19:00:15',NULL,0,1,'sd','/file/image/20160731/W020160627371993136116.jpg',0,9,0,0,0,'',1),(39,'sdsd','','','2016-07-31 19:00:26',NULL,0,1,'sdsd','/file/image/20160731/20160731190023QQ截图20160729215134.jpg',0,9,0,0,0,'',1),(40,'sdsd','','','2016-07-31 19:00:49',NULL,0,1,'sdsd','/file/image/20160731/20160731190046P020160607371231996269.jpg',0,9,0,0,0,'',1),(41,'reeeeeeefref','','','2016-08-01 21:24:49',NULL,0,1,'freef','',0,3,0,0,0,'',0),(42,'tyrthrth','','','2016-08-01 21:25:12',NULL,0,1,'hrt','',0,3,0,0,0,'',0),(43,'ddddddddddddddd','','','2016-08-01 21:31:26',NULL,0,1,'dddddddd','',0,3,0,0,0,'',0),(44,'Ddddddddddd','','','2016-08-01 21:31:34',NULL,0,1,'dddddddddd','',0,3,0,0,0,'',0),(45,'eddddddddddddddddd','','','2016-08-01 21:31:58',NULL,0,1,'ddddddddddddddddd','',0,3,0,0,0,'',0),(46,'deeeeeeeeeeeeee','de','','2016-08-01 21:32:08',NULL,0,1,'eeeeeeeeeeeeeee','',0,3,0,0,0,'',0),(47,'Deeeeeeeeeeeee','','','2016-08-01 21:32:16',NULL,0,1,'eeeeeeeeeeeeeee','',0,3,0,0,0,'',0),(48,'deeeeeeeeeeeeee','','','2016-08-01 21:32:36',NULL,0,1,'deeeeeee','',0,3,0,0,0,'',0),(49,'<div class=\\\"jj\\\"><div class=\\\"jj\\\"><div class=\\\"jj\\\">','','','2016-07-31 05:50:56',NULL,0,1,'dfef','/file/image/20160801/P020160607371231996269.jpg',5,9,0,0,0,'',1),(50,'rgre','','','2016-08-01 23:01:19',NULL,0,1,'geegre','',0,9,0,0,0,'',1),(51,'rgerg','','','2016-08-01 23:01:33',NULL,0,1,'gerg','',0,9,0,0,0,'',1);
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
INSERT INTO `roll` VALUES (1,'示例1','请输入图片描述','2016-07-28 21:46:17','2016-07-30 20:14:19',1,1,'/file/image/20160730/20160730201418W020160627371993136116.jpg',0,'http://www.lenggirl.com'),(2,'示例二','请输入图片描述','2016-07-28 21:46:51','2016-07-30 20:14:10',2,1,'/file/image/20160730/20160730201408P020160607371231996269.jpg',0,'http://ei.lenggirl.com'),(3,'实例三','请输入图片描述','2016-07-29 05:47:31','2016-07-30 20:14:30',0,1,'/file/image/20160730/20160730201428W020160523589890011019.jpg',0,'http://blog.lenggirl.com');
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
INSERT INTO `user` VALUES (1,17,'admin','21232f297a57a5a743894a0e4a801fc3','画室','569929309@qq.com','最高权限的王',2,'2016-08-02 00:03:23','2016-07-24 05:41:53','['),(2,0,'user','ee11cbb19052e40b07aac0ca060c23ee','测试用户','569929309@qq.com','测试用户',2,NULL,'2016-07-29 21:41:53','');
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

-- Dump completed on 2016-08-02  1:33:41
