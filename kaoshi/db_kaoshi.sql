-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-10-31 15:25:25
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_kaoshi`
--

-- --------------------------------------------------------

--
-- 表的结构 `x2_app`
--

CREATE TABLE IF NOT EXISTS `x2_app` (
  `appid` varchar(24) NOT NULL,
  `appname` varchar(48) NOT NULL,
  `appthumb` varchar(240) NOT NULL,
  `appstatus` int(1) NOT NULL,
  `appsetting` text NOT NULL,
  PRIMARY KEY (`appid`),
  KEY `appstatus` (`appstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_app`
--

INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES
('user', '用户模块', 'files/attach/images/content/20130401/13647895355562.png.png', 1, ''),
('exam', '考试模块', '', 1, ''),
('core', '全局', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('document', '文件模块', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('content', '内容模块', 'files/attach/images/content/20150517/14318394868656.png', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('bank', '财务模块', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_area`
--

CREATE TABLE IF NOT EXISTS `x2_area` (
  `areaid` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(120) NOT NULL,
  `areacode` int(12) NOT NULL,
  `arealevel` int(1) NOT NULL,
  PRIMARY KEY (`areaid`),
  KEY `area` (`area`,`arealevel`),
  KEY `areacode` (`areacode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `x2_area`
--

INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES
(1, '全国', 1, 1),
(3, '河南', 373, 0),
(4, '北京', 10, 0),
(5, '陕西', 29, 0),
(6, '河北', 311, 0),
(7, '天津', 22, 0),
(8, '山东', 531, 0),
(9, '江苏', 25, 0),
(10, '湖北', 27, 0),
(11, '辽宁', 24, 0),
(12, '贵州', 851, 0),
(13, '北京春雪', 1001, 0),
(14, '云南', 871, 0),
(15, '四川', 28, 0),
(16, '安徽', 551, 0),
(17, '深圳', 755, 0),
(18, '吉林', 431, 0),
(19, '广东', 20, 0),
(20, '新疆', 991, 0),
(21, '广西', 771, 0),
(22, '福建', 591, 0),
(23, '湖南', 731, 0),
(24, '上海', 21, 0),
(25, '重庆', 23, 0),
(26, '江西', 791, 0),
(27, '浙江', 571, 0),
(28, '山西', 351, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_attach`
--

CREATE TABLE IF NOT EXISTS `x2_attach` (
  `attid` int(11) NOT NULL AUTO_INCREMENT,
  `attpath` varchar(240) NOT NULL,
  `atttitle` varchar(240) NOT NULL,
  `attext` varchar(12) NOT NULL,
  `attinputtime` int(11) NOT NULL,
  `attsize` int(11) NOT NULL,
  `attmd5` varchar(32) NOT NULL,
  `attuserid` int(11) NOT NULL,
  `attcntype` varchar(12) NOT NULL,
  PRIMARY KEY (`attid`),
  KEY `attext` (`attext`,`attinputtime`),
  KEY `attuserid` (`attuserid`),
  KEY `attcntype` (`attcntype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `x2_attach`
--

INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES
(1, 'files/attach/images/content/20151010/14444534781355.jpg', '14388364573493.jpg', 'jpg', 1444453478, 57294, '', 1, 'application/'),
(2, 'files/attach/images/content/20151010/14444535122698.jpg', '14388364573493.jpg', 'jpg', 1444453512, 57294, '', 1, 'application/'),
(3, 'files/attach/images/content/20151010/14444535736653.jpg', '14388364807350.jpg', 'jpg', 1444453573, 74345, '', 1, 'application/'),
(4, 'files/attach/images/content/20151010/14444535976642.jpg', '14388364955083.jpg', 'jpg', 1444453597, 57294, '', 1, 'application/'),
(5, 'files/attach/images/content/20151010/14444537627264.jpg', '14388363578683.jpg', 'jpg', 1444453762, 195294, '', 1, 'application/'),
(6, 'files/attach/images/content/20151010/14444538205412.jpg', '14388363578683.jpg', 'jpg', 1444453820, 195294, '', 1, 'application/'),
(7, 'files/attach/images/content/20151010/14444540314011.jpg', '14388363578683.jpg', 'jpg', 1444454031, 195294, '', 1, 'application/'),
(8, 'files/attach/images/content/20151026/14458500834305.jpg', 'slide1.jpg', 'jpg', 1445850083, 80424, '', 1, 'application/'),
(9, 'files/attach/images/content/20151026/14458501251002.jpg', 'slide1.jpg', 'jpg', 1445850125, 80424, '', 1, 'application/'),
(10, 'files/attach/images/content/20151026/14458501922123.jpg', 'slide2.jpg', 'jpg', 1445850192, 242372, '', 1, 'application/'),
(11, 'files/attach/images/content/20151026/14458502125382.jpg', 'slide3.jpg', 'jpg', 1445850212, 86529, '', 1, 'application/'),
(12, 'files/attach/images/content/20151026/14458504898668.png', '3.png', 'png', 1445850489, 161711, '', 1, 'application/'),
(13, 'files/attach/images/content/20151026/14458670753706.jpg', 'slide2.jpg', 'jpg', 1445867075, 242372, '', 1, 'application/'),
(14, 'files/attach/images/content/20151026/14458674575377.jpg', '11.jpg', 'jpg', 1445867457, 569843, '', 1, 'application/'),
(15, 'files/attach/images/content/20151026/14458702949203.jpg', '11.jpg', 'jpg', 1445870294, 569843, '', 1, 'application/'),
(16, 'files/attach/images/content/20151026/14458707066287.jpg', '11.jpg', 'jpg', 1445870706, 569843, '', 1, 'application/'),
(17, 'files/attach/images/content/20151026/14458708888742.jpg', '11.jpg', 'jpg', 1445870888, 569843, '', 1, 'application/'),
(18, 'files/attach/images/content/20151026/14458709801489.jpg', '6.jpg', 'jpg', 1445870980, 944922, '', 1, 'application/'),
(19, 'files/attach/images/content/20151026/14458711356659.jpg', '7.jpg', 'jpg', 1445871135, 907483, '', 1, 'application/'),
(20, 'files/attach/images/content/20151026/14458713379146.jpg', '8.jpg', 'jpg', 1445871337, 811802, '', 1, 'application/'),
(21, 'files/attach/images/content/20151026/14458716922496.jpg', '9.jpg', 'jpg', 1445871692, 945794, '', 1, 'application/'),
(22, 'files/attach/images/content/20151026/14458717481558.jpg', '10.jpg', 'jpg', 1445871748, 803165, '', 1, 'application/');

-- --------------------------------------------------------

--
-- 表的结构 `x2_attachtype`
--

CREATE TABLE IF NOT EXISTS `x2_attachtype` (
  `atid` int(11) NOT NULL AUTO_INCREMENT,
  `attachtype` varchar(120) NOT NULL,
  `attachexts` tinytext NOT NULL,
  PRIMARY KEY (`atid`),
  KEY `attachtype` (`attachtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `x2_attachtype`
--

INSERT INTO `x2_attachtype` (`atid`, `attachtype`, `attachexts`) VALUES
(1, '图片', 'jpg,png,gif,bmp'),
(2, '音频', 'mp3'),
(3, '多媒体', 'flv,wmv,mp4,avi');

-- --------------------------------------------------------

--
-- 表的结构 `x2_basic`
--

CREATE TABLE IF NOT EXISTS `x2_basic` (
  `basicid` int(11) NOT NULL AUTO_INCREMENT,
  `basic` varchar(120) NOT NULL,
  `basicareaid` int(4) NOT NULL,
  `basicsubjectid` int(11) NOT NULL,
  `basicsection` text NOT NULL,
  `basicknows` text NOT NULL,
  `basicexam` text NOT NULL,
  `basicapi` varchar(32) NOT NULL,
  `basicdemo` int(1) NOT NULL,
  `basicthumb` varchar(240) NOT NULL,
  `basicprice` tinytext NOT NULL,
  `basicclosed` int(1) NOT NULL,
  PRIMARY KEY (`basicid`),
  KEY `basicexamid` (`basicareaid`),
  KEY `basicsubjectid` (`basicsubjectid`),
  KEY `basicapi` (`basicapi`),
  KEY `basicdemo` (`basicdemo`),
  KEY `basicclosed` (`basicclosed`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `x2_basic`
--

INSERT INTO `x2_basic` (`basicid`, `basic`, `basicareaid`, `basicsubjectid`, `basicsection`, `basicknows`, `basicexam`, `basicapi`, `basicdemo`, `basicthumb`, `basicprice`, `basicclosed`) VALUES
(1, '全国公务员统一水平测试', 1, 1, 'a:1:{i:0;i:1;}', 'a:1:{i:1;a:2:{i:1;i:1;i:2;i:2;}}', 'a:10:{s:5:"model";i:0;s:14:"changesequence";i:0;s:4:"auto";s:5:"1,2,3";s:12:"autotemplate";s:15:"exampaper_paper";s:4:"self";s:5:"1,2,3";s:12:"selftemplate";s:10:"exam_paper";s:8:"opentime";a:2:{s:5:"start";b:0;s:3:"end";b:0;}s:10:"selectrule";i:0;s:10:"examnumber";i:0;s:12:"notviewscore";i:0;}', '', 0, 'files/attach/images/content/20151026/14458713379146.jpg', '', 0),
(2, '全国注册会计师统一考试', 1, 1, '', '', 'a:10:{s:5:"model";s:1:"0";s:14:"changesequence";s:1:"0";s:4:"auto";s:5:"2,3,1";s:12:"autotemplate";s:15:"exampaper_paper";s:4:"self";s:1:"2";s:12:"selftemplate";s:10:"exam_paper";s:8:"opentime";a:2:{s:5:"start";b:0;s:3:"end";b:0;}s:10:"selectrule";s:1:"0";s:10:"examnumber";s:1:"0";s:12:"notviewscore";s:1:"0";}', '2', 0, 'files/attach/images/content/20151026/14458711356659.jpg', '', 0),
(3, '济南高校期末联合模拟考试', 8, 1, 'a:1:{i:0;i:1;}', 'a:1:{i:1;a:4:{i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";}}', 'a:10:{s:5:"model";s:1:"0";s:14:"changesequence";s:1:"0";s:4:"auto";s:5:"3,2,1";s:12:"autotemplate";s:15:"exampaper_paper";s:4:"self";s:5:"3,2,1";s:12:"selftemplate";s:10:"exam_paper";s:8:"opentime";a:2:{s:5:"start";b:0;s:3:"end";b:0;}s:10:"selectrule";s:1:"0";s:10:"examnumber";s:1:"0";s:12:"notviewscore";s:1:"0";}', '3', 1, 'files/attach/images/content/20151026/14458709801489.jpg', '', 0),
(4, '全国在职研究生招生模拟考试', 1, 1, 'a:1:{i:0;i:1;}', 'a:1:{i:1;a:4:{i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";}}', 'a:10:{s:5:"model";s:1:"0";s:14:"changesequence";s:1:"0";s:4:"auto";s:5:"3,2,1";s:12:"autotemplate";s:15:"exampaper_paper";s:4:"self";s:3:"3,2";s:12:"selftemplate";s:10:"exam_paper";s:8:"opentime";a:2:{s:5:"start";b:0;s:3:"end";b:0;}s:10:"selectrule";s:1:"1";s:10:"examnumber";s:1:"1";s:12:"notviewscore";s:1:"0";}', '', 0, 'files/attach/images/content/20151026/14458716922496.jpg', '', 0),
(5, '全国计算机等级考试', 1, 1, 'a:1:{i:0;i:1;}', 'a:1:{i:1;a:4:{i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";}}', 'a:10:{s:5:"model";s:1:"0";s:14:"changesequence";s:1:"0";s:4:"auto";s:5:"2,1,3";s:12:"autotemplate";s:15:"exampaper_paper";s:4:"self";s:5:"3,1,2";s:12:"selftemplate";s:10:"exam_paper";s:8:"opentime";a:2:{s:5:"start";b:0;s:3:"end";b:0;}s:10:"selectrule";s:1:"1";s:10:"examnumber";s:1:"2";s:12:"notviewscore";s:1:"0";}', '', 1, 'files/attach/images/content/20151026/14458717481558.jpg', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_block`
--

CREATE TABLE IF NOT EXISTS `x2_block` (
  `blockid` int(11) NOT NULL AUTO_INCREMENT,
  `block` varchar(120) NOT NULL,
  `blocktype` int(1) NOT NULL,
  `blockposition` varchar(120) NOT NULL,
  `blockcontent` text NOT NULL,
  PRIMARY KEY (`blockid`),
  KEY `blocktype` (`blocktype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_block`
--

INSERT INTO `x2_block` (`blockid`, `block`, `blocktype`, `blockposition`, `blockcontent`) VALUES
(1, '测试SQL', 3, '多处', 'a:8:{s:7:"dbtable";s:4:"user";s:5:"query";s:60:"AND|usergroupid=:usergroupid|usergroupid|v:_user[\\''userid\\'']";s:5:"order";s:0:"";s:5:"limit";a:2:{i:0;i:0;i:1;i:5;}s:3:"sql";s:0:"";s:5:"index";s:0:"";s:6:"serial";s:0:"";s:8:"template";s:31:"{x2;eval: print_r(v:blockdata)}";}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_category`
--

CREATE TABLE IF NOT EXISTS `x2_category` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catapp` varchar(24) NOT NULL,
  `catlite` int(11) NOT NULL,
  `catname` varchar(240) NOT NULL,
  `catimg` varchar(240) NOT NULL,
  `caturl` varchar(120) NOT NULL,
  `catuseurl` int(1) NOT NULL,
  `catparent` int(11) NOT NULL,
  `catdes` text NOT NULL,
  `cattpl` varchar(36) NOT NULL,
  `catmanager` text NOT NULL,
  `catinmenu` int(1) NOT NULL,
  `catindex` int(4) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `catlite` (`catlite`,`catparent`),
  KEY `catappid` (`catapp`),
  KEY `catuseurl` (`catuseurl`),
  KEY `catinmenu` (`catinmenu`,`catindex`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `x2_category`
--

INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`) VALUES
(1, 'content', 2, '考情快报', 'files/attach/images/content/20151026/14458670753706.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 0, 10),
(2, 'content', 3, '博客驿站', 'files/attach/images/content/20151026/14458504898668.png', 'http://kquanr.com', 1, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:12:"PhotoArtLife";s:9:"pubgroups";s:9:"管理员";}', 0, 3),
(3, 'content', 1, '友情链接', 'files/attach/images/content/20151026/14458500834305.jpg', 'http://kquanr.com/project', 0, 0, '&lt;p&gt;weilkld&lt;/p&gt;', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 0, 5);

-- --------------------------------------------------------

--
-- 表的结构 `x2_comment`
--

CREATE TABLE IF NOT EXISTS `x2_comment` (
  `cmtid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtapp` varchar(24) NOT NULL,
  `cmtcontentid` int(11) NOT NULL,
  `cmtcontent` text NOT NULL,
  `cmttime` int(11) NOT NULL,
  PRIMARY KEY (`cmtid`),
  KEY `cmtapp` (`cmtapp`,`cmtcontentid`,`cmttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_config`
--

CREATE TABLE IF NOT EXISTS `x2_config` (
  `cfgapp` varchar(36) NOT NULL,
  `cfgsetting` text NOT NULL,
  PRIMARY KEY (`cfgapp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_content`
--

CREATE TABLE IF NOT EXISTS `x2_content` (
  `contentid` int(11) NOT NULL AUTO_INCREMENT,
  `contentcatid` int(11) NOT NULL,
  `contentmoduleid` int(11) NOT NULL,
  `contentuserid` int(11) NOT NULL,
  `contentusername` varchar(48) NOT NULL,
  `contenttitle` varchar(240) NOT NULL,
  `contentthumb` varchar(120) NOT NULL,
  `contentlink` varchar(240) NOT NULL,
  `contentinputtime` int(11) NOT NULL,
  `contentmodifytime` int(11) NOT NULL,
  `contentsequence` int(4) NOT NULL,
  `contentdescribe` text NOT NULL,
  `contentinfo` text NOT NULL,
  `contentstatus` int(2) NOT NULL,
  `contenttemplate` varchar(120) NOT NULL,
  `contenttext` mediumtext NOT NULL,
  PRIMARY KEY (`contentid`),
  KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`),
  KEY `contentmoduleid` (`contentmoduleid`),
  KEY `contentcatid` (`contentcatid`),
  KEY `contentstatus` (`contentstatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `x2_content`
--

INSERT INTO `x2_content` (`contentid`, `contentcatid`, `contentmoduleid`, `contentuserid`, `contentusername`, `contenttitle`, `contentthumb`, `contentlink`, `contentinputtime`, `contentmodifytime`, `contentsequence`, `contentdescribe`, `contentinfo`, `contentstatus`, `contenttemplate`, `contenttext`) VALUES
(1, 1, 4, 54, 'peadmin', '2015年全国硕士研究生招生考试公告', 'files/attach/images/content/20151026/14458674575377.jpg', '', 1414298357, 1445867687, 1, '2015年全国硕士研究生招生考试公告', '', 0, 'content_default', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;br /&gt;\r\n根据《2015年全国硕士研究生招生工作管理规定》，现将2015年硕士研究生招生考试有关事项公告如下： &amp;nbsp;&lt;br /&gt;\r\n一、初试时间 &amp;nbsp;&lt;br /&gt;\r\n2015年硕士研究生招生考试初试时间为：2014年12月27日至12月28日（每天上午8:30-11:30，下午14:00-17:00）。超过3小时的考试科目在12月29日进行（起始时间8:30，截止时间由招生单位确定，不超过14:30）。 &amp;nbsp;&lt;br /&gt;\r\n考试时间以北京时间为准。不在规定日期举行的硕士研究生入学考试，国家一律不予承认。 &amp;nbsp;&lt;br /&gt;\r\n二、初试科目 &amp;nbsp;&lt;br /&gt;\r\n初试方式均为笔试。 &amp;nbsp;&lt;br /&gt;\r\n12月27日上午思想政治理论、管理类联考综合能力 &amp;nbsp;&lt;br /&gt;\r\n12月27日下午外国语 &amp;nbsp;&lt;br /&gt;\r\n12月28日上午业务课一 &amp;nbsp;&lt;br /&gt;\r\n12月28日下午业务课二 &amp;nbsp;&lt;br /&gt;\r\n12月29日考试时间超过3小时的考试科目 &amp;nbsp;&lt;br /&gt;\r\n每科考试时间一般为3小时；建筑设计等特殊科目考试时间最长不超过6小时。 &amp;nbsp;&lt;br /&gt;\r\n详细考试时间、考试科目及有关要求等请见《准考证》。 &amp;nbsp;&lt;br /&gt;\r\n三、报名要求 &amp;nbsp;&lt;br /&gt;\r\n硕士研究生招生考试报名包括网上报名和现场确认两个阶段。所有参加2015年硕士研究生招生考试的考生均须进行网上报名，并到报考点现场确认网报信息、缴费和采集本人图像等相关电子信息。 &amp;nbsp;&lt;br /&gt;\r\n应届本科毕业生原则上应选择就读学校所在省（区、市）的报考点办理网上报名和现场确认手续；单独考试及工商管理、公共管理、旅游管理和工程管理等专业学位的考生应选择招生单位所在地省级教育招生考试管理机构指定的报考点办理网上报名和现场确认手续；其他考生应选择工作或户口所在地省级教育招生考试管理机构指定的报考点办理网上报名和现场确认手续。 &amp;nbsp;&lt;br /&gt;\r\n网上报名技术服务工作由全国高等学校学生信息咨询与就业指导中心负责。现场确认由省级教育招生考试管理机构负责组织相关报考点进行。 &amp;nbsp;&lt;br /&gt;\r\n四、网上报名 &amp;nbsp;&lt;br /&gt;\r\n（一）网上报名时间 &amp;nbsp;&lt;br /&gt;\r\n2014年10月10日至10月31日，每天9:00-22:00。逾期不再补报，也不得再修改报名信息。 &amp;nbsp;&lt;br /&gt;\r\n（二）网上预报名时间 &amp;nbsp;&lt;br /&gt;\r\n2014年9月25日至9月28日，每天9:00-22:00。 &amp;nbsp;&lt;br /&gt;\r\n（三）报名流程 &amp;nbsp;&lt;br /&gt;\r\n考生登录&amp;ldquo;中国研究生招生信息网&amp;rdquo;（公网网址：http://yz.chsi.com.cn，教育网址：http://yz.chsi.cn，以下简称&amp;ldquo;研招网&amp;rdquo;）浏览报考须知，按教育部、省级教育招生考试管理机构、报考点以及报考招生单位的网上公告要求报名。 &amp;nbsp;&lt;br /&gt;\r\n报名期间将对考生学历（学籍）信息进行网上校验，并在考生提交报名信息三天内反馈校验结果。考生可随时上网查看学历（学籍）校验结果。考生也可在报名前或报名期间自行登录&amp;ldquo;中国高等教育学生信息网&amp;rdquo;（网址：http://www.chsi.com.cn）查询本人学历（学籍）信息。未通过学历（学籍）校验的考生应及时到学籍学历权威认证机构进行认证，在现场确认时将认证报告交报考点核验。 &amp;nbsp;&lt;br /&gt;\r\n凡不按要求报名、网报信息误填、错填或填报虚假信息而造成不能考试或录取的，后果由考生本人承担。 &amp;nbsp;&lt;br /&gt;\r\n网上报名有关具体要求和注意事项，详见《2015年全国硕士研究生招生工作管理规定》（已在教育部官网www.moe.edu.cn公开）及&amp;ldquo;研招网&amp;rdquo;报考须知。建议广大考生合理安排报名时间，避开报名高峰，避免网络拥堵。 &amp;nbsp;&lt;br /&gt;\r\n五、现场确认 &amp;nbsp;&lt;br /&gt;\r\n（一）现场确认时间 &amp;nbsp;&lt;br /&gt;\r\n2014年11月10日至11月14日。逾期不再补办。 &amp;nbsp;&lt;br /&gt;\r\n（二）现场确认程序 &amp;nbsp;&lt;br /&gt;\r\n1.考生到报考点指定的地方进行现场确认。 &amp;nbsp;&lt;br /&gt;\r\n2.考生提交本人居民身份证、学历证书（普通高校、成人高校、普通高校举办的成人高校学历教育应届本科毕业生持学生证）和网上报名编号，由报考点工作人员进行核对。 &amp;nbsp;&lt;br /&gt;\r\n在录取当年9月1日前可取得国家承认本科毕业证书的自学考试和网络教育本科生，须凭颁发毕业证书的省级自学考试机构或网络教育高校出具的相关证明方可办理网上报名现场确认手续。 &amp;nbsp;&lt;br /&gt;\r\n未通过网上学历（学籍）校验的考生，在现场确认时应提供学历（学籍）认证报告。 &amp;nbsp;&lt;br /&gt;\r\n考生要对本人网上报名信息进行认真核对并确认。报名信息经考生确认后一律不作修改，因考生填写错误引起的一切后果由其自行承担。 &amp;nbsp;&lt;br /&gt;\r\n3.考生应按规定缴纳报考费。 &amp;nbsp;&lt;br /&gt;\r\n4.考生应按报考点规定配合采集本人图像等相关电子信息。 &amp;nbsp;&lt;br /&gt;\r\n六、打印准考证 &amp;nbsp;&lt;br /&gt;\r\n2014年12月15日至12月29日，考生可凭网报用户名和密码登录&amp;ldquo;研招网&amp;rdquo;下载打印《准考证》。《准考证》正反两面在使用期间不得涂改。考生凭下载打印的《准考证》及居民身份证参加考试。 &amp;nbsp;&lt;br /&gt;\r\n七、其他 &amp;nbsp;&lt;br /&gt;\r\n招生考试其他有关事项，请参见《2015年全国硕士研究生招生工作管理规定》，或及时登录&amp;ldquo;研招网&amp;rdquo;浏览查询报考须知和各相关单位网上公告。 &amp;nbsp;&lt;br /&gt;\r\n为帮助考生了解招生政策，各研究生招生单位将于9月22日至26日在&amp;ldquo;研招网&amp;rdquo;上开展2015年全国硕士研究生招生宣传咨询周活动，届时有关研究生招生单位将在线回答广大考生提问。 &amp;nbsp;&lt;br /&gt;\r\n教育部2014年9月13日&lt;/p&gt;'),
(2, 2, 4, 54, 'peadmin', '济大师生在线模拟考试', 'files/attach/images/content/20151026/14458501251002.jpg', 'http://ujn.edu.cn/', 1414306630, 1445850141, 2, '', '', 0, 'content_default', ''),
(3, 2, 4, 54, 'peadmin', '全国公务员模拟考试', 'files/attach/images/content/20151026/14458501922123.jpg', 'http://kquanr.com', 1414306645, 1445850306, 3, '', '', 0, 'content_default', ''),
(4, 2, 4, 54, 'peadmin', '全国注册会计师模拟考试', 'files/attach/images/content/20151026/14458502125382.jpg', 'http://kquanr.com/project/works', 1414306665, 1445850371, 4, '', '', 0, 'content_default', ''),
(6, 1, 4, 1, 'peadmin', '200 万用户 +2000 门课程后，极客学院切入百亿线下 IT 培训市场', 'files/attach/images/content/20151026/14458702949203.jpg', '', 1445870283, 1445870296, 0, '', '', 0, 'content_default', '&lt;section class=&quot;single-post-header&quot; style=&quot;box-sizing: border-box; font-family: \\\\\\''Lantinghei SC\\\\\\'', \\\\\\''Open Sans\\\\\\'', Arial, \\\\\\''Hiragino Sans GB\\\\\\'', \\\\\\''Microsoft YaHei\\\\\\'', 微软雅黑, STHeiti, \\\\\\''WenQuanYi Micro Hei\\\\\\'', SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); line-height: 19.5px;&quot;&gt;\r\n&lt;div class=&quot;single-post-header__headline&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; margin: 20px 0px; padding: 0px; text-align: center; position: relative;&quot;&gt;&lt;img alt=&quot;200 万用户 +2000 门课程后，极客学院切入百亿线下 IT 培训市场&quot; class=&quot;image&quot; src=&quot;http://b.36krcnd.com/nil_class/5d5ceb7e-354f-491c-981a-e0c4b2cffe0a/_______.jpg!heading&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; margin: 0px auto; padding: 0px; width: 740px; display: block;&quot; /&gt;&lt;/div&gt;\r\n&lt;/section&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;section class=&quot;article&quot; lang=&quot;en&quot; style=&quot;box-sizing: border-box; font-family: \\\\\\''Lantinghei SC\\\\\\'', \\\\\\''Open Sans\\\\\\'', Arial, \\\\\\''Hiragino Sans GB\\\\\\'', \\\\\\''Microsoft YaHei\\\\\\'', 微软雅黑, STHeiti, \\\\\\''WenQuanYi Micro Hei\\\\\\'', SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; margin: 0px; padding: 0px; font-size: 17px; line-height: 1.8; word-break: break-all; word-wrap: break-word; color: rgb(0, 0, 0);&quot;&gt;\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;我们几个月前报道了极客学院 B 轮融资后一年的成绩单，大家可以参考&lt;a href=&quot;http://36kr.com/p/5035333.html&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;这篇文章&lt;/a&gt;。极客学院是国内最早一批在线职业教育机构，主要从事 IT 职业技能培训，其主要通过联合数百位一线互联网公司技术大牛做教研，通过视频录播的形式教学，将知识点进行切片，并利用大数据挖掘，帮助学生进行智能化学习。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;极客学院一直对标的是美国在线培训的&lt;a href=&quot;http://36kr.com/search?q=lynda&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;领先者 Lynda&lt;/a&gt;，Lynda 经过 15年 的发展，现共开设 5500 门课程，拥有 100 多万用户，其半年前&lt;a href=&quot;http://36kr.com/p/531983.html?utm_source=site_search&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;被 LinkedIn 以 15 亿美金的价格收购&lt;/a&gt;。极客学院用了一年半时间，做到注册用户数超过 200 万，付费会员约 10%，开设课程超过 2000 门。但极客学院说，他们想做的不仅仅是中国版 Lynda。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;36 氪独家获悉，极客学院在布局完精品课程和快速获取用户后，最新的战略动作是利用互联网效率优势整合传统线下培训机构。&lt;/span&gt;线下 IT 职业培训是一个超过百亿的成熟大市场，并且随着互联网 + 的兴起，企业对 IT 人才的需求将会更大，这个市场也会更快速增长。除此之外，这个市场极其分散，目前线下的龙头达内科技的市场占有率据统计不足 9%，极客学院希望通过线上 &amp;ldquo;高维&amp;rdquo; 重构 &amp;ldquo;低维&amp;rdquo; 线下，来统一分散的市场。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;目前线下的 IT 培训客单价很高，本来应该是一个很赚钱的行业，但是其实利润率很低：师资、房租和招生的成本吃掉了 80%至 90%的收入，根据达内 2015年 第二季度公开财报显示，达内的净利不到 7%。而且优秀的师资基本集中在一线互联网企业，二线以下城市的培训普遍质量不高。极客学院希望通过教学研发、课程体系、以及 IT 学习管理系统，帮助线下培训机构解决师资的问题，既提高培训质量，又能节约成本，提高利润率。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;极客学院已经与数十家线下机构展开合作，通过收入分成为其提供从教研、视频课程到定制直播的一整套服务。极客学院已经在程序员中累积了不错的口碑，其百度指数超过 4000（线下同类机构最好的在 1000+）。线下机构希望利用极客学院的强势品牌辅助招生，而极客学院通过这些合作进一步打通了线上线下，增加收入和现金流的同时，沉淀了付费用户，未来还将享受持续性培训带来的长期收入。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;img alt=&quot;200 万用户 +2000 门课程后，极客学院切入百亿线下 IT 培训市场&quot; class=&quot;before-fade-in after-fade-in&quot; src=&quot;http://a.36krcnd.com/nil_class/cdf0ec34-4e5d-4ac6-b631-8179bf1ceedc/QQ20151024-4_2x.png&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; margin: 0px auto; padding: 0px; display: block;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;极客学院 CEO 靳岩此前在采访中多次否认极客学院未来会进入招聘领域。但是从某种角度来说，在线培训是招聘的上游，切入招聘也许是一个潜在的金矿。IT 行业招聘的一个痛点是，企业很难准确评估应聘者的真实水平，信息的不对称给技术招聘带来了极大的成本。而极客学院有一支大数据算法团队，通过对用户学习行为和学习内容做深入挖掘，可以相对准确的判断用户技术水平和特长，从而解决这个问题。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;例如，一个初级用户可能只会看一些语言入门的课程，看到 App 开发基本就差不多了。但如果一个人经常看的都是网络安全、操作系统一类的课程，那么此人肯定是大牛。而且通过用户的快进、回看等数据，可以看出用户的理解程度，通过用户学习的课程，可以了解他擅长的领域。经过长期的积累，基本可以对用户的技术水平做出一个全面的画像，为企业精准的推荐人才。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;极客学院去年9月 获 SIG 及蓝驰创投千万级别 B 轮融资，靳岩表示，目前极客学院正在与数家投资机构洽谈下一轮的融资。职业学习是一个持续的强需求，因此产品的服务周期可以做到很长，未来极客学院希望打造一个生态系统，提供从基础职业技能培训到就业招聘，再到技能提升等一系列的服务，成为陪伴用户整个职业生涯的综合性服务平台。&lt;/p&gt;\r\n&lt;/section&gt;'),
(7, 1, 4, 1, 'peadmin', '人大学姐考试来支招', 'files/attach/images/content/20151026/14458707066287.jpg', '', 1445870710, 0, 0, '【ProDuct Note】还有几天考试了，孩子们找个学姐指点迷津吧', '', 0, 'content_default', '&lt;section class=&quot;single-post-header&quot; style=&quot;box-sizing: border-box; font-family: \\''Lantinghei SC\\'', \\''Open Sans\\'', Arial, \\''Hiragino Sans GB\\'', \\''Microsoft YaHei\\'', 微软雅黑, STHeiti, \\''WenQuanYi Micro Hei\\'', SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); line-height: 19.5px;&quot;&gt;\r\n&lt;div class=&quot;single-post-header__headline&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; margin: 20px 0px; padding: 0px; text-align: center; position: relative;&quot;&gt;&lt;img alt=&quot;【ProDuct Note】还有几天考试了，孩子们找个学姐指点迷津吧&quot; class=&quot;image&quot; src=&quot;http://d.36krcnd.com/nil_class/97ff63f6-72dc-4509-b5d4-26654c2fd2c0/W020130625395517801138.jpg!heading&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; margin: 0px auto; padding: 0px; width: 740px; display: block;&quot; /&gt;&lt;/div&gt;\r\n&lt;/section&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;section class=&quot;article&quot; lang=&quot;en&quot; style=&quot;box-sizing: border-box; font-family: \\''Lantinghei SC\\'', \\''Open Sans\\'', Arial, \\''Hiragino Sans GB\\'', \\''Microsoft YaHei\\'', 微软雅黑, STHeiti, \\''WenQuanYi Micro Hei\\'', SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; margin: 0px; padding: 0px; font-size: 17px; line-height: 1.8; word-break: break-all; word-wrap: break-word; color: rgb(0, 0, 0);&quot;&gt;\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(228, 228, 228); vertical-align: baseline; margin: 0px; padding: 0px; background: rgb(246, 246, 246);&quot;&gt;该栏目由大 @Chloe 、木村拓周 @thethief&amp;nbsp;、专业推拿 @ 李植树 、硬派少女 @ 胡卷卷 、水瓶座萌娘 @ 荔闽、PLMM@icecutie、硬件女神经 @ 小石头 、碧碧 @ 糖醋 、睡不醒少女 @ 人人酱、专业贴膜 @Retric 、医疗女黄 @leah、一大桶奶茶 @ 小天、变态准少男 @ 尧异联合出品。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(228, 228, 228); vertical-align: baseline; margin: 0px; padding: 0px; background: rgb(246, 246, 246);&quot;&gt;栏目介绍：思考一个产品，很简单。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;&lt;a href=&quot;http://www.xuejiebang.org/&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;学姐帮&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;img alt=&quot;【ProDuct Note】还有几天考试了，孩子们找个学姐指点迷津吧&quot; class=&quot;before-fade-in after-fade-in&quot; src=&quot;http://a.36krcnd.com/nil_class/bc666e5c-3db7-47c5-923d-680c904087f5/xjb.jpg&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; margin: 0px auto; padding: 0px; display: block;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;What&lt;/span&gt;：以 &amp;ldquo;学姐解惑&amp;rdquo; 为卖点的高考备考，志愿填报服务平台&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;How&lt;/span&gt;：&amp;ldquo;学姐帮&amp;rdquo; 按照城市、高校和专业聚合学姐，用户可以根据需求向学姐提问，或是关注学姐。问答将在 &amp;ldquo;问答&amp;rdquo; 版块呈现，用户也可查找问题。&amp;ldquo;学姐帮&amp;rdquo; 会运营话题，并推出 PGC 的指导文章。注册成为 &amp;ldquo;学姐&amp;rdquo; 的用户将根据问答多少，关注度等获得等级和金币奖励。&lt;br style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased;&quot; /&gt;\r\n&lt;br style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased;&quot; /&gt;\r\n&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;Think It Twice&lt;/span&gt;：高中生在高考前和填志愿前的迷茫焦虑大家都懂得，&amp;ldquo;学姐帮&amp;rdquo; 的需求场景是刚需，不过这个场景的频率不高，大多数高中生到了高三才会思考备考和志愿填报的问题。因此，&amp;ldquo;学姐帮&amp;rdquo; 可以尝试切入一个更高频的场景。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;&lt;a href=&quot;http://www.fansclub.com/&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;粉圈&lt;/a&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;img alt=&quot;【ProDuct Note】还有几天考试了，孩子们找个学姐指点迷津吧&quot; class=&quot;before-fade-in after-fade-in&quot; src=&quot;http://a.36krcnd.com/nil_class/659a04a1-d544-4095-a2f5-d2ff08a28a4f/fenq.jpg&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; margin: 0px auto; padding: 0px; display: block;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;What:&amp;nbsp;&lt;/span&gt;一个帮明星圈粉丝的应用。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;How&lt;/span&gt;: 看起来像一个移动端的明星贴吧，首页以 Feed 流展现来自各个圈里的热帖；粉圈官方圈充当小娱记的角色；明星相关活动推广也是重要部分；此外有明星的人气榜单。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;Think It Twice&lt;/span&gt;:&amp;nbsp;圈明星的应用往往跟明星本人没啥关系，还是个流量变现的生意，一般往下游演出活动、电商转化。如果能将粉团拿下，加之提供好用的 CRM 工具可能会更好做。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;&lt;a href=&quot;http://www.kuisi.net/?utm_source=next.36kr.com&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;窥司&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;img alt=&quot;【ProDuct Note】还有几天考试了，孩子们找个学姐指点迷津吧&quot; class=&quot;before-fade-in after-fade-in&quot; src=&quot;http://a.36krcnd.com/nil_class/d4d3e489-2963-4971-9bfc-9cee0bfc71b9/FLS.jpg&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; margin: 0px auto; padding: 0px; display: block;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;What: 有着各行业各公司福利的 App。可以看到许多行业许多公司的福利情况，包括平均薪资水平、年假、福利、五险一金、加班时长等等。&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;How: 前期的内容应该是团队自己产生的，如果用户发现没有自己的公司，可以提交反馈，团队会向用户征集该公司的相关信息。创始人在 NEXT 上讨论时说 &amp;ldquo;未来愿景是员工在这里可以发表相关意见，然后窥司可以通过横向纵向数据支撑，让员工的建议可以反过来给企业施压&amp;rdquo;，改变员工的弱势。&lt;br style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased;&quot; /&gt;\r\n&lt;br style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased;&quot; /&gt;\r\nThink It Twice: 发动用户主动贡献信息挺难的，这不是件好玩儿的事，也没有什么益处。产品有可能走着走着就像秘密那个方向去了。创始人的愿景应该也挺难的，如果做成，有点像要变成一个供各个公司员工搭建工会的地方了...&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;&lt;a href=&quot;https://itunes.apple.com/cn/app/zai-gan-ma/id979100715?mt=8&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;在干嘛&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;img alt=&quot;【ProDuct Note】还有几天考试了，孩子们找个学姐指点迷津吧&quot; class=&quot;before-fade-in after-fade-in&quot; src=&quot;http://a.36krcnd.com/nil_class/102b088e-372a-4206-98a3-fa3bfdb40b13/wocalie.jpg&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; margin: 0px auto; padding: 0px; display: block;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;What&lt;/span&gt;: 熟人社交应用。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;How&lt;/span&gt;:&amp;nbsp;每个好友一个格子，只和好友分享此刻在干嘛。格子里字数不能超过 40。可以评论和私聊。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;Think It Twice&lt;/span&gt;: 创新的点在于格子这个界面。主动把自己 &amp;ldquo;在干嘛&amp;rdquo; 的信息写在格子里有助于聊天破冰。如果朋友多了玩起来可能会有一种朋友圈的感觉，但是熟人要破冰的几率应该还是比陌生人低吧。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(228, 228, 228); vertical-align: baseline; margin: 0px; padding: 0px; background: rgb(246, 246, 246);&quot;&gt;题图为 &amp;ldquo;人大女神&amp;rdquo;，中国人民大学网站首页曾经用过的招生图片&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;/section&gt;'),
(8, 1, 4, 1, 'peadmin', '在线题库的细分：“牛客网” 做的是程序猿们的笔试面试备考题库', 'files/attach/images/content/20151026/14458708888742.jpg', '', 1445870897, 0, 0, '', '', 0, 'content_default', '&lt;section class=&quot;single-post-header&quot; style=&quot;box-sizing: border-box; font-family: \\''Lantinghei SC\\'', \\''Open Sans\\'', Arial, \\''Hiragino Sans GB\\'', \\''Microsoft YaHei\\'', 微软雅黑, STHeiti, \\''WenQuanYi Micro Hei\\'', SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); line-height: 19.5px;&quot;&gt;\r\n&lt;div class=&quot;single-post-header__headline&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; margin: 20px 0px; padding: 0px; text-align: center; position: relative;&quot;&gt;&lt;img alt=&quot;在线题库的细分：“牛客网” 做的是程序猿们的笔试面试备考题库&quot; class=&quot;image&quot; src=&quot;http://b.36krcnd.com/photo/2014/ef45e2acde730723fa2631d2155ea05f.png!heading&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; margin: 0px auto; padding: 0px; width: 740px; display: block;&quot; /&gt;&lt;/div&gt;\r\n&lt;/section&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;section class=&quot;article&quot; lang=&quot;en&quot; style=&quot;box-sizing: border-box; font-family: \\''Lantinghei SC\\'', \\''Open Sans\\'', Arial, \\''Hiragino Sans GB\\'', \\''Microsoft YaHei\\'', 微软雅黑, STHeiti, \\''WenQuanYi Micro Hei\\'', SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; margin: 0px; padding: 0px; font-size: 17px; line-height: 1.8; word-break: break-all; word-wrap: break-word; color: rgb(0, 0, 0);&quot;&gt;\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;参与过大公司笔试面试的程序猿们应该都有类似的烦恼&amp;mdash;&amp;mdash;笔试面试之前没有办法进行刷题备考，比如某个程序猿很想知道去年Google 的笔试题，他只能去进行随机的搜索，而搜索出来的一般都是散落在一些程序猿的个人博客上零散题目，这些题目大多是程序猿笔试之后凭记忆写下的，很可能不全且不准确。因此很多程序猿们都没有办法在笔试面试之前先完整地试试手。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;所以&lt;a href=&quot;http://www.nowcoder.com/&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;&amp;ldquo;牛客网&amp;rdquo;&lt;/a&gt;团队就想到把所有大型互联网公司程序猿笔试面试的完整题目收集起来，供程序猿在考前刷题备考用。从产品上来看，牛客网目前提供了 Google、阿里巴巴、腾讯、百度等大型互联网公司的笔试面试题，题型包含客观的单选、多选、填空题，以及主观的在线实时编程和设计题。用户需要在规定时间内答完一套试卷，交卷后系统会给出得分以及错题解析。如果用户觉得对一份试卷的答题结果不满意，可以找下一份练手，但牛客网现在还无法给出颗粒度更细的针对弱项的练习题推荐。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;&lt;img alt=&quot;在线题库的细分：“牛客网” 做的是程序猿们的笔试面试备考题库&quot; class=&quot;before-fade-in after-fade-in&quot; src=&quot;http://a.36krcnd.com/photo/2014/1b0aa405cd5936fd13455118367f29c9.png&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; margin: 0px auto; padding: 0px; display: block;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;除了刷题练习以外，牛客网现在还有围绕 &amp;ldquo;题目&amp;rdquo; 的问答板块，用户如果遇到不会的或者是没想明白答案的题目可以到题目讨论区里提问，和其他做过题的用户交流互动。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;牛客网创始人叶向宇说，他们最早想要做这样一个细分题库，就是因为看到了文章开头所说的痛点，所以他们通过技术抓取互联网上散落的题目并进行筛选过滤，加上用户自主提交题目以及付费向公司购买题目这三种方式来得到历年各大互联网公司的考试真题，并在今年十月份开放给程序猿来使用。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;而眼下产品上最重要的还是要把 &amp;ldquo;在线判题&amp;rdquo; 做得精准，这块是有些门槛的，因为程序猿的笔试除了对错很容易判断的是非题以外，还有在线编程的题目，比如大数据类的在线编程考题就没有正确答案，只能牛客网通过后台拿数据不断去跑程序，然后才能告诉用户他的程序给出的结果、召回率是多少，程序的百分之多少以上是对的。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;至于未来，我个人是觉得如果能用这个架构去和互联网公司合作一起进行程序猿的笔试面试，就可以获得更多的用户活跃数据以及黏度，甚至还可以像&lt;a href=&quot;https://www.hackerrank.com/&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;HackerRank&lt;/a&gt;（原&lt;a href=&quot;http://www.36kr.com/p/86096.html&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;InterviewStreet&lt;/a&gt;）以及&lt;a href=&quot;http://www.36kr.com/p/209961.html&quot; ref=&quot;nofollow&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease;&quot;&gt;HackerEarth&lt;/a&gt;一样通过在线编程比赛来为企业定向筛选和输送人才。不过叶向宇说未来有很多方向可选，他们目前主要还是想先专注把题库做到足够好。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin-bottom: 30px; padding: 0px; word-break: break-word;&quot;&gt;团队上，牛客网大部分团队成员来自人人网，都是以前的同事一起出来创业，在今年九月份之前还属于兼职状态，直到 9月 份都离职之后才正式成立公司，十月份牛客网正式上线。&lt;/p&gt;\r\n&lt;/section&gt;');

-- --------------------------------------------------------

--
-- 表的结构 `x2_coupon`
--

CREATE TABLE IF NOT EXISTS `x2_coupon` (
  `couponsn` varchar(16) NOT NULL,
  `couponvalue` int(11) NOT NULL,
  `couponstatus` int(1) NOT NULL,
  `couponaddtime` int(11) NOT NULL,
  `couponendtime` int(11) NOT NULL,
  PRIMARY KEY (`couponsn`),
  KEY `couponstatus` (`couponstatus`,`couponendtime`),
  KEY `couponaddtime` (`couponaddtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_coupon`
--

INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`) VALUES
('50FCF651D1068E2A', 100, 1, 1387715681, 1419251681),
('4FDB0041689758FE', 100, 0, 1387715681, 1419251681),
('7DEA6BE08C525B24', 100, 0, 1387715681, 1419251681),
('20BE1FD4C7F8EF93', 100, 0, 1387715681, 1419251681),
('C2465B4D608DCA31', 100, 0, 1387715681, 1419251681),
('FF635BCB0652EFAF', 100, 0, 1387715681, 1419251681),
('6671CD3B02C59F35', 100, 0, 1387715681, 1419251681),
('80BBFBB00824CA64', 100, 0, 1387715681, 1419251681),
('0D048421E67C9C1E', 100, 0, 1387715681, 1419251681),
('9B6B50BFD8AC9EB7', 100, 0, 1387715681, 1419251681),
('C2AFD00DC8BBF5BB', 100, 0, 1431568145, 1463104145),
('2649174903085FB2', 100, 0, 1431568145, 1463104145),
('4299DEE67254FB6B', 100, 0, 1431568145, 1463104145),
('F6A165DBC725308A', 100, 0, 1431568145, 1463104145),
('1585C8825D1925AA', 100, 0, 1431568145, 1463104145),
('C3A26FBE1B26CBF9', 100, 0, 1431568145, 1463104145),
('20FA495B990D6B29', 100, 0, 1431568145, 1463104145),
('A1FBB5B5DDFF43D9', 100, 0, 1431568145, 1463104145),
('AD772BFD9E102AB3', 100, 0, 1431568145, 1463104145),
('0586A5CAA84A6905', 100, 0, 1431568145, 1463104145),
('5A6CC1E0E17FB55F', 100, 0, 1431568471, 1463104471),
('A950311D2D242E78', 100, 0, 1431568471, 1463104471),
('CB2FC172BE61ACC1', 100, 0, 1431568471, 1463104471),
('EC9EE375DEFD1F5C', 100, 0, 1431568471, 1463104471),
('F2FA9EF610A9C91E', 100, 0, 1431568471, 1463104471),
('B3A72FB09F13C798', 100, 0, 1444619551, 1476155551),
('0165E33389E393F0', 100, 0, 1444619551, 1476155551),
('5321AE2222F987C0', 100, 0, 1444619551, 1476155551),
('31990822E5204C44', 100, 0, 1444619551, 1476155551),
('BAA727B13B0A2FCD', 100, 0, 1444619551, 1476155551),
('EA90558DBC9EDFFF', 100, 0, 1444619551, 1476155551),
('64603B90489D3225', 100, 0, 1444619551, 1476155551),
('901F9A1677957EB3', 100, 0, 1444619551, 1476155551),
('0158DA240065275C', 100, 0, 1444619551, 1476155551),
('C2B9667DEFC362CD', 100, 1, 1444619551, 1476155551),
('18E0D483CFD804D4', 100, 0, 1444619551, 1476155551),
('E7512DDCA9035B27', 100, 0, 1444619551, 1476155551),
('8D2E7B79C231BBB9', 100, 0, 1444619551, 1476155551),
('83370FD50108662A', 100, 0, 1444619551, 1476155551),
('18F09BA2352888CC', 100, 0, 1444619551, 1476155551),
('993028A68423262C', 100, 0, 1444619551, 1476155551),
('DBE9F2B9E8977850', 100, 0, 1444619551, 1476155551),
('346BA56786EE0D33', 100, 0, 1444619551, 1476155551),
('37F5715724BD643D', 100, 0, 1444619551, 1476155551),
('EF7A381B1C83D786', 100, 0, 1444619551, 1476155551),
('5ECFDA44D5941A2E', 100, 0, 1444619551, 1476155551),
('0E8F5512C32A305C', 100, 0, 1444619551, 1476155551),
('25185472185E15A6', 100, 0, 1444619551, 1476155551),
('53C666C6279A080E', 100, 0, 1444619551, 1476155551),
('8FC097BB8B1BFAF7', 100, 0, 1444619551, 1476155551),
('34065105FA41E0A5', 100, 0, 1444619551, 1476155551),
('C9CE3AAE56AF3516', 100, 0, 1444619551, 1476155551),
('94E84CEE2BF9F410', 100, 0, 1444619551, 1476155551),
('E27C2A1BEDDBABBD', 100, 0, 1444619551, 1476155551),
('21246B4884A429C9', 100, 0, 1444619551, 1476155551),
('FC2CAFEF29DBC3E1', 100, 0, 1444619551, 1476155551),
('BC84195B6F9351AD', 100, 0, 1444619551, 1476155551),
('61CFC275EBB0C9FB', 100, 0, 1444619551, 1476155551),
('1790C2C2EB219A77', 100, 0, 1444619551, 1476155551),
('4ABFF29CAF2BFAD6', 100, 0, 1444619551, 1476155551),
('C686E6D6CA38D58B', 100, 0, 1444619551, 1476155551),
('98612E72D504EC50', 100, 0, 1444619551, 1476155551),
('E94112F230B8A7D5', 100, 0, 1444619551, 1476155551),
('7A8524BDF8F8A9D4', 100, 0, 1444619551, 1476155551),
('349C7703A54F8761', 100, 0, 1444619551, 1476155551),
('C2A1C4BAE9C50229', 100, 0, 1444619551, 1476155551),
('31AA31271E192C43', 100, 0, 1444619551, 1476155551),
('88CD206E4C96F804', 100, 0, 1444619551, 1476155551),
('26EFC728662EF198', 100, 0, 1444619551, 1476155551),
('46CA899497BC561B', 100, 0, 1444619551, 1476155551),
('6BDE36D71A772BF1', 100, 0, 1444619551, 1476155551),
('46427AB1402AF855', 100, 0, 1444619551, 1476155551),
('CFF9BC3A591910FE', 100, 0, 1444619551, 1476155551),
('A686BE5EB75587FA', 100, 0, 1444619551, 1476155551),
('D3E7F120C492578B', 100, 0, 1444619551, 1476155551),
('62A97DEDA123F735', 100, 0, 1444619551, 1476155551),
('19F228ED9B9569BE', 100, 0, 1444619551, 1476155551),
('621B32E8E5CA20CE', 100, 0, 1444619551, 1476155551),
('152E039C95365A8F', 100, 0, 1444619551, 1476155551),
('375F73D798039185', 100, 0, 1444619551, 1476155551),
('EE37FD04C2BF053B', 100, 0, 1444619551, 1476155551),
('4C44A8F1DED57E55', 100, 0, 1444619551, 1476155551),
('A4EBA3B2E8C202D2', 100, 0, 1444619551, 1476155551),
('DC5DC680244E94D6', 100, 0, 1444619551, 1476155551),
('0519ED04FE966125', 100, 0, 1444619551, 1476155551),
('BB0FE6AC5B4F47E3', 100, 0, 1444619551, 1476155551),
('B60CD750C5ED7168', 100, 0, 1444619551, 1476155551),
('3FDE7C80B0E6A1C3', 100, 0, 1444619551, 1476155551),
('34821302BE62DEA2', 100, 0, 1444619551, 1476155551),
('2E3487E4578AE1EB', 100, 0, 1444619551, 1476155551),
('D63CC57352EEDE5E', 100, 0, 1444619551, 1476155551),
('3EB9F344A755DC26', 100, 0, 1444619551, 1476155551),
('16275CB22F4C1E99', 100, 0, 1444619551, 1476155551),
('B9E453AC97ED7030', 100, 0, 1444619551, 1476155551),
('180DE495ED52C0EA', 100, 0, 1444619551, 1476155551),
('3F9DFE233827636D', 100, 0, 1444619551, 1476155551),
('84970B028153F9FB', 100, 0, 1444619551, 1476155551),
('EE55B3A40D1F20A6', 100, 0, 1444619551, 1476155551),
('3BF3F76A9D62BD04', 100, 0, 1444619551, 1476155551),
('4213A41B315C942C', 100, 0, 1444619551, 1476155551),
('8A57B0C3FEE2E9CA', 100, 0, 1444619551, 1476155551),
('AFFE109C0B42A186', 100, 0, 1444619551, 1476155551),
('429B446F44140154', 100, 0, 1444619551, 1476155551),
('F1E0C00815360716', 100, 0, 1444619551, 1476155551),
('33F6E9143870B5D5', 100, 0, 1444619551, 1476155551),
('01A0CC93D1E53688', 100, 0, 1444619551, 1476155551),
('B4341E308F9CCC84', 100, 0, 1444619551, 1476155551),
('D4AAD82EC688DDD2', 100, 0, 1444619551, 1476155551),
('6ACE0D4C1B7D49F2', 100, 0, 1444619551, 1476155551),
('3DCBCDF2F498F1D8', 100, 0, 1444619551, 1476155551),
('4E7B3143E1E2E790', 100, 0, 1444619551, 1476155551),
('68D77BA17E89424D', 100, 0, 1444619551, 1476155551),
('C9C1E4078308B14B', 100, 0, 1444619551, 1476155551),
('44C158BFD2E6DDAD', 100, 0, 1444619551, 1476155551),
('A93CA5A1322AFC1A', 100, 0, 1444619551, 1476155551),
('F0D609D686DA10F9', 100, 0, 1444619551, 1476155551),
('6B3B97ED21B98FDE', 100, 0, 1444619551, 1476155551),
('7E8D9035F723CB38', 100, 0, 1444619551, 1476155551),
('E47E7E007318EFD0', 100, 0, 1444619551, 1476155551),
('609948BAE967BA66', 100, 0, 1444619551, 1476155551),
('83DAE465354E2021', 100, 0, 1444619551, 1476155551),
('B9BEDBF808C0FC19', 100, 0, 1444619551, 1476155551),
('4D28784053DD7555', 100, 0, 1444619551, 1476155551),
('D903F3943CAFD05A', 100, 0, 1444619551, 1476155551);

-- --------------------------------------------------------

--
-- 表的结构 `x2_examhistory`
--

CREATE TABLE IF NOT EXISTS `x2_examhistory` (
  `ehid` int(11) NOT NULL AUTO_INCREMENT,
  `ehexamid` int(11) NOT NULL,
  `ehexam` varchar(240) NOT NULL,
  `ehtype` int(11) NOT NULL,
  `ehbasicid` int(11) NOT NULL,
  `ehquestion` longtext NOT NULL,
  `ehsetting` text,
  `ehscorelist` text,
  `ehuseranswer` text,
  `ehtime` int(11) NOT NULL,
  `ehscore` decimal(10,2) NOT NULL,
  `ehuserid` int(11) NOT NULL,
  `ehusername` varchar(120) NOT NULL,
  `ehstarttime` int(11) NOT NULL,
  `ehstatus` int(1) NOT NULL DEFAULT '1',
  `ehdecide` int(1) NOT NULL,
  `ehtimelist` text,
  PRIMARY KEY (`ehid`),
  KEY `ehtype` (`ehtype`,`ehbasicid`,`ehtime`,`ehuserid`),
  KEY `ehdecide` (`ehdecide`),
  KEY `ehexamid` (`ehexamid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `x2_examhistory`
--

INSERT INTO `x2_examhistory` (`ehid`, `ehexamid`, `ehexam`, `ehtype`, `ehbasicid`, `ehquestion`, `ehsetting`, `ehscorelist`, `ehuseranswer`, `ehtime`, `ehscore`, `ehuserid`, `ehusername`, `ehstarttime`, `ehstatus`, `ehdecide`, `ehtimelist`) VALUES
(1, 2, '测试随机试卷', 2, 1, 'a:3:{s:11:"questionids";a:3:{s:8:"question";a:2:{i:1;a:10:{i:0;s:2:"18";i:1;s:2:"23";i:2;s:2:"46";i:3;s:2:"49";i:4;s:3:"114";i:5;s:3:"115";i:6;s:3:"141";i:7;s:3:"184";i:8;s:3:"207";i:9;s:3:"223";}i:2;a:10:{i:0;s:3:"237";i:1;s:3:"254";i:2;s:3:"262";i:3;s:3:"295";i:4;s:3:"304";i:5;s:3:"319";i:6;s:3:"322";i:7;s:3:"339";i:8;s:3:"345";i:9;s:3:"371";}}s:11:"questionrow";N;s:7:"setting";a:13:{s:6:"examid";s:1:"2";s:11:"examsubject";s:1:"1";s:4:"exam";s:18:"测试随机试卷";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:2:"11";s:5:"score";s:3:"100";s:9:"passscore";s:2:"60";s:12:"questypelite";a:5:{i:2;s:1:"1";i:3;s:1:"1";i:1;s:1:"1";i:4;s:1:"0";i:5;s:1:"0";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:3:{i:1;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1434015369";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}}s:9:"questions";a:2:{i:1;a:10:{i:18;a:17:{s:10:"questionid";s:2:"18";s:12:"questiontype";s:1:"1";s:8:"question";s:187:"1949年1月19日，毛泽东、周恩来在一封电报中邀请宋庆龄北上参加“新的政治协商会议”。下列对“新的政治协商会议”的叙述正确的是（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:416:"&lt;p&gt;A、“新的政治协商会议”的召开标志着人民代表大会制度的确立&lt;/p&gt;&lt;p&gt;B、“新的政治协商会议”召开时确定了“长期共存、互相监督”方针&lt;/p&gt;&lt;p&gt;C、“新的政治协商会议”召开时讨论了国名、国旗、国徽等问题&lt;/p&gt;&lt;p&gt;D、“新的政治协商会议”的召开标志着社会主义革命的胜利&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"C";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:23;a:17:{s:10:"questionid";s:2:"23";s:12:"questiontype";s:1:"1";s:8:"question";s:105:"党的十一届三中全会把全党的工作重点转移到（）上来，提出了( )的重要思想。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:218:"&lt;p&gt;A、社会主义现代化建设改革开放&lt;/p&gt;&lt;p&gt;B、社会主义现代化建设实事求是&lt;/p&gt;&lt;p&gt;C、改革开放实事求是&lt;/p&gt;&lt;p&gt;D、经济建设改革开放&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:46;a:17:{s:10:"questionid";s:2:"46";s:12:"questiontype";s:1:"1";s:8:"question";s:87:"在下列对人权和国家主权二者关系的认识中，正确的说法是（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:221:"&lt;p&gt;A、人权高于主权&lt;/p&gt;&lt;p&gt;B、人权与主权是相互对立的&lt;/p&gt;&lt;p&gt;C、人权是主权得以实现的前提和保障&lt;/p&gt;&lt;p&gt;D、没有主权也就谈不上人权&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"D";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:49;a:17:{s:10:"questionid";s:2:"49";s:12:"questiontype";s:1:"1";s:8:"question";s:84:"党的十一届三中全会在我国对台政策上发生的重大变化是（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:287:"&lt;p&gt;A、首次提出争取用和平方式解放台湾&lt;/p&gt;&lt;p&gt;B、首次以“台湾回到祖国怀抱”代替“解放台湾”的思想&lt;/p&gt;&lt;p&gt;C、首次提出将一国两制确定为基本国策&lt;/p&gt;&lt;p&gt;D、首次提出加强经贸往来&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:114;a:17:{s:10:"questionid";s:3:"114";s:12:"questiontype";s:1:"1";s:8:"question";s:160:"( )打响了武装反抗国民党反动派的第一枪,标志着中国共产党独立地领导革命战争、创建人民军队和武装夺取政权的开始。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:143:"&lt;p&gt;A、南昌起义&lt;/p&gt;&lt;p&gt;B、秋收起义&lt;/p&gt;&lt;p&gt;C、广州起义&lt;/p&gt;&lt;p&gt;D、黄花岗起义&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:115;a:17:{s:10:"questionid";s:3:"115";s:12:"questiontype";s:1:"1";s:8:"question";s:107:"1927年10月,毛泽东率领湘赣边界秋收起义部队到达江西宁冈,开始了创建(B)的斗争。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:191:"&lt;p&gt;A、赣南、闽西革命根据地&lt;/p&gt;&lt;p&gt;B、井冈山革命根据地&lt;/p&gt;&lt;p&gt;C、湘赣革命根据地&lt;/p&gt;&lt;p&gt;D、晋察冀革命根据地&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:141;a:17:{s:10:"questionid";s:3:"141";s:12:"questiontype";s:1:"1";s:8:"question";s:60:"新中国成立后制定的第一部基本法律是（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:260:"&lt;p&gt;A、《中华人民共和国民族区域自治实施纲要》&lt;/p&gt;&lt;p&gt;B、《中华人民共和国婚姻法》&lt;/p&gt;&lt;p&gt;C、《中华人民共和国土地改革法》&lt;/p&gt;&lt;p&gt;D、《中华人民共和国宪法》&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:184;a:17:{s:10:"questionid";s:3:"184";s:12:"questiontype";s:1:"1";s:8:"question";s:51:"中国共产党执政后的最大危险是（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:140:"&lt;p&gt;A、决策失误&lt;/p&gt;&lt;p&gt;B、脱离群众&lt;/p&gt;&lt;p&gt;C、思想僵化&lt;/p&gt;&lt;p&gt;D、腐败堕落&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:207;a:17:{s:10:"questionid";s:3:"207";s:12:"questiontype";s:1:"1";s:8:"question";s:93:"党的各级领导干部要讲学习、讲政治、（），经得起各种风浪的考验。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:128:"&lt;p&gt;A、讲奉献&lt;/p&gt;&lt;p&gt;B、讲正气&lt;/p&gt;&lt;p&gt;C、讲姿态&lt;/p&gt;&lt;p&gt;D、讲风格&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:223;a:17:{s:10:"questionid";s:3:"223";s:12:"questiontype";s:1:"1";s:8:"question";s:54:"党的总支部委员会和支部委员会设（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:167:"&lt;p&gt;A、纪律检查组组长&lt;/p&gt;&lt;p&gt;B、纪律检查员&lt;/p&gt;&lt;p&gt;C、纪律检查委员会&lt;/p&gt;&lt;p&gt;D、纪律检查委员&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"D";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}i:2;a:10:{i:237;a:17:{s:10:"questionid";s:3:"237";s:12:"questiontype";s:1:"2";s:8:"question";s:139:"从1942年春天起，中国共产党在全党范围内展开了一次整风运动。下列属于这次整风运动的任务的是（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:221:"&lt;p&gt;A、反对主观主义以整顿学风&lt;/p&gt;&lt;p&gt;B、反对宗派主义以整顿党风&lt;/p&gt;&lt;p&gt;C、反对机会主义以整顿作风&lt;/p&gt;&lt;p&gt;D、反对党八股以整顿文风&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:3:"ABD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:254;a:17:{s:10:"questionid";s:3:"254";s:12:"questiontype";s:1:"2";s:8:"question";s:101:"1949年3月，毛泽东在中共七届二中全会的报告中提出的“两个务必”是指（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:236:"&lt;p&gt;A、居安思危，增强忧患意识&lt;/p&gt;&lt;p&gt;B、保持同人民群众的血肉联系&lt;/p&gt;&lt;p&gt;C、保持谦虚、谨慎、不骄、不燥的作风&lt;/p&gt;&lt;p&gt;D、保持艰苦奋斗的作风&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"CD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:262;a:17:{s:10:"questionid";s:3:"262";s:12:"questiontype";s:1:"2";s:8:"question";s:42:"下列选项中，正确的观点有（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:542:"&lt;p&gt;A、在社会主义社会，国家、集体和个人的利益在根本上是一致的&lt;/p&gt;&lt;p&gt;B、市场经济本身要求提倡集体主义&lt;/p&gt;&lt;p&gt;C、在社会主义市场经济条件下，“人人为我，我为人人”已不现实，取而代之的必然是“人人为自己，上帝为大家”&lt;/p&gt;&lt;p&gt;D、在社会主义市场经济条件下建设精神文明，应当引导人们形成把国家和集体利益放在首位而又充分尊重个人正当利益的社会主义义利观&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"AD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:295;a:17:{s:10:"questionid";s:3:"295";s:12:"questiontype";s:1:"2";s:8:"question";s:51:"贯彻“三个代表”重要思想，必须（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:455:"&lt;p&gt;A、使全党始终保持与时俱进的精神状态，不断开拓马克思主义理论发展的新境界&lt;/p&gt;&lt;p&gt;B、把发展作为党执政兴国的第一要务，不断开创现代化建设的新局面&lt;/p&gt;&lt;p&gt;C、最广泛最充分地调动一切积极因素，不断为中华民族的伟大复兴增添新力量&lt;/p&gt;&lt;p&gt;D、以改革的精神推进党的建设，不断为党的肌体注入新活力&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:4:"ABCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:304;a:17:{s:10:"questionid";s:3:"304";s:12:"questiontype";s:1:"2";s:8:"question";s:42:"坚持以人为本，就是要坚持（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:179:"&lt;p&gt;A、发展为了人民&lt;/p&gt;&lt;p&gt;B、发展依靠人民&lt;/p&gt;&lt;p&gt;C、发展成果由人民共享&lt;/p&gt;&lt;p&gt;D、实现人的全面发展&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:4:"ABCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:319;a:17:{s:10:"questionid";s:3:"319";s:12:"questiontype";s:1:"2";s:8:"question";s:267:"科学发展观，是同马克思列宁主义、毛泽东思想、邓小平理论和“三个代表”重要思想既一脉相承又与时俱进的（），是我国经济社会发展的（），是发展中国特色社会主义必须坚持和贯彻的（）。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:152:"&lt;p&gt;A、重要理论&lt;/p&gt;&lt;p&gt;B、科学理论&lt;/p&gt;&lt;p&gt;C、重要指导方针&lt;/p&gt;&lt;p&gt;D、重大战略思想&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:3:"BCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:322;a:17:{s:10:"questionid";s:3:"322";s:12:"questiontype";s:1:"2";s:8:"question";s:48:"新世纪，党的三大历史任务是。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:200:"&lt;p&gt;A、全面建成小康社会&lt;/p&gt;&lt;p&gt;B、实现推进现代化建设&lt;/p&gt;&lt;p&gt;C、完成祖国统一&lt;/p&gt;&lt;p&gt;D、维护世界和平与促进共同发展&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:3:"BCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:339;a:17:{s:10:"questionid";s:3:"339";s:12:"questiontype";s:1:"2";s:8:"question";s:174:"党的中央政治局、中央政治局常务委员会和中央委员会总书记，由（）选举。中央委员会总书记必须从中央政治局（）中产生。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:173:"&lt;p&gt;A、中央委员会全体会议&lt;/p&gt;&lt;p&gt;B、全国代表大会&lt;/p&gt;&lt;p&gt;C、常务委员会委员&lt;/p&gt;&lt;p&gt;D、政治局委员&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"AC";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:345;a:17:{s:10:"questionid";s:3:"345";s:12:"questiontype";s:1:"2";s:8:"question";s:156:"党的基层组织，根据工作需要和党员人数，经（）党组织批准，分别设立党的（）、总支部委员会、支部委员会。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:134:"&lt;p&gt;A、同级&lt;/p&gt;&lt;p&gt;B、上级&lt;/p&gt;&lt;p&gt;C、基层委员会&lt;/p&gt;&lt;p&gt;D、纪检委员会&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"BC";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:371;a:17:{s:10:"questionid";s:3:"371";s:12:"questiontype";s:1:"2";s:8:"question";s:147:"党组织对违犯党的纪律的党员，应当本着（）的精神，按照错误性质和情节轻重，给以批评教育直至（）。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:155:"&lt;p&gt;A、从严治党&lt;/p&gt;&lt;p&gt;B、惩前毖后、治病救人&lt;/p&gt;&lt;p&gt;C、纪律处分&lt;/p&gt;&lt;p&gt;D、开除党籍&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"BC";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}s:12:"questionrows";a:0:{}}', 'a:13:{s:6:"examid";s:1:"2";s:11:"examsubject";s:1:"1";s:4:"exam";s:18:"测试随机试卷";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:2:"11";s:5:"score";s:3:"100";s:9:"passscore";s:2:"60";s:12:"questypelite";a:5:{i:2;s:1:"1";i:3;s:1:"1";i:1;s:1:"1";i:4;s:1:"0";i:5;s:1:"0";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:3:{i:1;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1434015369";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}', 'a:20:{i:18;i:0;i:23;i:0;i:46;i:0;i:49;i:0;i:114;i:0;i:115;i:0;i:141;i:0;i:184;i:0;i:207;i:0;i:223;i:0;i:237;i:0;i:254;i:0;i:262;i:0;i:295;i:0;i:304;i:0;i:319;i:0;i:322;i:0;i:339;i:0;i:345;i:0;i:371;i:0;}', 'a:1:{i:237;a:1:{i:2;s:1:"C";}}', 10, '0.00', 1, 'peadmin', 1444473599, 1, 0, 'a:20:{i:237;s:10:"1444473602";i:254;s:0:"";i:262;s:0:"";i:295;s:0:"";i:304;s:0:"";i:319;s:0:"";i:322;s:0:"";i:339;s:0:"";i:345;s:0:"";i:371;s:0:"";i:18;s:0:"";i:23;s:0:"";i:46;s:0:"";i:49;s:0:"";i:114;s:0:"";i:115;s:0:"";i:141;s:0:"";i:184;s:0:"";i:207;s:0:"";i:223;s:0:"";}');
INSERT INTO `x2_examhistory` (`ehid`, `ehexamid`, `ehexam`, `ehtype`, `ehbasicid`, `ehquestion`, `ehsetting`, `ehscorelist`, `ehuseranswer`, `ehtime`, `ehscore`, `ehuserid`, `ehusername`, `ehstarttime`, `ehstatus`, `ehdecide`, `ehtimelist`) VALUES
(2, 1, '测试手工组卷', 1, 1, 'a:2:{s:9:"questions";a:3:{i:1;a:10:{i:221;a:17:{s:10:"questionid";s:3:"221";s:12:"questiontype";s:1:"1";s:8:"question";s:64:"&lt;p&gt;党的各级委员会实行（）的制度。&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:2452:"&lt;table align=&quot;center&quot; border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;width: 500px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;width: 258px; height: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;";s:20:"questionselectnumber";s:1:"6";s:14:"questionanswer";s:1:"E";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:19:"请修改知识点2";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:222;a:17:{s:10:"questionid";s:3:"222";s:12:"questiontype";s:1:"1";s:8:"question";s:54:"党的各级委员会向（）负责并报告工作。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:185:"&lt;p&gt;A、同级党委书记办公会&lt;/p&gt;&lt;p&gt;B、同级党的代表大会&lt;/p&gt;&lt;p&gt;C、同级党委常委&lt;/p&gt;&lt;p&gt;D、党的地方领导机关&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:223;a:17:{s:10:"questionid";s:3:"223";s:12:"questiontype";s:1:"1";s:8:"question";s:54:"党的总支部委员会和支部委员会设（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:167:"&lt;p&gt;A、纪律检查组组长&lt;/p&gt;&lt;p&gt;B、纪律检查员&lt;/p&gt;&lt;p&gt;C、纪律检查委员会&lt;/p&gt;&lt;p&gt;D、纪律检查委员&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"D";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:224;a:17:{s:10:"questionid";s:3:"224";s:12:"questiontype";s:1:"1";s:8:"question";s:69:"党的上下级组织之间要（）、互相支持和互相监督。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:140:"&lt;p&gt;A、互通有无&lt;/p&gt;&lt;p&gt;B、互相经验&lt;/p&gt;&lt;p&gt;C、互通情报&lt;/p&gt;&lt;p&gt;D、精诚合作&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"C";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:225;a:17:{s:10:"questionid";s:3:"225";s:12:"questiontype";s:1:"1";s:8:"question";s:111:"在选举产生党的各级代表大会的代表和委员会委员时，下列表述中，正确的是（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:479:"&lt;p&gt;A、只能采取差额选举的办法&lt;/p&gt;&lt;p&gt;B、必须先采取差额选举办法进行预选，产生候选人名单，然后进行正式选举&lt;/p&gt;&lt;p&gt;C、党组织可以不经过选举人酝酿讨论而确定候选人名单&lt;/p&gt;&lt;p&gt;D、可以直接采用候选人数多于应选人数的差额选举办法进行正式选举；也可以先采用差额选举办法进行预选，产生候选人名单，然后进行正式选举&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"D";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:226;a:17:{s:10:"questionid";s:3:"226";s:12:"questiontype";s:1:"1";s:8:"question";s:108:"在选举党的各级代表大会的代表和委员会委员时，应当采用（）的方式进行选举。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:143:"&lt;p&gt;A、举手表决&lt;/p&gt;&lt;p&gt;B、口头表决&lt;/p&gt;&lt;p&gt;C、记名投票&lt;/p&gt;&lt;p&gt;D、无记名投票&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"D";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:227;a:17:{s:10:"questionid";s:3:"227";s:12:"questiontype";s:1:"1";s:8:"question";s:67:"党组织讨论决定问题，必须执行（）的原则。（B）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:167:"&lt;p&gt;A、个人服从组织&lt;/p&gt;&lt;p&gt;B、少数服从多数&lt;/p&gt;&lt;p&gt;C、下级服从上级&lt;/p&gt;&lt;p&gt;D、党员服从党组织&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:228;a:17:{s:10:"questionid";s:3:"228";s:12:"questiontype";s:1:"1";s:8:"question";s:75:"党的全国代表大会每（）举行一次，由中央委员会召集。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:108:"&lt;p&gt;A、1年&lt;/p&gt;&lt;p&gt;B、2年&lt;/p&gt;&lt;p&gt;C、4年&lt;/p&gt;&lt;p&gt;D、5年&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"D";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:229;a:17:{s:10:"questionid";s:3:"229";s:12:"questiontype";s:1:"1";s:8:"question";s:69:"各级纪律检查委员会要经常对党员进行（）的教育。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:140:"&lt;p&gt;A、爱国主义&lt;/p&gt;&lt;p&gt;B、遵守纪律&lt;/p&gt;&lt;p&gt;C、道德品质&lt;/p&gt;&lt;p&gt;D、思想政治&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:8446;a:17:{s:10:"questionid";s:4:"8446";s:12:"questiontype";s:1:"1";s:8:"question";s:34:"&lt;p&gt;测试单选题&lt;/p&gt;";s:14:"questionuserid";s:1:"1";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:0:"";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1431505725";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"3";}}i:2;a:10:{i:396;a:17:{s:10:"questionid";s:3:"396";s:12:"questiontype";s:1:"2";s:8:"question";s:135:"禁止党员领导干部脱离实际，弄虚作假，损害群众利益和党群干群关系，不准有以下哪些行为：（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:335:"&lt;p&gt;A、搞劳民伤财的“形象工程”和沽名钓誉的“政绩工程”；&lt;/p&gt;&lt;p&gt;B、虚报工作业绩；&lt;/p&gt;&lt;p&gt;C、在社会保障、政策扶持、救灾救济款物分配等事项中优亲厚友、显失公平；&lt;/p&gt;&lt;p&gt;D、获取荣誉、职称、学历学位等利益。&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:3:"ABC";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:397;a:17:{s:10:"questionid";s:3:"397";s:12:"questiontype";s:1:"2";s:8:"question";s:45:"《廉政准则》总则中强调了（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:323:"&lt;p&gt;A、党风廉政建设的重要性和规范党员领导干部廉洁从政行为的重大意义；&lt;/p&gt;&lt;p&gt;B、对党员领导干部廉洁从政的基本要求；&lt;/p&gt;&lt;p&gt;C、促进党员领导干部廉洁从政的基本举措；&lt;/p&gt;&lt;p&gt;D、廉洁自律的极端重要性。&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"BC";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:398;a:17:{s:10:"questionid";s:3:"398";s:12:"questiontype";s:1:"2";s:8:"question";s:60:"《廉政准则》第二章强调了贯彻实施的（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:200:"&lt;p&gt;A、组织领导；&lt;/p&gt;&lt;p&gt;B、基本途径；&lt;/p&gt;&lt;p&gt;C、考核办法；&lt;/p&gt;&lt;p&gt;D、对违反本准则的处置以及对实施本准则的监督。&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:4:"ABCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:399;a:17:{s:10:"questionid";s:3:"399";s:12:"questiontype";s:1:"2";s:8:"question";s:99:"《廉政准则》规定，党员领导干部不准在（）中搞拉票等非组织活动。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:134:"&lt;p&gt;A、民主推荐&lt;/p&gt;&lt;p&gt;B、民主测评&lt;/p&gt;&lt;p&gt;C、组织考察&lt;/p&gt;&lt;p&gt;D、选举&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:4:"ABCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:400;a:17:{s:10:"questionid";s:3:"400";s:12:"questiontype";s:1:"2";s:8:"question";s:51:"特定关系人是指国家工作人员的（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:161:"&lt;p&gt;A、近亲属&lt;/p&gt;&lt;p&gt;B、情妇（夫）&lt;/p&gt;&lt;p&gt;C、其他有共同利益关系的人&lt;/p&gt;&lt;p&gt;D、下属人员&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:4:"ABCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:401;a:17:{s:10:"questionid";s:3:"401";s:12:"questiontype";s:1:"2";s:8:"question";s:54:"反腐倡廉建设必须坚持（）的方针。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:140:"&lt;p&gt;A、标本兼治&lt;/p&gt;&lt;p&gt;B、综合治理&lt;/p&gt;&lt;p&gt;C、惩防并举&lt;/p&gt;&lt;p&gt;D、注重预防&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:4:"ABCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:402;a:17:{s:10:"questionid";s:3:"402";s:12:"questiontype";s:1:"2";s:8:"question";s:87:"《廉政准则》规定，党员领导干部不准违反规定（）小汽车。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:125:"&lt;p&gt;A、配备、购买&lt;/p&gt;&lt;p&gt;B、更换&lt;/p&gt;&lt;p&gt;C、装饰&lt;/p&gt;&lt;p&gt;D、使用&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:4:"ABCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:403;a:17:{s:10:"questionid";s:3:"403";s:12:"questiontype";s:1:"2";s:8:"question";s:187:"&lt;p&gt;《廉政准则》规定，党员领导干部不准干预和插手农村集体资金、资产和资源的（）等事项。（） -----&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:128:"&lt;p&gt;A、使用&lt;/p&gt;\r\n\r\n&lt;p&gt;B、分配&lt;/p&gt;\r\n\r\n&lt;p&gt;C、承包&lt;/p&gt;\r\n\r\n&lt;p&gt;D、租赁&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:4:"ABCD";s:16:"questiondescribe";s:20:"&lt;p&gt;3&lt;/p&gt;";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:404;a:17:{s:10:"questionid";s:3:"404";s:12:"questiontype";s:1:"2";s:8:"question";s:42:"《廉政准则》适用于（）。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:585:"&lt;p&gt;A、党的机关、人大机关、行政机关、政协机关、审判机关、检察机关中县(处)级以上党员领导干部；&lt;/p&gt;&lt;p&gt;B、人民团体、事业单位中相当于县(处)级以上党员领导干部；&lt;/p&gt;&lt;p&gt;C、国有和国有控股企业(含国有和国有控股金融企业)及其分支机构领导人员中的党员参照执行；&lt;/p&gt;&lt;p&gt;D、县(市、区、旗)直属机关、审判机关、检察机关的科级党员负责人，乡镇(街道)党员负责人，基层站所的党员负责人参照执行。&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:4:"ABCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:405;a:17:{s:10:"questionid";s:3:"405";s:12:"questiontype";s:1:"2";s:8:"question";s:114:"下列那种行为一定违反了《廉政准则》中关于禁止违反规定选拔任用干部的规定？（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:296:"&lt;p&gt;A、向当事人通告民主测评的情况及结果；&lt;/p&gt;&lt;p&gt;B、在工作调动时突击提拔干部；&lt;/p&gt;&lt;p&gt;C、给原任职地区干部选拔工作提出自己的建议和意见；&lt;/p&gt;&lt;p&gt;D、在干部选拔任用工作中封官许愿。&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"BD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}i:3;a:10:{i:706;a:17:{s:10:"questionid";s:3:"706";s:12:"questiontype";s:1:"3";s:8:"question";s:132:"禁止党员领导干部个人经商、办企业，但对党员领导干部借他人名义经商、办企业则未作严格要求。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:33:"&lt;p&gt;A、对B、错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247469";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:707;a:17:{s:10:"questionid";s:3:"707";s:12:"questiontype";s:1:"3";s:8:"question";s:120:"禁止党员领导干部在经济实体、社会团体等单位中兼职或者兼职取酬，以及从事中介活动。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:33:"&lt;p&gt;A、对B、错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247469";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:708;a:17:{s:10:"questionid";s:3:"708";s:12:"questiontype";s:1:"3";s:8:"question";s:117:"禁止党员领导干部利用职务便利私自干预下级或者原任职地区、单位干部选拔任用工作。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:33:"&lt;p&gt;A、对B、错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247469";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:709;a:17:{s:10:"questionid";s:3:"709";s:12:"questiontype";s:1:"3";s:8:"question";s:273:"禁止党员领导干部为配偶、子女及其配偶以及其他亲属经商、办企业提供便利条件，而对党员领导干部之间利用职权相互为对方配偶、子女及其配偶以及其他亲属经商、办企业提供便利条件则并无明文限制。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:33:"&lt;p&gt;A、对B、错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247469";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:710;a:17:{s:10:"questionid";s:3:"710";s:12:"questiontype";s:1:"3";s:8:"question";s:159:"禁止党员领导干部在公务活动中提供或者接受超过规定标准的接待，或者超过规定标准报销招待费、差旅费等相关费用。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:33:"&lt;p&gt;A、对B、错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247469";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:711;a:17:{s:10:"questionid";s:3:"711";s:12:"questiontype";s:1:"3";s:8:"question";s:135:"禁止党员领导干部大办婚丧喜庆事宜，造成不良影响，或者借机敛财。其中，用私款操办的不受禁止。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:33:"&lt;p&gt;A、对B、错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247469";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:712;a:17:{s:10:"questionid";s:3:"712";s:12:"questiontype";s:1:"3";s:8:"question";s:84:"党员领导干部不准借用公款、公物或者将公款、公物借给他人。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:33:"&lt;p&gt;A、对B、错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}s:18:"questioncreatetime";s:10:"1372247469";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:766;a:17:{s:10:"questionid";s:3:"766";s:12:"questiontype";s:1:"3";s:8:"question";s:127:"&lt;p&gt;推动诚信体系建设，以社会诚信带动商务诚信和政务诚信，形成良好的社会风尚。&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:33:"&lt;p&gt;A、对B、错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}s:18:"questioncreatetime";s:10:"1372247469";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:769;a:17:{s:10:"questionid";s:3:"769";s:12:"questiontype";s:1:"3";s:8:"question";s:151:"&lt;p&gt;收入分配制度是经济社会发展中一项根本性、基础性的制度，是社会主义市场经济体制的重要基石。&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:33:"&lt;p&gt;A、对B、错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:19:"请修改知识点3";}}s:18:"questioncreatetime";s:10:"1372247469";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:770;a:17:{s:10:"questionid";s:3:"770";s:12:"questiontype";s:1:"3";s:8:"question";s:159:"&lt;p&gt;健全全民医保体系，建立重特大疾病保障和救助机制，全面开展儿童白血病等30种重大疾病保障试点工作。&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:33:"&lt;p&gt;A、对B、错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"4";s:5:"knows";s:19:"请修改知识点4";}}s:18:"questioncreatetime";s:10:"1372247469";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}s:12:"questionrows";a:0:{}}', 'a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:18:"测试手工组卷";s:11:"examsetting";a:6:{s:8:"examtime";i:60;s:7:"comfrom";s:18:"测试手工组卷";s:5:"score";i:100;s:9:"passscore";i:60;s:12:"questypelite";a:5:{i:2;i:1;i:1;i:1;i:3;i:1;i:4;i:1;i:5;i:1;}s:8:"questype";a:5:{i:1;a:3:{s:6:"number";i:10;s:5:"score";i:1;s:8:"describe";s:0:"";}i:2;a:3:{s:6:"number";i:10;s:5:"score";i:1;s:8:"describe";s:0:"";}i:3;a:3:{s:6:"number";i:10;s:5:"score";i:1;s:8:"describe";s:0:"";}i:4;a:3:{s:6:"number";i:0;s:5:"score";i:0;s:8:"describe";s:0:"";}i:5;a:3:{s:6:"number";i:0;s:5:"score";i:0;s:8:"describe";s:0:"";}}}s:13:"examquestions";a:5:{i:1;a:2:{s:9:"questions";s:42:",8446,229,228,227,226,225,224,223,222,221,";s:13:"rowsquestions";s:0:"";}i:2;a:2:{s:9:"questions";s:41:",405,404,403,402,401,400,399,398,397,396,";s:13:"rowsquestions";s:0:"";}i:3;a:2:{s:9:"questions";s:41:",770,769,766,712,711,710,709,708,707,706,";s:13:"rowsquestions";s:0:"";}i:4;a:2:{s:9:"questions";s:0:"";s:13:"rowsquestions";s:0:"";}i:5;a:2:{s:9:"questions";s:0:"";s:13:"rowsquestions";s:0:"";}}s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"2";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1432569421";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}', 'a:30:{i:221;i:0;i:222;i:0;i:223;i:0;i:224;i:0;i:225;i:0;i:226;i:0;i:227;i:0;i:228;i:0;i:229;i:0;i:8446;i:0;i:396;i:0;i:397;i:0;i:398;i:0;i:399;i:0;i:400;i:0;i:401;i:0;i:402;i:0;i:403;i:0;i:404;i:0;i:405;i:0;i:706;i:0;i:707;i:0;i:708;i:0;i:709;i:0;i:710;i:0;i:711;i:0;i:712;i:0;i:766;i:0;i:769;i:0;i:770;i:0;}', '', 16, '0.00', 8, 'test', 1444618466, 1, 0, '');
INSERT INTO `x2_examhistory` (`ehid`, `ehexamid`, `ehexam`, `ehtype`, `ehbasicid`, `ehquestion`, `ehsetting`, `ehscorelist`, `ehuseranswer`, `ehtime`, `ehscore`, `ehuserid`, `ehusername`, `ehstarttime`, `ehstatus`, `ehdecide`, `ehtimelist`) VALUES
(3, 2, '测试随机试卷', 1, 1, 'a:3:{s:11:"questionids";a:3:{s:8:"question";a:2:{i:1;a:10:{i:0;s:1:"5";i:1;s:2:"23";i:2;s:2:"77";i:3;s:2:"86";i:4;s:2:"89";i:5;s:3:"138";i:6;s:3:"152";i:7;s:3:"210";i:8;s:3:"217";i:9;s:3:"221";}i:2;a:10:{i:0;s:3:"261";i:1;s:3:"294";i:2;s:3:"312";i:3;s:3:"327";i:4;s:3:"328";i:5;s:3:"331";i:6;s:3:"344";i:7;s:3:"368";i:8;s:3:"381";i:9;s:3:"382";}}s:11:"questionrow";N;s:7:"setting";a:13:{s:6:"examid";s:1:"2";s:11:"examsubject";s:1:"1";s:4:"exam";s:18:"测试随机试卷";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:2:"11";s:5:"score";s:3:"100";s:9:"passscore";s:2:"60";s:12:"questypelite";a:5:{i:2;s:1:"1";i:3;s:1:"1";i:1;s:1:"1";i:4;s:1:"0";i:5;s:1:"0";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:3:{i:1;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1434015369";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}}s:9:"questions";a:2:{i:1;a:10:{i:5;a:17:{s:10:"questionid";s:1:"5";s:12:"questiontype";s:1:"1";s:8:"question";s:146:"1928年4月朱德、陈毅率领的南昌起义余部到达井冈山与毛泽东领导的部队会合，组成了中国工农红军第（）军。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:104:"&lt;p&gt;A、一&lt;/p&gt;&lt;p&gt;B、二&lt;/p&gt;&lt;p&gt;C、三&lt;/p&gt;&lt;p&gt;D、四&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"D";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:23;a:17:{s:10:"questionid";s:2:"23";s:12:"questiontype";s:1:"1";s:8:"question";s:105:"党的十一届三中全会把全党的工作重点转移到（）上来，提出了( )的重要思想。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:218:"&lt;p&gt;A、社会主义现代化建设改革开放&lt;/p&gt;&lt;p&gt;B、社会主义现代化建设实事求是&lt;/p&gt;&lt;p&gt;C、改革开放实事求是&lt;/p&gt;&lt;p&gt;D、经济建设改革开放&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:77;a:17:{s:10:"questionid";s:2:"77";s:12:"questiontype";s:1:"1";s:8:"question";s:60:"标志中国经济正式步入世界大家庭的是（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:281:"&lt;p&gt;A、十一届三中全会上中共做出改革开放的决定&lt;/p&gt;&lt;p&gt;B、1984年国务院决定开放十四个沿海港口城市&lt;/p&gt;&lt;p&gt;C、2001年海尔集团在国外投产成功&lt;/p&gt;&lt;p&gt;D、2001年中国加入世界贸易组织&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"D";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:86;a:17:{s:10:"questionid";s:2:"86";s:12:"questiontype";s:1:"1";s:8:"question";s:159:"“中国不打美国牌，也不打苏联牌，中国也不允许别人打中国牌”，最能说明改革开放以来中国外交的显著特征是（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:137:"&lt;p&gt;A、反对霸权&lt;/p&gt;&lt;p&gt;B、睦邻友好&lt;/p&gt;&lt;p&gt;C、多边外交&lt;/p&gt;&lt;p&gt;D、不结盟&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"D";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:89;a:17:{s:10:"questionid";s:2:"89";s:12:"questiontype";s:1:"1";s:8:"question";s:150:"“一九九二年又是一个春天，有一位老人在中国的南海边写下诗篇……”。这一“诗篇”回答的重要问题是（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:233:"&lt;p&gt;A、什么是中国特色社会主义&lt;/p&gt;&lt;p&gt;B、什么是社会主义初级阶段&lt;/p&gt;&lt;p&gt;C、什么是社会主义，怎样建设社会主义&lt;/p&gt;&lt;p&gt;D、什么是“一国两制”&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"C";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:138;a:17:{s:10:"questionid";s:3:"138";s:12:"questiontype";s:1:"1";s:8:"question";s:153:"1940年( )八路军发动取得毙伤日伪军2、5万多人等辉煌战果，沉重打击了日军，进一步提高了共产党和八路军的威望。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:146:"&lt;p&gt;A、百团大战&lt;/p&gt;&lt;p&gt;B、平型关大捷&lt;/p&gt;&lt;p&gt;C、台儿庄战役&lt;/p&gt;&lt;p&gt;D、徐州战役&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:152;a:17:{s:10:"questionid";s:3:"152";s:12:"questiontype";s:1:"1";s:8:"question";s:35:"十八大党章共11章（）条。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:100:"&lt;p&gt;A、50&lt;/p&gt;&lt;p&gt;B、53&lt;/p&gt;&lt;p&gt;C、58&lt;/p&gt;&lt;p&gt;D、60&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:210;a:17:{s:10:"questionid";s:3:"210";s:12:"questiontype";s:1:"1";s:8:"question";s:123:"预备党员预备期满，党组织认为需要继续考察和教育的，可以延长预备期，但不能超过（）。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:115:"&lt;p&gt;A、半年&lt;/p&gt;&lt;p&gt;B、1年&lt;/p&gt;&lt;p&gt;C、一年半&lt;/p&gt;&lt;p&gt;D、2年&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:217;a:17:{s:10:"questionid";s:3:"217";s:12:"questiontype";s:1:"1";s:8:"question";s:144:"党的各级组织要善于发现和推荐有真才实学的党外干部担任领导工作，保证他们（），充分发挥他们的作用。";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:140:"&lt;p&gt;A、用其所长&lt;/p&gt;&lt;p&gt;B、学有所用&lt;/p&gt;&lt;p&gt;C、有职有权&lt;/p&gt;&lt;p&gt;D、大胆工作&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"C";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:221;a:17:{s:10:"questionid";s:3:"221";s:12:"questiontype";s:1:"1";s:8:"question";s:64:"&lt;p&gt;党的各级委员会实行（）的制度。&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:2452:"&lt;table align=&quot;center&quot; border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;width: 500px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;width: 258px; height: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;";s:20:"questionselectnumber";s:1:"6";s:14:"questionanswer";s:1:"E";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:19:"请修改知识点2";}}s:18:"questioncreatetime";s:10:"1372247397";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}i:2;a:10:{i:261;a:17:{s:10:"questionid";s:3:"261";s:12:"questiontype";s:1:"2";s:8:"question";s:48:"我国民主党派的参政作用表现在（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:251:"&lt;p&gt;A、参加国家政权&lt;/p&gt;&lt;p&gt;B、参与国家大政方针、国家领导人选的协商&lt;/p&gt;&lt;p&gt;C、参与国家事务的管理&lt;/p&gt;&lt;p&gt;D、参与国家方针、政策、法律、法规的制定执行&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:4:"ABCD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:294;a:17:{s:10:"questionid";s:3:"294";s:12:"questiontype";s:1:"2";s:8:"question";s:21:"先进文化是（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:257:"&lt;p&gt;A、杰出人物的书籍&lt;/p&gt;&lt;p&gt;B、人类文明进步的结晶&lt;/p&gt;&lt;p&gt;C、健康的、科学的、向上的、代表未来发展方向和推动社会前进的文化&lt;/p&gt;&lt;p&gt;D、造诣很高的文化艺术&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"BC";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:312;a:17:{s:10:"questionid";s:3:"312";s:12:"questiontype";s:1:"2";s:8:"question";s:147:"中国共产党按照（）、（）、（）、互不干涉内部事务的原则，发展我党同各国共产党和其他政党的关系。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:140:"&lt;p&gt;A、独立自主&lt;/p&gt;&lt;p&gt;B、完全平等&lt;/p&gt;&lt;p&gt;C、互利共赢&lt;/p&gt;&lt;p&gt;D、互相尊重&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:3:"ABD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:327;a:17:{s:10:"questionid";s:3:"327";s:12:"questiontype";s:1:"2";s:8:"question";s:165:"发展更加广泛、更加充分、更加健全的人民民主，切实保障人民管理（）事务和社会事务、管理经济和（）事业的权利。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:116:"&lt;p&gt;A、国家&lt;/p&gt;&lt;p&gt;B、党内&lt;/p&gt;&lt;p&gt;C、政治&lt;/p&gt;&lt;p&gt;D、文化&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"BD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:328;a:17:{s:10:"questionid";s:3:"328";s:12:"questiontype";s:1:"2";s:8:"question";s:138:"发展社会主义（），为改革开放和社会主义现代化建设提供强大的（）保证、精神动力和智力支持。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:128:"&lt;p&gt;A、民主政治&lt;/p&gt;&lt;p&gt;B、先进文化&lt;/p&gt;&lt;p&gt;C、思想&lt;/p&gt;&lt;p&gt;D、政治&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"BC";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:331;a:17:{s:10:"questionid";s:3:"331";s:12:"questiontype";s:1:"2";s:8:"question";s:162:"要正确认识和妥善处理中国特色社会主义事业中的重大关系，统筹（）、区域发展、（）、人与自然和谐发展、（）。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:176:"&lt;p&gt;A、城乡发展&lt;/p&gt;&lt;p&gt;B、经济社会发展&lt;/p&gt;&lt;p&gt;C、国内发展和对外开放&lt;/p&gt;&lt;p&gt;D、当前利益和长远利益&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:3:"ABC";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:344;a:17:{s:10:"questionid";s:3:"344";s:12:"questiontype";s:1:"2";s:8:"question";s:207:"党的地区委员会和相当于地区委员会的组织，是党的省、自治区委员会在几个（）范围内派出的代表（）机关。它根据（）的授权，领导本地区的工作。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:149:"&lt;p&gt;A、代表&lt;/p&gt;&lt;p&gt;B、领导&lt;/p&gt;&lt;p&gt;C、县、自治县、市&lt;/p&gt;&lt;p&gt;D、省、自治区委员会&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"AD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:368;a:17:{s:10:"questionid";s:3:"368";s:12:"questiontype";s:1:"2";s:8:"question";s:141:"共产党员必须（），模范遵守（），严格保守党和国家的秘密，执行党的决定，服从组织分配，（）。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:185:"&lt;p&gt;A、自觉遵守党的纪律&lt;/p&gt;&lt;p&gt;B、国家的法律法规&lt;/p&gt;&lt;p&gt;C、认真做好本职工作&lt;/p&gt;&lt;p&gt;D、积极完成党的任务&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:3:"ABD";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:381;a:17:{s:10:"questionid";s:3:"381";s:12:"questiontype";s:1:"2";s:8:"question";s:180:"党的民主集中制的基本原则的“四个服从”，即（），（），（），全党各个组织和全体党员服从党的全国代表大会和中央委员会。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:200:"&lt;p&gt;A、党员个人服从党的组织&lt;/p&gt;&lt;p&gt;B、少数服从多数&lt;/p&gt;&lt;p&gt;C、下级组织服从上级组织&lt;/p&gt;&lt;p&gt;D、错误意见服从正确意见&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:3:"ABC";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:382;a:17:{s:10:"questionid";s:3:"382";s:12:"questiontype";s:1:"2";s:8:"question";s:156:"党员缺乏革命意志，（），（），经党的支部对其进行教育并在限期内仍无改正和转变的，党组织应当劝其退党。（）";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:176:"&lt;p&gt;A、不履行党员义务&lt;/p&gt;&lt;p&gt;B、不行使党员权利&lt;/p&gt;&lt;p&gt;C、不符合党员条件&lt;/p&gt;&lt;p&gt;D、不按时交纳党费&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:2:"AC";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}s:18:"questioncreatetime";s:10:"1372247435";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}s:12:"questionrows";a:0:{}}', 'a:13:{s:6:"examid";s:1:"2";s:11:"examsubject";s:1:"1";s:4:"exam";s:18:"测试随机试卷";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:2:"11";s:5:"score";s:3:"100";s:9:"passscore";s:2:"60";s:12:"questypelite";a:5:{i:2;s:1:"1";i:3;s:1:"1";i:1;s:1:"1";i:4;s:1:"0";i:5;s:1:"0";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:3:{i:1;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1434015369";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}', 'a:20:{i:5;i:0;i:23;i:0;i:77;i:0;i:86;i:0;i:89;i:0;i:138;i:0;i:152;i:0;i:210;i:0;i:217;i:0;i:221;i:0;i:261;i:0;i:294;i:0;i:312;i:0;i:327;i:0;i:328;i:0;i:331;i:0;i:344;i:0;i:368;i:0;i:381;i:0;i:382;i:0;}', 'a:2:{i:5;s:1:"B";i:86;s:1:"B";}', 171, '0.00', 8, 'test', 1444619628, 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_exams`
--

CREATE TABLE IF NOT EXISTS `x2_exams` (
  `examid` int(11) NOT NULL AUTO_INCREMENT,
  `examsubject` tinyint(4) NOT NULL,
  `exam` varchar(120) NOT NULL,
  `examsetting` text NOT NULL,
  `examquestions` text NOT NULL,
  `examscore` text NOT NULL,
  `examstatus` int(1) NOT NULL DEFAULT '0',
  `examtype` int(11) NOT NULL,
  `examauthorid` int(11) NOT NULL,
  `examauthor` varchar(120) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `examtime` int(11) NOT NULL,
  `examkeyword` varchar(240) NOT NULL,
  `examdecide` int(1) NOT NULL,
  PRIMARY KEY (`examid`),
  KEY `examstatus` (`examstatus`),
  KEY `examtype` (`examtype`,`examauthorid`),
  KEY `examtime` (`examtime`),
  KEY `examsubject` (`examsubject`),
  KEY `examdecide` (`examdecide`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `x2_exams`
--

INSERT INTO `x2_exams` (`examid`, `examsubject`, `exam`, `examsetting`, `examquestions`, `examscore`, `examstatus`, `examtype`, `examauthorid`, `examauthor`, `examtime`, `examkeyword`, `examdecide`) VALUES
(1, 1, '手工自动组卷', 'a:6:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:18:"测试手工组卷";s:5:"score";s:3:"100";s:9:"passscore";s:2:"60";s:12:"questypelite";a:5:{i:2;s:1:"1";i:1;s:1:"1";i:3;s:1:"1";i:4;s:1:"0";i:5;s:1:"0";}s:8:"questype";a:3:{i:1;a:3:{s:6:"number";s:2:"10";s:5:"score";s:1:"1";s:8:"describe";s:0:"";}i:2;a:3:{s:6:"number";s:2:"10";s:5:"score";s:1:"1";s:8:"describe";s:0:"";}i:3;a:3:{s:6:"number";s:2:"10";s:5:"score";s:1:"1";s:8:"describe";s:0:"";}}}', 'a:3:{i:1;a:2:{s:9:"questions";s:42:",8446,229,228,227,226,225,224,223,222,221,";s:13:"rowsquestions";s:0:"";}i:2;a:2:{s:9:"questions";s:41:",405,404,403,402,401,400,399,398,397,396,";s:13:"rowsquestions";s:0:"";}i:3;a:2:{s:9:"questions";s:41:",770,769,766,712,711,710,709,708,707,706,";s:13:"rowsquestions";s:0:"";}}', '', 0, 2, 1, 'peadmin', 1432569421, '', 0),
(2, 1, '系统随机组卷', 'a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:2:"11";s:5:"score";s:3:"100";s:9:"passscore";s:2:"60";s:12:"questypelite";a:5:{i:2;s:1:"1";i:3;s:1:"1";i:1;s:1:"1";i:4;s:1:"0";i:5;s:1:"0";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:3:{i:1;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}', '', '', 0, 1, 1, 'peadmin', 1434015369, '', 0),
(3, 1, '一轮模拟组卷', 'a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:2:"11";s:5:"score";s:3:"100";s:9:"passscore";s:2:"70";s:12:"questypelite";a:5:{i:3;s:1:"1";i:2;s:1:"1";i:1;s:1:"1";i:4;s:1:"0";i:5;s:1:"0";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:3:{i:1;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:2:"10";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:2:"10";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}', '', '', 0, 1, 1, 'peadmin', 1434015425, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_examsession`
--

CREATE TABLE IF NOT EXISTS `x2_examsession` (
  `examsessionid` varchar(32) NOT NULL,
  `examsessionuserid` int(11) NOT NULL,
  `examsession` varchar(240) NOT NULL,
  `examsessionsetting` text NOT NULL,
  `examsessionsign` text,
  `examsessionbasic` tinyint(4) NOT NULL,
  `examsessiontype` int(1) NOT NULL,
  `examsessionkey` varchar(32) NOT NULL,
  `examsessionquestion` longtext NOT NULL,
  `examsessionuseranswer` text,
  `examsessionstarttime` int(11) NOT NULL,
  `examsessiontime` int(11) NOT NULL,
  `examsessionstatus` int(1) NOT NULL,
  `examsessionscore` decimal(10,1) NOT NULL,
  `examsessionscorelist` text,
  `examsessionissave` int(1) NOT NULL,
  `examsessiontimelist` text,
  PRIMARY KEY (`examsessionid`),
  KEY `examsessionstarttime` (`examsessionstarttime`),
  KEY `examsessionstatus` (`examsessionstatus`),
  KEY `examsessiontype` (`examsessiontype`),
  KEY `examsessionkey` (`examsessionkey`),
  KEY `examsubject` (`examsessionbasic`),
  KEY `examsessionissave` (`examsessionissave`),
  KEY `examsessionuserid` (`examsessionuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_favor`
--

CREATE TABLE IF NOT EXISTS `x2_favor` (
  `favorid` int(11) NOT NULL AUTO_INCREMENT,
  `favoruserid` int(11) NOT NULL,
  `favorsubjectid` int(11) NOT NULL,
  `favorquestionid` int(11) NOT NULL,
  `favortime` int(11) NOT NULL,
  PRIMARY KEY (`favorid`),
  KEY `favoruserid` (`favoruserid`,`favorquestionid`,`favortime`),
  KEY `favorsubjectid` (`favorsubjectid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_favor`
--

INSERT INTO `x2_favor` (`favorid`, `favoruserid`, `favorsubjectid`, `favorquestionid`, `favortime`) VALUES
(1, 1, 1, 114, 1444473627);

-- --------------------------------------------------------

--
-- 表的结构 `x2_gbook`
--

CREATE TABLE IF NOT EXISTS `x2_gbook` (
  `gbid` int(11) NOT NULL AUTO_INCREMENT,
  `gbinfo` text NOT NULL,
  `gbcontent` text NOT NULL,
  `gbreply` text NOT NULL,
  `gbtime` int(11) NOT NULL,
  `gbreplytime` int(11) NOT NULL,
  `gbstatus` int(1) NOT NULL,
  PRIMARY KEY (`gbid`),
  KEY `gbtime` (`gbtime`),
  KEY `gbreplytime` (`gbreplytime`),
  KEY `gbstatus` (`gbstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_knows`
--

CREATE TABLE IF NOT EXISTS `x2_knows` (
  `knowsid` int(11) NOT NULL AUTO_INCREMENT,
  `knows` varchar(120) NOT NULL,
  `knowssectionid` int(11) NOT NULL,
  `knowsdescribe` text NOT NULL,
  `knowsstatus` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`knowsid`),
  KEY `knows` (`knows`,`knowssectionid`),
  KEY `knowsstatus` (`knowsstatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `x2_knows`
--

INSERT INTO `x2_knows` (`knowsid`, `knows`, `knowssectionid`, `knowsdescribe`, `knowsstatus`) VALUES
(1, '请修改知识点1', 1, '', 1),
(2, '请修改知识点2', 1, '', 1),
(3, '请修改知识点3', 1, '', 1),
(4, '请修改知识点4', 1, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_module`
--

CREATE TABLE IF NOT EXISTS `x2_module` (
  `moduleid` int(11) NOT NULL AUTO_INCREMENT,
  `modulecode` varchar(24) NOT NULL,
  `modulename` varchar(60) NOT NULL,
  `moduledescribe` tinytext NOT NULL,
  `moduleapp` varchar(24) NOT NULL,
  `moduletable` varchar(24) NOT NULL,
  `moduleallowreg` tinyint(1) NOT NULL,
  `modulestatus` int(1) NOT NULL,
  PRIMARY KEY (`moduleid`),
  UNIQUE KEY `modulecode` (`modulecode`),
  KEY `modulename` (`modulename`),
  KEY `moduleapp` (`moduleapp`),
  KEY `moduleallowreg` (`moduleallowreg`),
  KEY `modulestatus` (`modulestatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `x2_module`
--

INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`) VALUES
(1, 'manager', '管理员模型', '管理员', 'user', 'user_data', 0, 0),
(9, 'normal', '普通用户', '普通用户', 'user', '', 0, 0),
(4, 'news', '最新动态', '相关新闻及考情动态', 'content', 'content_data', 0, 0),
(11, 'spnormal', '普通信息', '普通信息', 'special', '', 0, 0),
(12, 'teacher', '教师模型', '教师模型', 'user', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_module_fields`
--

CREATE TABLE IF NOT EXISTS `x2_module_fields` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldappid` varchar(12) NOT NULL,
  `fieldmoduleid` int(4) NOT NULL,
  `fieldsequence` tinyint(4) NOT NULL,
  `field` varchar(24) NOT NULL,
  `fieldtitle` varchar(60) NOT NULL,
  `fieldlength` varchar(12) NOT NULL,
  `fielddescribe` text NOT NULL,
  `fieldtype` varchar(24) NOT NULL,
  `fieldhtmltype` varchar(24) NOT NULL,
  `fieldhtmlproperty` text NOT NULL,
  `fieldvalues` text NOT NULL,
  `fielddefault` text NOT NULL,
  `fieldlock` tinyint(1) NOT NULL,
  `fieldindextype` varchar(12) NOT NULL,
  `fieldforbidactors` tinytext NOT NULL,
  `fieldsystem` int(1) NOT NULL,
  `fieldpublic` int(1) NOT NULL,
  PRIMARY KEY (`fieldid`),
  KEY `field` (`field`,`fieldlock`),
  KEY `fieldmoduleid` (`fieldmoduleid`),
  KEY `fieldsequence` (`fieldsequence`),
  KEY `fieldsystem` (`fieldsystem`),
  KEY `fieldpublic` (`fieldpublic`),
  KEY `fieldappid` (`fieldappid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `x2_module_fields`
--

INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES
(1, 'user', 1, 2, 'manager_apps', '可管理模块', '120', '', 'varchar', 'select', '', '用户=user\r\n内容=content', '', 0, '0', ',-1,', 0, 0),
(2, 'user', 1, 1, 'photo', '用户肖像', '120', '', 'varchar', 'videotext', '', '', '', 0, '0', ',,', 0, 1),
(3, 'user', 1, 1, 'usertruename', '真实姓名', '24', '', 'varchar', 'text', '', '', '', 0, '0', ',,', 0, 1),
(6, 'user', 9, 0, 'normal_favor', '爱好', '250', '', 'varchar', 'checkboxarray', '', '吃=吃\r\n喝=喝\r\n拉=拉\r\n撒=撒\r\n睡=睡', '吃', 0, '0', ',,', 0, 0),
(7, 'user', 12, 0, 'teacher_subjects', '可管理考试应用科目', '', '', 'text', 'checkboxarray', '', '请修改科目名称=1', '', 0, '0', ',-1,', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_openbasics`
--

CREATE TABLE IF NOT EXISTS `x2_openbasics` (
  `obid` int(11) NOT NULL AUTO_INCREMENT,
  `obuserid` int(11) NOT NULL,
  `obbasicid` int(11) NOT NULL,
  `obtime` int(11) NOT NULL,
  `obendtime` int(11) NOT NULL,
  PRIMARY KEY (`obid`),
  KEY `oluserid` (`obuserid`,`obbasicid`,`obtime`,`obendtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `x2_openbasics`
--

INSERT INTO `x2_openbasics` (`obid`, `obuserid`, `obbasicid`, `obtime`, `obendtime`) VALUES
(28, 59, 5, 1414301844, 1445837844),
(29, 49, 5, 1414591481, 1446127481),
(21, 54, 5, 1387256651, 1418792651),
(22, 54, 4, 1387268047, 1418804047),
(23, 98, 5, 1392631970, 1395223970),
(24, 98, 4, 1392631972, 1395223972),
(25, 98, 3, 1392631974, 1395223974),
(26, 98, 2, 1392631975, 1395223975),
(27, 98, 1, 1392631976, 1395223976),
(30, 54, 2, 1414640606, 1446176606),
(31, 49, 1, 1414650468, 1446186468),
(36, 1, 1, 1433846114, 1465382114),
(34, 2, 1, 1431687264, 1463223264),
(35, 3, 1, 1432737518, 1435329518),
(37, 4, 1, 1433922468, 1465458468),
(38, 5, 1, 1435492054, 1467028054),
(39, 8, 1, 1444617417, 1476153417);

-- --------------------------------------------------------

--
-- 表的结构 `x2_orders`
--

CREATE TABLE IF NOT EXISTS `x2_orders` (
  `ordersn` varchar(15) NOT NULL,
  `ordertitle` varchar(240) NOT NULL,
  `orderdescribe` text NOT NULL,
  `orderitems` text NOT NULL,
  `orderprice` decimal(10,2) NOT NULL,
  `orderuserid` int(11) NOT NULL,
  `orderuserinfo` text NOT NULL,
  `orderstatus` int(2) NOT NULL,
  `orderfullprice` decimal(10,2) NOT NULL,
  `ordercreatetime` int(11) NOT NULL,
  `orderpaytime` int(11) NOT NULL,
  `orderouttime` int(11) NOT NULL,
  `orderrecivetime` int(11) NOT NULL,
  `orderfaq` text NOT NULL,
  `orderpost` text NOT NULL,
  PRIMARY KEY (`ordersn`),
  KEY `orderprice` (`orderprice`,`ordercreatetime`,`orderpaytime`),
  KEY `orderuserid` (`orderuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_orders`
--

INSERT INTO `x2_orders` (`ordersn`, `ordertitle`, `orderdescribe`, `orderitems`, `orderprice`, `orderuserid`, `orderuserinfo`, `orderstatus`, `orderfullprice`, `ordercreatetime`, `orderpaytime`, `orderouttime`, `orderrecivetime`, `orderfaq`, `orderpost`) VALUES
('201510121120892', '考试系统充值 88 元', '', '', '88.00', 8, 'a:1:{s:8:"username";s:4:"test";}', 1, '0.00', 1444620043, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_poscontent`
--

CREATE TABLE IF NOT EXISTS `x2_poscontent` (
  `pcid` int(11) NOT NULL AUTO_INCREMENT,
  `pcposid` int(11) NOT NULL,
  `pccontentid` int(11) NOT NULL,
  `pcthumb` varchar(120) NOT NULL,
  `pcsequence` int(11) NOT NULL,
  `pctitle` varchar(240) NOT NULL,
  `pctime` int(11) NOT NULL,
  PRIMARY KEY (`pcid`),
  KEY `pcposid` (`pcposid`,`pccontentid`,`pcsequence`),
  KEY `pctime` (`pctime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_position`
--

CREATE TABLE IF NOT EXISTS `x2_position` (
  `posid` int(11) NOT NULL AUTO_INCREMENT,
  `posname` varchar(120) NOT NULL,
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_product`
--

CREATE TABLE IF NOT EXISTS `x2_product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `producttype` varchar(24) NOT NULL,
  `productpartnerid` int(11) NOT NULL,
  `productname` varchar(240) NOT NULL,
  `productcode` int(11) NOT NULL,
  `productprice` decimal(10,2) NOT NULL,
  `productdescribe` text NOT NULL,
  `productlesson` varchar(40) NOT NULL,
  `producttry` varchar(240) NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `partnercode` (`productcode`),
  KEY `productpartnerid` (`productpartnerid`),
  KEY `producttype` (`producttype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `x2_product`
--

INSERT INTO `x2_product` (`productid`, `producttype`, `productpartnerid`, `productname`, `productcode`, `productprice`, `productdescribe`, `productlesson`, `producttry`) VALUES
(4, 'taocan[]', 1, '财经法规', 10, '0.01', '财经法规', '20', 'http://www.163.com');

-- --------------------------------------------------------

--
-- 表的结构 `x2_quest2knows`
--

CREATE TABLE IF NOT EXISTS `x2_quest2knows` (
  `qkid` int(11) NOT NULL AUTO_INCREMENT,
  `qkquestionid` int(11) NOT NULL,
  `qkknowsid` int(11) NOT NULL,
  `qktype` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`qkid`),
  KEY `qkquestionid` (`qkquestionid`,`qkknowsid`),
  KEY `qktype` (`qktype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8324 ;

--
-- 转存表中的数据 `x2_quest2knows`
--

INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 1, 0),
(6, 6, 1, 0),
(7, 7, 1, 0),
(8, 8, 1, 0),
(9, 9, 1, 0),
(10, 10, 1, 0),
(11, 11, 1, 0),
(12, 12, 1, 0),
(13, 13, 1, 0),
(14, 14, 1, 0),
(15, 15, 1, 0),
(16, 16, 1, 0),
(17, 17, 1, 0),
(18, 18, 1, 0),
(19, 19, 1, 0),
(20, 20, 1, 0),
(21, 21, 1, 0),
(22, 22, 1, 0),
(23, 23, 1, 0),
(24, 24, 1, 0),
(25, 25, 1, 0),
(26, 26, 1, 0),
(27, 27, 1, 0),
(28, 28, 1, 0),
(29, 29, 1, 0),
(30, 30, 1, 0),
(31, 31, 1, 0),
(32, 32, 1, 0),
(33, 33, 1, 0),
(34, 34, 1, 0),
(35, 35, 1, 0),
(36, 36, 1, 0),
(37, 37, 1, 0),
(38, 38, 1, 0),
(39, 39, 1, 0),
(40, 40, 1, 0),
(41, 41, 1, 0),
(42, 42, 1, 0),
(43, 43, 1, 0),
(44, 44, 1, 0),
(45, 45, 1, 0),
(46, 46, 1, 0),
(47, 47, 1, 0),
(48, 48, 1, 0),
(49, 49, 1, 0),
(50, 50, 1, 0),
(51, 51, 1, 0),
(52, 52, 1, 0),
(53, 53, 1, 0),
(54, 54, 1, 0),
(55, 55, 1, 0),
(56, 56, 1, 0),
(57, 57, 1, 0),
(58, 58, 1, 0),
(59, 59, 1, 0),
(60, 60, 1, 0),
(61, 61, 1, 0),
(62, 62, 1, 0),
(63, 63, 1, 0),
(64, 64, 1, 0),
(65, 65, 1, 0),
(66, 66, 1, 0),
(67, 67, 1, 0),
(68, 68, 1, 0),
(69, 69, 1, 0),
(70, 70, 1, 0),
(71, 71, 1, 0),
(72, 72, 1, 0),
(73, 73, 1, 0),
(74, 74, 1, 0),
(75, 75, 1, 0),
(76, 76, 1, 0),
(77, 77, 1, 0),
(78, 78, 1, 0),
(79, 79, 1, 0),
(80, 80, 1, 0),
(81, 81, 1, 0),
(82, 82, 1, 0),
(83, 83, 1, 0),
(84, 84, 1, 0),
(85, 85, 1, 0),
(86, 86, 1, 0),
(87, 87, 1, 0),
(88, 88, 1, 0),
(89, 89, 1, 0),
(90, 90, 1, 0),
(91, 91, 1, 0),
(92, 92, 1, 0),
(93, 93, 1, 0),
(94, 94, 1, 0),
(95, 95, 1, 0),
(96, 96, 1, 0),
(97, 97, 1, 0),
(98, 98, 1, 0),
(99, 99, 1, 0),
(100, 100, 1, 0),
(101, 101, 1, 0),
(102, 102, 1, 0),
(103, 103, 1, 0),
(104, 104, 1, 0),
(105, 105, 1, 0),
(106, 106, 1, 0),
(107, 107, 1, 0),
(108, 108, 1, 0),
(109, 109, 1, 0),
(110, 110, 1, 0),
(111, 111, 1, 0),
(112, 112, 1, 0),
(113, 113, 1, 0),
(114, 114, 1, 0),
(115, 115, 1, 0),
(116, 116, 1, 0),
(117, 117, 1, 0),
(118, 118, 1, 0),
(119, 119, 1, 0),
(120, 120, 1, 0),
(121, 121, 1, 0),
(122, 122, 1, 0),
(123, 123, 1, 0),
(124, 124, 1, 0),
(125, 125, 1, 0),
(126, 126, 1, 0),
(127, 127, 1, 0),
(128, 128, 1, 0),
(129, 129, 1, 0),
(130, 130, 1, 0),
(131, 131, 1, 0),
(132, 132, 1, 0),
(133, 133, 1, 0),
(134, 134, 1, 0),
(135, 135, 1, 0),
(136, 136, 1, 0),
(137, 137, 1, 0),
(138, 138, 1, 0),
(139, 139, 1, 0),
(140, 140, 1, 0),
(141, 141, 1, 0),
(142, 142, 1, 0),
(143, 143, 1, 0),
(144, 144, 1, 0),
(145, 145, 1, 0),
(146, 146, 1, 0),
(147, 147, 1, 0),
(148, 148, 1, 0),
(149, 149, 1, 0),
(150, 150, 1, 0),
(151, 151, 1, 0),
(152, 152, 2, 0),
(153, 153, 2, 0),
(154, 154, 2, 0),
(155, 155, 2, 0),
(156, 156, 2, 0),
(157, 157, 2, 0),
(158, 158, 2, 0),
(159, 159, 2, 0),
(160, 160, 2, 0),
(161, 161, 2, 0),
(162, 162, 2, 0),
(163, 163, 2, 0),
(164, 164, 2, 0),
(165, 165, 2, 0),
(166, 166, 2, 0),
(167, 167, 2, 0),
(168, 168, 2, 0),
(169, 169, 2, 0),
(170, 170, 2, 0),
(171, 171, 2, 0),
(172, 172, 2, 0),
(173, 173, 2, 0),
(174, 174, 2, 0),
(175, 175, 2, 0),
(176, 176, 2, 0),
(177, 177, 2, 0),
(178, 178, 2, 0),
(179, 179, 2, 0),
(180, 180, 2, 0),
(181, 181, 2, 0),
(182, 182, 2, 0),
(183, 183, 2, 0),
(184, 184, 2, 0),
(185, 185, 2, 0),
(186, 186, 2, 0),
(187, 187, 2, 0),
(188, 188, 2, 0),
(189, 189, 2, 0),
(190, 190, 2, 0),
(191, 191, 2, 0),
(192, 192, 2, 0),
(193, 193, 2, 0),
(194, 194, 2, 0),
(195, 195, 2, 0),
(196, 196, 2, 0),
(197, 197, 2, 0),
(198, 198, 2, 0),
(199, 199, 2, 0),
(200, 200, 2, 0),
(201, 201, 2, 0),
(202, 202, 2, 0),
(203, 203, 2, 0),
(204, 204, 2, 0),
(205, 205, 2, 0),
(206, 206, 2, 0),
(207, 207, 2, 0),
(208, 208, 2, 0),
(209, 209, 2, 0),
(210, 210, 2, 0),
(211, 211, 2, 0),
(212, 212, 2, 0),
(213, 213, 2, 0),
(214, 214, 2, 0),
(215, 215, 2, 0),
(216, 216, 2, 0),
(217, 217, 2, 0),
(218, 218, 2, 0),
(219, 219, 2, 0),
(220, 220, 2, 0),
(8323, 221, 2, 0),
(222, 222, 2, 0),
(223, 223, 2, 0),
(224, 224, 2, 0),
(225, 225, 2, 0),
(226, 226, 2, 0),
(227, 227, 2, 0),
(228, 228, 2, 0),
(229, 229, 2, 0),
(230, 230, 1, 0),
(231, 231, 1, 0),
(232, 232, 1, 0),
(233, 233, 1, 0),
(234, 234, 1, 0),
(235, 235, 1, 0),
(236, 236, 1, 0),
(237, 237, 1, 0),
(238, 238, 1, 0),
(239, 239, 1, 0),
(240, 240, 1, 0),
(241, 241, 1, 0),
(242, 242, 1, 0),
(243, 243, 1, 0),
(244, 244, 1, 0),
(245, 245, 1, 0),
(246, 246, 1, 0),
(247, 247, 1, 0),
(248, 248, 1, 0),
(249, 249, 1, 0),
(250, 250, 1, 0),
(251, 251, 1, 0),
(252, 252, 1, 0),
(253, 253, 1, 0),
(254, 254, 1, 0),
(255, 255, 1, 0),
(256, 256, 1, 0),
(257, 257, 1, 0),
(258, 258, 1, 0),
(259, 259, 1, 0),
(260, 260, 1, 0),
(261, 261, 1, 0),
(262, 262, 1, 0),
(263, 263, 1, 0),
(264, 264, 1, 0),
(265, 265, 1, 0),
(266, 266, 1, 0),
(267, 267, 1, 0),
(268, 268, 1, 0),
(269, 269, 1, 0),
(270, 270, 1, 0),
(271, 271, 1, 0),
(272, 272, 1, 0),
(273, 273, 1, 0),
(274, 274, 1, 0),
(275, 275, 1, 0),
(276, 276, 1, 0),
(277, 277, 1, 0),
(278, 278, 1, 0),
(279, 279, 1, 0),
(280, 280, 1, 0),
(281, 281, 1, 0),
(282, 282, 1, 0),
(283, 283, 1, 0),
(284, 284, 1, 0),
(285, 285, 1, 0),
(286, 286, 1, 0),
(287, 287, 1, 0),
(288, 288, 1, 0),
(289, 289, 1, 0),
(290, 290, 1, 0),
(291, 291, 1, 0),
(292, 292, 1, 0),
(293, 293, 1, 0),
(294, 294, 1, 0),
(295, 295, 1, 0),
(296, 296, 1, 0),
(297, 297, 1, 0),
(298, 298, 1, 0),
(299, 299, 1, 0),
(300, 300, 1, 0),
(301, 301, 1, 0),
(302, 302, 1, 0),
(303, 303, 1, 0),
(304, 304, 1, 0),
(305, 305, 1, 0),
(306, 306, 1, 0),
(307, 307, 1, 0),
(308, 308, 1, 0),
(309, 309, 1, 0),
(310, 310, 2, 0),
(311, 311, 2, 0),
(312, 312, 2, 0),
(313, 313, 2, 0),
(314, 314, 2, 0),
(315, 315, 2, 0),
(316, 316, 2, 0),
(317, 317, 2, 0),
(318, 318, 2, 0),
(319, 319, 2, 0),
(320, 320, 2, 0),
(321, 321, 2, 0),
(322, 322, 2, 0),
(323, 323, 2, 0),
(324, 324, 2, 0),
(325, 325, 2, 0),
(326, 326, 2, 0),
(327, 327, 2, 0),
(328, 328, 2, 0),
(329, 329, 2, 0),
(330, 330, 2, 0),
(331, 331, 2, 0),
(332, 332, 2, 0),
(333, 333, 2, 0),
(334, 334, 2, 0),
(335, 335, 2, 0),
(336, 336, 2, 0),
(337, 337, 2, 0),
(338, 338, 2, 0),
(339, 339, 2, 0),
(340, 340, 2, 0),
(341, 341, 2, 0),
(342, 342, 2, 0),
(343, 343, 2, 0),
(344, 344, 2, 0),
(345, 345, 2, 0),
(346, 346, 2, 0),
(347, 347, 2, 0),
(348, 348, 2, 0),
(349, 349, 2, 0),
(350, 350, 2, 0),
(351, 351, 2, 0),
(352, 352, 2, 0),
(353, 353, 2, 0),
(354, 354, 2, 0),
(355, 355, 2, 0),
(356, 356, 2, 0),
(8310, 357, 2, 0),
(358, 358, 2, 0),
(359, 359, 2, 0),
(360, 360, 2, 0),
(361, 361, 2, 0),
(362, 362, 2, 0),
(363, 363, 2, 0),
(364, 364, 2, 0),
(365, 365, 2, 0),
(366, 366, 2, 0),
(367, 367, 2, 0),
(368, 368, 2, 0),
(369, 369, 2, 0),
(370, 370, 2, 0),
(371, 371, 2, 0),
(372, 372, 2, 0),
(373, 373, 2, 0),
(374, 374, 2, 0),
(375, 375, 2, 0),
(376, 376, 2, 0),
(377, 377, 2, 0),
(378, 378, 2, 0),
(379, 379, 2, 0),
(380, 380, 2, 0),
(381, 381, 2, 0),
(382, 382, 2, 0),
(383, 383, 2, 0),
(384, 384, 2, 0),
(385, 385, 2, 0),
(386, 386, 2, 0),
(387, 387, 2, 0),
(388, 388, 2, 0),
(389, 389, 2, 0),
(390, 390, 3, 0),
(391, 391, 3, 0),
(392, 392, 3, 0),
(393, 393, 3, 0),
(394, 394, 3, 0),
(395, 395, 3, 0),
(396, 396, 3, 0),
(397, 397, 3, 0),
(398, 398, 3, 0),
(399, 399, 3, 0),
(400, 400, 3, 0),
(401, 401, 3, 0),
(402, 402, 3, 0),
(633, 403, 1, 0),
(404, 404, 3, 0),
(405, 405, 3, 0),
(407, 491, 1, 0),
(408, 492, 1, 0),
(409, 493, 1, 0),
(410, 494, 1, 0),
(411, 495, 1, 0),
(412, 496, 1, 0),
(413, 497, 1, 0),
(414, 498, 1, 0),
(415, 499, 1, 0),
(416, 500, 1, 0),
(417, 501, 1, 0),
(418, 502, 1, 0),
(419, 503, 1, 0),
(420, 504, 1, 0),
(421, 505, 1, 0),
(422, 506, 1, 0),
(423, 507, 1, 0),
(424, 508, 1, 0),
(425, 509, 1, 0),
(426, 510, 1, 0),
(427, 511, 1, 0),
(428, 512, 1, 0),
(429, 513, 1, 0),
(430, 514, 1, 0),
(431, 515, 1, 0),
(432, 516, 1, 0),
(433, 517, 1, 0),
(434, 518, 1, 0),
(435, 519, 1, 0),
(436, 520, 1, 0),
(437, 521, 1, 0),
(438, 522, 1, 0),
(439, 523, 1, 0),
(440, 524, 1, 0),
(441, 525, 1, 0),
(442, 526, 1, 0),
(443, 527, 1, 0),
(444, 528, 1, 0),
(445, 529, 1, 0),
(446, 530, 1, 0),
(447, 531, 1, 0),
(448, 532, 1, 0),
(449, 533, 1, 0),
(450, 534, 1, 0),
(451, 535, 1, 0),
(452, 536, 1, 0),
(453, 537, 1, 0),
(454, 538, 1, 0),
(455, 539, 1, 0),
(456, 540, 1, 0),
(457, 541, 1, 0),
(458, 542, 1, 0),
(459, 543, 1, 0),
(460, 544, 1, 0),
(461, 545, 1, 0),
(462, 546, 1, 0),
(463, 547, 1, 0),
(464, 548, 1, 0),
(465, 549, 1, 0),
(466, 550, 1, 0),
(467, 551, 1, 0),
(468, 552, 1, 0),
(469, 553, 1, 0),
(470, 554, 1, 0),
(471, 555, 1, 0),
(472, 556, 1, 0),
(473, 557, 1, 0),
(474, 558, 1, 0),
(475, 559, 1, 0),
(476, 560, 1, 0),
(477, 561, 1, 0),
(478, 562, 1, 0),
(479, 563, 1, 0),
(480, 564, 1, 0),
(481, 565, 1, 0),
(482, 566, 1, 0),
(483, 567, 1, 0),
(484, 568, 1, 0),
(485, 569, 1, 0),
(486, 570, 1, 0),
(487, 571, 1, 0),
(488, 572, 1, 0),
(489, 573, 1, 0),
(490, 574, 1, 0),
(491, 575, 1, 0),
(492, 576, 1, 0),
(493, 577, 1, 0),
(494, 578, 1, 0),
(495, 579, 1, 0),
(496, 580, 1, 0),
(497, 581, 1, 0),
(498, 582, 1, 0),
(499, 583, 1, 0),
(500, 584, 1, 0),
(501, 585, 1, 0),
(502, 586, 2, 0),
(503, 587, 2, 0),
(504, 588, 2, 0),
(505, 589, 2, 0),
(506, 590, 2, 0),
(507, 591, 2, 0),
(508, 592, 2, 0),
(509, 593, 2, 0),
(510, 594, 2, 0),
(511, 595, 2, 0),
(512, 596, 2, 0),
(513, 597, 2, 0),
(514, 598, 2, 0),
(515, 599, 2, 0),
(516, 600, 2, 0),
(517, 601, 2, 0),
(518, 602, 2, 0),
(519, 603, 2, 0),
(520, 604, 2, 0),
(521, 605, 2, 0),
(522, 606, 2, 0),
(523, 607, 2, 0),
(524, 608, 2, 0),
(525, 609, 2, 0),
(526, 610, 2, 0),
(527, 611, 2, 0),
(528, 612, 2, 0),
(529, 613, 2, 0),
(530, 614, 2, 0),
(531, 615, 2, 0),
(532, 616, 2, 0),
(533, 617, 2, 0),
(534, 618, 2, 0),
(535, 619, 2, 0),
(536, 620, 2, 0),
(537, 621, 2, 0),
(538, 622, 2, 0),
(539, 623, 2, 0),
(540, 624, 2, 0),
(541, 625, 2, 0),
(542, 626, 2, 0),
(543, 627, 2, 0),
(544, 628, 2, 0),
(545, 629, 2, 0),
(546, 630, 2, 0),
(547, 631, 2, 0),
(548, 632, 2, 0),
(549, 633, 2, 0),
(550, 634, 2, 0),
(551, 635, 2, 0),
(552, 636, 2, 0),
(553, 637, 2, 0),
(554, 638, 2, 0),
(555, 639, 2, 0),
(556, 640, 2, 0),
(557, 641, 2, 0),
(558, 642, 2, 0),
(559, 643, 2, 0),
(560, 644, 2, 0),
(561, 645, 2, 0),
(562, 646, 2, 0),
(563, 647, 2, 0),
(564, 648, 2, 0),
(565, 649, 2, 0),
(566, 650, 2, 0),
(567, 651, 2, 0),
(568, 652, 2, 0),
(569, 653, 2, 0),
(570, 654, 2, 0),
(571, 655, 2, 0),
(572, 656, 2, 0),
(573, 657, 2, 0),
(574, 658, 2, 0),
(575, 659, 2, 0),
(576, 660, 2, 0),
(577, 661, 2, 0),
(578, 662, 2, 0),
(579, 663, 2, 0),
(580, 664, 2, 0),
(581, 665, 2, 0),
(582, 666, 2, 0),
(583, 667, 2, 0),
(584, 668, 2, 0),
(585, 669, 2, 0),
(586, 670, 2, 0),
(587, 671, 2, 0),
(588, 672, 2, 0),
(589, 673, 2, 0),
(590, 674, 2, 0),
(591, 675, 2, 0),
(592, 676, 2, 0),
(593, 677, 2, 0),
(594, 678, 2, 0),
(595, 679, 2, 0),
(596, 680, 2, 0),
(597, 681, 2, 0),
(598, 682, 2, 0),
(599, 683, 2, 0),
(600, 684, 2, 0),
(601, 685, 2, 0),
(602, 686, 2, 0),
(603, 687, 2, 0),
(604, 688, 2, 0),
(605, 689, 2, 0),
(606, 690, 2, 0),
(607, 691, 2, 0),
(608, 692, 2, 0),
(609, 693, 2, 0),
(610, 694, 2, 0),
(611, 695, 2, 0),
(612, 696, 2, 0),
(613, 697, 2, 0),
(614, 698, 2, 0),
(615, 699, 2, 0),
(616, 700, 2, 0),
(617, 701, 2, 0),
(618, 702, 2, 0),
(619, 703, 2, 0),
(620, 704, 2, 0),
(621, 705, 2, 0),
(622, 706, 3, 0),
(623, 707, 3, 0),
(624, 708, 3, 0),
(625, 709, 3, 0),
(626, 710, 3, 0),
(627, 711, 3, 0),
(628, 712, 3, 0),
(629, 713, 3, 0),
(630, 714, 3, 0),
(631, 715, 3, 0),
(634, 771, 1, 0),
(8322, 764, 2, 0),
(636, 773, 1, 0),
(8311, 8446, 1, 0),
(8316, 770, 4, 0),
(8317, 766, 1, 0),
(8318, 769, 3, 0),
(8321, 8447, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questionrows`
--

CREATE TABLE IF NOT EXISTS `x2_questionrows` (
  `qrid` int(11) NOT NULL AUTO_INCREMENT,
  `qrtype` tinyint(4) NOT NULL DEFAULT '2',
  `qrquestion` mediumtext NOT NULL,
  `qrknowsid` tinytext NOT NULL,
  `qrlevel` int(1) NOT NULL,
  `qrnumber` int(4) NOT NULL,
  `qruserid` int(11) NOT NULL,
  `qrusername` varchar(120) NOT NULL,
  `qrlastmodifyuser` varchar(120) NOT NULL,
  `qrtime` int(11) NOT NULL,
  `qrstatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`qrid`),
  KEY `qrlevel` (`qrlevel`,`qrnumber`),
  KEY `qruserid` (`qruserid`),
  KEY `qrtime` (`qrtime`),
  KEY `qrstatus` (`qrstatus`),
  KEY `qrtype` (`qrtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_questionrows`
--

INSERT INTO `x2_questionrows` (`qrid`, `qrtype`, `qrquestion`, `qrknowsid`, `qrlevel`, `qrnumber`, `qruserid`, `qrusername`, `qrlastmodifyuser`, `qrtime`, `qrstatus`) VALUES
(1, 1, '&lt;p&gt;测试题冒题&lt;/p&gt;', 'a:0:{}', 1, 2, 54, 'peadmin', '', 1376419110, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questions`
--

CREATE TABLE IF NOT EXISTS `x2_questions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `questiontype` int(3) NOT NULL,
  `question` text NOT NULL,
  `questionuserid` int(11) NOT NULL,
  `questionusername` varchar(120) NOT NULL,
  `questionlastmodifyuser` varchar(120) NOT NULL,
  `questionselect` text NOT NULL,
  `questionselectnumber` tinyint(11) NOT NULL,
  `questionanswer` text NOT NULL,
  `questiondescribe` text NOT NULL,
  `questionknowsid` text NOT NULL,
  `questioncreatetime` int(11) NOT NULL,
  `questionstatus` int(1) NOT NULL DEFAULT '1',
  `questionhtml` text NOT NULL,
  `questionparent` int(11) NOT NULL,
  `questionsequence` int(3) NOT NULL,
  `questionlevel` int(1) NOT NULL,
  PRIMARY KEY (`questionid`),
  KEY `questioncreatetime` (`questioncreatetime`),
  KEY `questiontype` (`questiontype`),
  KEY `questionstatus` (`questionstatus`),
  KEY `questionuserid` (`questionuserid`),
  KEY `questionparent` (`questionparent`,`questionsequence`),
  KEY `questionlevel` (`questionlevel`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8448 ;

--
-- 转存表中的数据 `x2_questions`
--

INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(1, 1, '《新青年》创刊后的一年多时间里，发行量长期徘徊在1000册左右；1918年后，发行量猛增至20000册。出现这一局面的直接原因是（）', 0, '', '', '&lt;p&gt;A、民主科学思想深入人心&lt;/p&gt;&lt;p&gt;B、十月革命的影响&lt;/p&gt;&lt;p&gt;C、文学革命的开展&lt;/p&gt;&lt;p&gt;D、五四运动的影响&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 0, '', 0, 0, 1),
(2, 1, '新民主主义革命时期，在上海召开的中国共产党全国代表大会是（）。', 0, '', '', '&lt;p&gt;A、一大二大三大&lt;/p&gt;&lt;p&gt;B、二大三大五大&lt;/p&gt;&lt;p&gt;C、一大二大四大&lt;/p&gt;&lt;p&gt;D、一大四大七大&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 0, '', 0, 0, 1),
(3, 1, '中国共产党第（）次全国代表大会，制定了作为一个完备形态的政党所不可缺少的民主革命纲领，制定了党的章程，完成了建党任务。', 0, '', '', '&lt;p&gt;A、—&lt;/p&gt;&lt;p&gt;B、二&lt;/p&gt;&lt;p&gt;C、三&lt;/p&gt;&lt;p&gt;D、四&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(4, 1, '1923年6月12日至20日，中国共产党第三次全国代表大会在广州召开，这次大会的中心议题是( )。', 0, '', '', '&lt;p&gt;A、武装斗争问题&lt;/p&gt;&lt;p&gt;B、农民运动问题&lt;/p&gt;&lt;p&gt;C、国共合作问题&lt;/p&gt;&lt;p&gt;D、工人运动问题&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(5, 1, '1928年4月朱德、陈毅率领的南昌起义余部到达井冈山与毛泽东领导的部队会合，组成了中国工农红军第（）军。', 0, '', '', '&lt;p&gt;A、一&lt;/p&gt;&lt;p&gt;B、二&lt;/p&gt;&lt;p&gt;C、三&lt;/p&gt;&lt;p&gt;D、四&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(6, 1, '打响了武装反抗国民党反动派的第一枪是（）。', 0, '', '', '&lt;p&gt;A、南昌起义&lt;/p&gt;&lt;p&gt;B、秋收起义&lt;/p&gt;&lt;p&gt;C、广州起义&lt;/p&gt;&lt;p&gt;D、百色起义&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(7, 1, '1934年10月，中央红军开始长征后，留在中央根据地领导南方游击战争的是（）。', 0, '', '', '&lt;p&gt;A、彭德怀项英&lt;/p&gt;&lt;p&gt;B、项英陈毅&lt;/p&gt;&lt;p&gt;C、叶挺粟裕&lt;/p&gt;&lt;p&gt;D、粟裕陈毅&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(8, 1, '1935年1月，中共中央政治局在长征途中举行（），这次会议是中共历史上生死攸关的转折点。', 0, '', '', '&lt;p&gt;A、遵义会议&lt;/p&gt;&lt;p&gt;B、俄界会议&lt;/p&gt;&lt;p&gt;C、洛川会议&lt;/p&gt;&lt;p&gt;D、古田会议&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(9, 1, '上海“孤岛”时期是指从（）年11月中国军队撤离上海到1941年12月珍珠港事变日军侵入上海租界为止。', 0, '', '', '&lt;p&gt;A、1935&lt;/p&gt;&lt;p&gt;B、1936&lt;/p&gt;&lt;p&gt;C、1937&lt;/p&gt;&lt;p&gt;D、1938&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(10, 1, '党的七大是中国共产党在民主革命时期召开的极其重要的一次、也是最后一次代表大会。它的一个重大历史性贡献是确立（）为党的指导思想并写入党章。', 0, '', '', '&lt;p&gt;A、马克思列宁主义&lt;/p&gt;&lt;p&gt;B、毛泽东思想&lt;/p&gt;&lt;p&gt;C、邓小平理论&lt;/p&gt;&lt;p&gt;D、三个代表&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(11, 1, '“千古奇冤，江南一叶；同室操戈，相煎何急?”是周恩来在（）事变后对国民党蒋介石的控诉和回击。', 0, '', '', '&lt;p&gt;A、七七&lt;/p&gt;&lt;p&gt;B、八?一三&lt;/p&gt;&lt;p&gt;C、皖南&lt;/p&gt;&lt;p&gt;D、四?一二&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(12, 1, '1941年5月19日，毛泽东在延安部会上作（）的报告，第一次明确提出了“实事求是”的思想。', 0, '', '', '&lt;p&gt;A、《改造我们的学习》&lt;/p&gt;&lt;p&gt;B、《论联合政府》&lt;/p&gt;&lt;p&gt;C、《论持久战》&lt;/p&gt;&lt;p&gt;D、《新民主主义论》&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(13, 1, '中国人民经过八年抗战，最终取得胜利。日本宣布无条件投降是在（）。', 0, '', '', '&lt;p&gt;A、1945年8月8日&lt;/p&gt;&lt;p&gt;B、1945年8月15日&lt;/p&gt;&lt;p&gt;C、1945年9月2日&lt;/p&gt;&lt;p&gt;D、1949年7月26日&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(14, 1, '为了争取和平、避免内战，1945年8月28日至10月10目，毛泽东偕同周恩来、王若飞，与国民党当局进行了历时43天的谈判。这就是历史上著名的（）。', 0, '', '', '&lt;p&gt;A、重庆谈判&lt;/p&gt;&lt;p&gt;B、南京谈判&lt;/p&gt;&lt;p&gt;C、北平谈判&lt;/p&gt;&lt;p&gt;D、上海谈判&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(15, 1, '1946年8月、毛泽东在延安会见美国进步女记者安娜?路易斯?斯特朗时提出了的著名论断（）。', 0, '', '', '&lt;p&gt;A、枪杆子里出政权&lt;/p&gt;&lt;p&gt;B、东风压倒西风&lt;/p&gt;&lt;p&gt;C、一切反动派都是纸老虎&lt;/p&gt;&lt;p&gt;D、没有调查就没有发言权&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(16, 1, '“中国共产党愿当此时机，向全国同胞提出我们奋斗之总的目标……争取中华民族之独立自由与解放。首先须切实地迅速地准备与发动民族革命抗战，以收复失地和恢复领土主权之完整。”中国共产党提出上述奋斗目标，是为了（）。', 0, '', '', '&lt;p&gt;A、团结各阶层力量推翻北洋军阀统治&lt;/p&gt;&lt;p&gt;B、实现民族团结抗击日本侵略&lt;/p&gt;&lt;p&gt;C、实现民族团结完成反帝反封建任务&lt;/p&gt;&lt;p&gt;D、团结各阶层力量反对蒋介石&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(17, 1, '1949年10月1日、中华人民共和国成立。新中国的建立，标志着近代以来中国面临的争取（）这个历史任务的基本完成。', 0, '', '', '&lt;p&gt;A、自立于世界民族之林&lt;/p&gt;&lt;p&gt;B、实现四个现代化&lt;/p&gt;&lt;p&gt;C、实现中华民族伟大复兴&lt;/p&gt;&lt;p&gt;D、民族独立、人民解放&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(18, 1, '1949年1月19日，毛泽东、周恩来在一封电报中邀请宋庆龄北上参加“新的政治协商会议”。下列对“新的政治协商会议”的叙述正确的是（）。', 0, '', '', '&lt;p&gt;A、“新的政治协商会议”的召开标志着人民代表大会制度的确立&lt;/p&gt;&lt;p&gt;B、“新的政治协商会议”召开时确定了“长期共存、互相监督”方针&lt;/p&gt;&lt;p&gt;C、“新的政治协商会议”召开时讨论了国名、国旗、国徽等问题&lt;/p&gt;&lt;p&gt;D、“新的政治协商会议”的召开标志着社会主义革命的胜利&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(19, 1, '孙中山和毛泽东是20世纪的两位伟人，对中国历史发展都作出了杰出贡献。他们思想的相同之处不包括（）。', 0, '', '', '&lt;p&gt;A、直接来源于西方启蒙思想&lt;/p&gt;&lt;p&gt;B、体现了与时俱进的精神&lt;/p&gt;&lt;p&gt;C、成为中国民主革命指导思想&lt;/p&gt;&lt;p&gt;D、包含反帝反封建的内容&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(20, 1, '毛泽东在1956年纪念孙中山诞辰90周年时说：“我们完成了孙先生没有完成的民主革命”。这是指（）。', 0, '', '', '&lt;p&gt;A、完成了反帝反封建的历史任务&lt;/p&gt;&lt;p&gt;B、建立了人民民主专政的国家政权&lt;/p&gt;&lt;p&gt;C、实现了广大农民无偿获得土地的愿望&lt;/p&gt;&lt;p&gt;D、没收了官僚资本，建立起公有制&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(21, 1, '下列各项中，与“新中国成立初期民主政治制度的特点”这一主题有联系的是（)。', 0, '', '', '&lt;p&gt;A、“人民公社化”运动的开展&lt;/p&gt;&lt;p&gt;B、第一届全国人大的召开&lt;/p&gt;&lt;p&gt;C、和平共处五项原则的提出&lt;/p&gt;&lt;p&gt;D、第一个五年计划的完成&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(22, 1, '1956年9月15至27日党的八大在北京举行，这次大会明确了国内主要矛盾是（）。', 0, '', '', '&lt;p&gt;A、无产阶级和资产阶级的矛盾&lt;/p&gt;&lt;p&gt;B、中华民族和帝国主义的矛盾&lt;/p&gt;&lt;p&gt;C、落后的经济文化和人民需要之间的矛盾&lt;/p&gt;&lt;p&gt;D、人民群众内部矛盾&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(23, 1, '党的十一届三中全会把全党的工作重点转移到（）上来，提出了( )的重要思想。', 0, '', '', '&lt;p&gt;A、社会主义现代化建设改革开放&lt;/p&gt;&lt;p&gt;B、社会主义现代化建设实事求是&lt;/p&gt;&lt;p&gt;C、改革开放实事求是&lt;/p&gt;&lt;p&gt;D、经济建设改革开放&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(24, 1, '党的十一届六中全会通过的（），标志着党胜利地完成了指导思想上的拨乱反正。', 0, '', '', '&lt;p&gt;A、《关于若干历史问题的决议》&lt;/p&gt;&lt;p&gt;B、《关于建国以来党的若干历史问题的决议》&lt;/p&gt;&lt;p&gt;C、《关于党内政治生活的若干准则》&lt;/p&gt;&lt;p&gt;D、《关于整党的决定》&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(25, 1, '以下不属于党的三大作风的内容是（）。', 0, '', '', '&lt;p&gt;A、理论和实践相结合的作风&lt;/p&gt;&lt;p&gt;B、艰苦朴素的作风&lt;/p&gt;&lt;p&gt;C、与人民群众紧密地联系在一起的作风&lt;/p&gt;&lt;p&gt;D、批评及自我批评的作风&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(26, 1, '共产党区别于其他任何政党的显著标志，使党的路线、方针得以顺利贯彻的根本保证的是（）。', 0, '', '', '&lt;p&gt;A、路线纲领&lt;/p&gt;&lt;p&gt;B、三大作风&lt;/p&gt;&lt;p&gt;C、组织机构&lt;/p&gt;&lt;p&gt;D、党纪党章&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(27, 1, '为了克服我国20世纪50年代末发生的严重经济困难，中央决定对国民经济实行“调整、巩固、充实、提高”的八字方针。制定此方针的会议是（）。', 0, '', '', '&lt;p&gt;A、中国八届八中全会&lt;/p&gt;&lt;p&gt;B、中共八届九中全会&lt;/p&gt;&lt;p&gt;C、七千人大会&lt;/p&gt;&lt;p&gt;D、中共八届十中全会&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(28, 1, '我国在联合国的一切合法权益得到恢复是在（）。', 0, '', '', '&lt;p&gt;A、1970年&lt;/p&gt;&lt;p&gt;B、1971年&lt;/p&gt;&lt;p&gt;C、1972年&lt;/p&gt;&lt;p&gt;D、1973年&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(29, 1, '“越顶外交”一词出现于20世纪70年代，日本媒体将当时世界一大国绕过日本率先访问另一国家的外交举动称为“越顶外交”。与“越顶外交”一词有关的历史事件是（）。', 0, '', '', '&lt;p&gt;A、毛泽东访问苏联&lt;/p&gt;&lt;p&gt;B、邓小平访问美国&lt;/p&gt;&lt;p&gt;C、尼克松访问中国&lt;/p&gt;&lt;p&gt;D、周恩来访问印度&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(30, 1, '粉碎“四人帮”后，党中央、国务院决定恢复在“文化大革命”中被废弃的学校招生考试制度。（）年冬，全国高等学校重新开始通过统一考试招收新生。', 0, '', '', '&lt;p&gt;A、1976&lt;/p&gt;&lt;p&gt;B、1977&lt;/p&gt;&lt;p&gt;C、1978&lt;/p&gt;&lt;p&gt;D、1979&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(31, 1, '毛泽东首次提出“马克思主义中国化”命题是在党的（）。', 0, '', '', '&lt;p&gt;A、遵义会议&lt;/p&gt;&lt;p&gt;B、瓦窑堡会议&lt;/p&gt;&lt;p&gt;C、六届六中全会&lt;/p&gt;&lt;p&gt;D、六届七中全会&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(32, 1, '邓小平理论围绕的主题是（）。', 0, '', '', '&lt;p&gt;A、什么是马克思主义，怎样坚持和发展马克思主义&lt;/p&gt;&lt;p&gt;B、什么是社会主义，怎样建设社会主义&lt;/p&gt;&lt;p&gt;C、什么是小康社会，怎样建设小康社会&lt;/p&gt;&lt;p&gt;D、什么是和谐社会，怎样建设和谐社会&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(33, 1, '理论联系实际，是实事求是思想路线的（）。', 0, '', '', '&lt;p&gt;A、前提和基础&lt;/p&gt;&lt;p&gt;B、途径和方法&lt;/p&gt;&lt;p&gt;C、实质&lt;/p&gt;&lt;p&gt;D、验证条件和目的&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(34, 1, '毛泽东提出的“工农武装割据&quot;思想包括的三个组成部分是（）。', 0, '', '', '&lt;p&gt;A、武装斗争、统一战线、党的建设&lt;/p&gt;&lt;p&gt;B、实事求是、群众路线、独立自主&lt;/p&gt;&lt;p&gt;C、土地革命、党的建设、群众路线&lt;/p&gt;&lt;p&gt;D、武装斗争、土地革命、革命根据地&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(35, 1, '中国革命统一战线中，基本的、主要的联盟是（）。', 0, '', '', '&lt;p&gt;A、工人阶级同农民、城市小资产阶级和其他劳动者的联盟&lt;/p&gt;&lt;p&gt;B、工人阶级同可以合作的非劳动者的联盟&lt;/p&gt;&lt;p&gt;C、工人阶级同农民、民族资产阶级的联盟&lt;/p&gt;&lt;p&gt;D、工人阶级同城市小资产阶级的联盟&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(36, 1, '社会主义初级阶段是（）。', 0, '', '', '&lt;p&gt;A、任何国家进入社会主义社会都会经历的起始阶段&lt;/p&gt;&lt;p&gt;B、新民主主义社会向社会主义社会的过渡时期&lt;/p&gt;&lt;p&gt;C、社会主义社会向共产主义社会的过渡时期&lt;/p&gt;&lt;p&gt;D、我国从社会主义改造完成到基本实现社会主义现代化所经历的阶段&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(37, 1, '第一次提出“建设有中国特色的社会主义”这一概念，是在党的（）。', 0, '', '', '&lt;p&gt;A、十二大&lt;/p&gt;&lt;p&gt;B、十三大&lt;/p&gt;&lt;p&gt;C、十五大&lt;/p&gt;&lt;p&gt;D、十七大&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(38, 1, '社会主义建设的经验表明，我们的立国之本是（）。', 0, '', '', '&lt;p&gt;A、四项基本原则&lt;/p&gt;&lt;p&gt;B、改革开放&lt;/p&gt;&lt;p&gt;C、社会主义民主政治&lt;/p&gt;&lt;p&gt;D、社会主义公有制经济&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(39, 1, '推动社会主义社会不断前进的根本动力是（）。', 0, '', '', '&lt;p&gt;A、社会主义社会的基本矛盾&lt;/p&gt;&lt;p&gt;B、人民内部矛盾&lt;/p&gt;&lt;p&gt;C、科学理论&lt;/p&gt;&lt;p&gt;D、阶级斗争&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(40, 1, '处理改革、发展、稳定关系的重要结合点是（）。', 0, '', '', '&lt;p&gt;A、提高生产力水平&lt;/p&gt;&lt;p&gt;B、人民内部矛盾&lt;/p&gt;&lt;p&gt;C、科学理论&lt;/p&gt;&lt;p&gt;D、阶级斗争&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(41, 1, '处理改革、发展、稳定关系的重要结合点是（）。', 0, '', '', '&lt;p&gt;A、V&lt;/p&gt;&lt;p&gt;B、不断改善人民生活&lt;/p&gt;&lt;p&gt;C、公有资产占优势&lt;/p&gt;&lt;p&gt;D、多种所有制并存&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(42, 1, '事关全面建设小康社会大局，必须始终作为全党工作重中之重的是（）。', 0, '', '', '&lt;p&gt;A、教育问题&lt;/p&gt;&lt;p&gt;B、人口问题&lt;/p&gt;&lt;p&gt;C、“三农”问题&lt;/p&gt;&lt;p&gt;D、环境问题&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(43, 1, '党的十一届三中全会以后，我国农村集体经济组织普遍采取了（）。', 0, '', '', '&lt;p&gt;A、政社合一的经营体制&lt;/p&gt;&lt;p&gt;B、三级所有的经营体制&lt;/p&gt;&lt;p&gt;C、家庭承包经营为基础的统分结合的双层经营体制&lt;/p&gt;&lt;p&gt;D、土地公有基础上家庭承包经营的分散式经营体制&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(44, 1, '个体劳动者从事工商业等经济活动，依靠自己的劳动所获得的收入属于（）。', 0, '', '', '&lt;p&gt;A、按劳分配&lt;/p&gt;&lt;p&gt;B、按生产要素分配&lt;/p&gt;&lt;p&gt;C、按劳动力价值分配&lt;/p&gt;&lt;p&gt;D、按资分配&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(45, 1, '社会主义民主的本质和核心是（）。', 0, '', '', '&lt;p&gt;A、实行民主集中制&lt;/p&gt;&lt;p&gt;B、人民当家作主&lt;/p&gt;&lt;p&gt;C、一种国家制度&lt;/p&gt;&lt;p&gt;D、无产阶级专政&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(46, 1, '在下列对人权和国家主权二者关系的认识中，正确的说法是（）。', 0, '', '', '&lt;p&gt;A、人权高于主权&lt;/p&gt;&lt;p&gt;B、人权与主权是相互对立的&lt;/p&gt;&lt;p&gt;C、人权是主权得以实现的前提和保障&lt;/p&gt;&lt;p&gt;D、没有主权也就谈不上人权&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(47, 1, '依法治国是党领导人民治理国家的基本方略，其核心是（）。', 0, '', '', '&lt;p&gt;A、实现社会主义民主的制度化、法律化&lt;/p&gt;&lt;p&gt;B、维护宪法和法律权威，以宪法和法律为依据治理国家&lt;/p&gt;&lt;p&gt;C、坚持科学立法、民主立法&lt;/p&gt;&lt;p&gt;D、建设公正高效权威的社会主义司法制度&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(48, 1, '1978年5月11日,《光明日报》发表题为（）的特约评论员文章。由此,一场关于真理标准问题的大讨论在全国展开。', 0, '', '', '&lt;p&gt;A、《马克思主义的一个最基本的原则》&lt;/p&gt;&lt;p&gt;B、《关于真理的标准问题》&lt;/p&gt;&lt;p&gt;C、《实践是检验真理的唯一标准》&lt;/p&gt;&lt;p&gt;D、《解放思想,实事求是,团结一致向前看》&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(49, 1, '党的十一届三中全会在我国对台政策上发生的重大变化是（）。', 0, '', '', '&lt;p&gt;A、首次提出争取用和平方式解放台湾&lt;/p&gt;&lt;p&gt;B、首次以“台湾回到祖国怀抱”代替“解放台湾”的思想&lt;/p&gt;&lt;p&gt;C、首次提出将一国两制确定为基本国策&lt;/p&gt;&lt;p&gt;D、首次提出加强经贸往来&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(50, 1, '“和平统一、一国两制”的前提是（）。', 0, '', '', '&lt;p&gt;A、一个中国&lt;/p&gt;&lt;p&gt;B、港澳台高度自治&lt;/p&gt;&lt;p&gt;C、国家主体部分实行社会主义制度&lt;/p&gt;&lt;p&gt;D、港澳台的资本主义制度不变&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(51, 1, '世界和平与发展的主要障碍是（）。', 0, '', '', '&lt;p&gt;A、宗教问题和领土争端&lt;/p&gt;&lt;p&gt;B、恐怖主义和民族矛盾&lt;/p&gt;&lt;p&gt;C、贫富差距和地区冲突&lt;/p&gt;&lt;p&gt;D、霸权主义和强权政治&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(52, 1, '贯彻“三个代表”重要思想，必须把（）作为党执政兴国的第一要务，不断开创现代化建设的新局面。', 0, '', '', '&lt;p&gt;A、教育&lt;/p&gt;&lt;p&gt;B、经济&lt;/p&gt;&lt;p&gt;C、发展&lt;/p&gt;&lt;p&gt;D、稳定&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(53, 1, '“三个代表”重要思想创造性地回答了（）。', 0, '', '', '&lt;p&gt;A、什么是社会主义、怎样建设社会主义的问题&lt;/p&gt;&lt;p&gt;B、建设什么样的党、怎样建设党的问题&lt;/p&gt;&lt;p&gt;C、怎样建设中国特色社会主义的问题&lt;/p&gt;&lt;p&gt;D、怎样发展马克思主义的问题&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(54, 1, '贯彻“三个代表”重要思想，核心是坚持党的（）。', 0, '', '', '&lt;p&gt;A、阶级性&lt;/p&gt;&lt;p&gt;B、人民性&lt;/p&gt;&lt;p&gt;C、先进性&lt;/p&gt;&lt;p&gt;D、领导&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(55, 1, '“三个代表”的要求，是我们党的（）。', 0, '', '', '&lt;p&gt;A、立党之本、时代要求、执政之基&lt;/p&gt;&lt;p&gt;B、时代要求、执政之基、力量之源&lt;/p&gt;&lt;p&gt;C、立党之本、执政之基、力量之源&lt;/p&gt;&lt;p&gt;D、立党之本、时代要求、力量之源&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(56, 1, '从根本上说，“三个代表”重要思想是在科学判断（）。', 0, '', '', '&lt;p&gt;A、党的历史方位的基础上提出的&lt;/p&gt;&lt;p&gt;B、社会主义建设形势的基础上提出的&lt;/p&gt;&lt;p&gt;C、当今国际形势的基础上提出的&lt;/p&gt;&lt;p&gt;D、党的自身变化的基础上提出的&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(57, 1, '贯彻“三个代表”重要思想，关键在坚持（）。', 0, '', '', '&lt;p&gt;A、党的先进性&lt;/p&gt;&lt;p&gt;B、改革开放&lt;/p&gt;&lt;p&gt;C、与时俱进&lt;/p&gt;&lt;p&gt;D、四项基本原则&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(58, 1, '学习“三个代表”重要思想的根本出发点和落脚点是（）。', 0, '', '', '&lt;p&gt;A、壮大和发展公有经济&lt;/p&gt;&lt;p&gt;B、坚持共产党领导多党合作制度&lt;/p&gt;&lt;p&gt;C、最广大人民的根本利益&lt;/p&gt;&lt;p&gt;D、发展社会主义先进文化&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(59, 1, '学习贯彻“三个代表”重要思想，根本目的是（）。', 0, '', '', '&lt;p&gt;A、推动全党更好地带领人民群众把中国特色社会主义事业推向前进&lt;/p&gt;&lt;p&gt;B、实现全面建设小康社会的宏伟目标&lt;/p&gt;&lt;p&gt;C、用科学理论武装全体人民&lt;/p&gt;&lt;p&gt;D、完善公有制为主体的多种所有制并存的制度&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(60, 1, '党的支部委员会对申请入党的人，要注意征求党内外有关群众的意见，进行严格的审查，认为合格后直接提交（）讨论。', 0, '', '', '&lt;p&gt;A、上级党委&lt;/p&gt;&lt;p&gt;B、支部书记&lt;/p&gt;&lt;p&gt;C、支部委员会&lt;/p&gt;&lt;p&gt;D、党支部大会&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(61, 1, '（）是科学发展观的核心。', 0, '', '', '&lt;p&gt;A、以人为本&lt;/p&gt;&lt;p&gt;B、协调发展&lt;/p&gt;&lt;p&gt;C、统筹兼顾&lt;/p&gt;&lt;p&gt;D、执政为民&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(62, 1, '科学发展观的实质是（）。', 0, '', '', '&lt;p&gt;A、速度至关重要&lt;/p&gt;&lt;p&gt;B、以人为本&lt;/p&gt;&lt;p&gt;C、要实现经济社会更好更快地发展&lt;/p&gt;&lt;p&gt;D、全面协调可持续&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(63, 1, '社会和谐是中国特色社会主义的（）。', 0, '', '', '&lt;p&gt;A、基本特征&lt;/p&gt;&lt;p&gt;B、本质属性&lt;/p&gt;&lt;p&gt;C、重要基础&lt;/p&gt;&lt;p&gt;D、根本目的&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(64, 1, '科学发展观中的以人为本的“人”是指（）。', 0, '', '', '&lt;p&gt;A、全体党员&lt;/p&gt;&lt;p&gt;B、工农联盟&lt;/p&gt;&lt;p&gt;C、人民群众&lt;/p&gt;&lt;p&gt;D、工人阶级&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(65, 1, '科学发展观提出的根本依据是（）。', 0, '', '', '&lt;p&gt;A、当前我国发展的阶段性特征&lt;/p&gt;&lt;p&gt;B、我国社会主义初级阶段基本国情&lt;/p&gt;&lt;p&gt;C、当前我国社会主要矛盾&lt;/p&gt;&lt;p&gt;D、当前的国际形势&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(66, 1, '科学发展观的基本要求是（）。', 0, '', '', '&lt;p&gt;A、统筹兼顾&lt;/p&gt;&lt;p&gt;B、以人为本&lt;/p&gt;&lt;p&gt;C、全面协调可持续&lt;/p&gt;&lt;p&gt;D、立党为公&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(67, 1, '科学发展观的根本方法是（）。', 0, '', '', '&lt;p&gt;A、发展&lt;/p&gt;&lt;p&gt;B、统筹兼顾&lt;/p&gt;&lt;p&gt;C、全面协调可持续&lt;/p&gt;&lt;p&gt;D、以人为本&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(68, 1, '科学发展观的本质特征是（）。', 0, '', '', '&lt;p&gt;A、实践性&lt;/p&gt;&lt;p&gt;B、科学性&lt;/p&gt;&lt;p&gt;C、可持续性&lt;/p&gt;&lt;p&gt;D、民主性&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(69, 1, '（）是科学发展的受益者，也是科学发展的实践者和推动者。', 0, '', '', '&lt;p&gt;A、人民群众&lt;/p&gt;&lt;p&gt;B、领导干部&lt;/p&gt;&lt;p&gt;C、知识分子&lt;/p&gt;&lt;p&gt;D、全体公民&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(70, 1, '落实科学发展观，就必须树立正确的政绩观，我们要用全面的、实践的、群众的观点看待政绩，追求政绩的根本出发点和归宿是（）。', 0, '', '', '&lt;p&gt;A、实现人民群众的根本利益&lt;/p&gt;&lt;p&gt;B、建设社会主义和谐社会&lt;/p&gt;&lt;p&gt;C、实践“三个代表”重要思想&lt;/p&gt;&lt;p&gt;D、发展中国特色社会主义&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(71, 1, '党的十七大《报告》指出，（）是发展中国特色社会主义的基本要求。', 0, '', '', '&lt;p&gt;A、科学发展、社会和谐&lt;/p&gt;&lt;p&gt;B、解放思想、实事求是&lt;/p&gt;&lt;p&gt;C、改革开放、自力更生&lt;/p&gt;&lt;p&gt;D、与时俱进、统筹兼顾&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(72, 1, '坚持以经济建设为中心，用（）的办法解决前进中的问题，这是我们党领导人民建设中国特色社会主义的一条基本经验。', 0, '', '', '&lt;p&gt;A、发展&lt;/p&gt;&lt;p&gt;B、民主&lt;/p&gt;&lt;p&gt;C、消除矛盾&lt;/p&gt;&lt;p&gt;D、阶级斗争&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(73, 1, '（）年，高考制度得到恢复，全国高校重新通过统一考试招收新生。', 0, '', '', '&lt;p&gt;A、1977&lt;/p&gt;&lt;p&gt;B、1978&lt;/p&gt;&lt;p&gt;C、1979&lt;/p&gt;&lt;p&gt;D、1980&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(74, 1, '“内蒙古自治区的成立，是中国共产党把马克思主义基本原理同我国民族实际相结合的一个伟大创举。”这里的“伟大创举”是指（）。', 0, '', '', '&lt;p&gt;A、率先实行了民族区域自治&lt;/p&gt;&lt;p&gt;B、率先赢得了民族独立&lt;/p&gt;&lt;p&gt;C、率先由当地民族当家作主&lt;/p&gt;&lt;p&gt;D、率先进入社会主义社会&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(75, 1, '中国的改革开放在20世纪90年代进入到一个新的历史时期。其主要依据是（）。', 0, '', '', '&lt;p&gt;A、中国加入亚太经济合作组织&lt;/p&gt;&lt;p&gt;B、农村经济体制改革获得重大突破&lt;/p&gt;&lt;p&gt;C、确定了经济体制改革的目标&lt;/p&gt;&lt;p&gt;D、建设中国特色社会主义理论开始形成&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(76, 1, '“作为距离香港最近的城市，它最早成为中国开放的特区，与新中国改革开放的步伐共舞，短短的十几年时间，它已从一个小渔村迅速发展成中国最年轻的城市之一……”上述材料描述的城市是（）。', 0, '', '', '&lt;p&gt;A、广州&lt;/p&gt;&lt;p&gt;B、上海&lt;/p&gt;&lt;p&gt;C、深圳&lt;/p&gt;&lt;p&gt;D、珠海&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(77, 1, '标志中国经济正式步入世界大家庭的是（）。', 0, '', '', '&lt;p&gt;A、十一届三中全会上中共做出改革开放的决定&lt;/p&gt;&lt;p&gt;B、1984年国务院决定开放十四个沿海港口城市&lt;/p&gt;&lt;p&gt;C、2001年海尔集团在国外投产成功&lt;/p&gt;&lt;p&gt;D、2001年中国加入世界贸易组织&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(78, 1, '“新时期最鲜明的特点是改革开放。……从沿海到沿江沿边，从东部到中西部，对外开放的大门毅然决然地打开了。”我国的对外开放开始于（）。', 0, '', '', '&lt;p&gt;A、经济特区的创办&lt;/p&gt;&lt;p&gt;B、沿海经济开放区的开辟&lt;/p&gt;&lt;p&gt;C、沿海开放城市的设立&lt;/p&gt;&lt;p&gt;D、内地的开放&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(79, 1, '2005年3月14日，（）届全国人大三次会议通过《反分裂国家法》。', 0, '', '', '&lt;p&gt;A、八&lt;/p&gt;&lt;p&gt;B、九&lt;/p&gt;&lt;p&gt;C、十&lt;/p&gt;&lt;p&gt;D、十一&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(80, 1, '开辟中国特色社会主义道路起点的是（）。', 0, '', '', '&lt;p&gt;A、改革开放政策的提出&lt;/p&gt;&lt;p&gt;B、十一届三中全会的召开&lt;/p&gt;&lt;p&gt;C、四项基本原则的提出&lt;/p&gt;&lt;p&gt;D、真理标准问题的讨论&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(81, 1, '20世纪90年代改革开放的重点和标志是（）。', 0, '', '', '&lt;p&gt;A、建立海南省&lt;/p&gt;&lt;p&gt;B、建立经济技术开发区&lt;/p&gt;&lt;p&gt;C、开发开放浦东&lt;/p&gt;&lt;p&gt;D、开放沿海港口城市&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(82, 1, '海南省的行政区划中包括4个黎族自治县和2个苗族自治县。由此看出我国在少数民族聚居地区实行（）。', 0, '', '', '&lt;p&gt;A、人民代表大会制度&lt;/p&gt;&lt;p&gt;B、民族区域自治制度&lt;/p&gt;&lt;p&gt;C、多党合作制度&lt;/p&gt;&lt;p&gt;D、政治协商制度&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(83, 1, '中共完整提出与民主党派实行“长期共存、互相监督，肝胆相照、荣辱与共”的方针是在（）。', 0, '', '', '&lt;p&gt;A、巩固新生政权时期&lt;/p&gt;&lt;p&gt;B、抗日战争时期&lt;/p&gt;&lt;p&gt;C、“文化大革命”时期&lt;/p&gt;&lt;p&gt;D、改革开放时期&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(84, 1, '邓小平提出的“一国两制”战略构想，最早是针对（）。', 0, '', '', '&lt;p&gt;A、台湾问题&lt;/p&gt;&lt;p&gt;B、香港问题&lt;/p&gt;&lt;p&gt;C、澳门问题&lt;/p&gt;&lt;p&gt;D、统一问题&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(85, 1, '我国能够恢复对香港、澳门行使主权的条件中，最为重要的是（）。', 0, '', '', '&lt;p&gt;A、新中国已经成为独立的主权国家&lt;/p&gt;&lt;p&gt;B、国家统一是中华民族的共同愿望&lt;/p&gt;&lt;p&gt;C、国际和平的发展潮流&lt;/p&gt;&lt;p&gt;D、改革开放使综合国力大大增强&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(86, 1, '“中国不打美国牌，也不打苏联牌，中国也不允许别人打中国牌”，最能说明改革开放以来中国外交的显著特征是（）。', 0, '', '', '&lt;p&gt;A、反对霸权&lt;/p&gt;&lt;p&gt;B、睦邻友好&lt;/p&gt;&lt;p&gt;C、多边外交&lt;/p&gt;&lt;p&gt;D、不结盟&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(87, 1, '新中国外交史上一项具有里程碑意义的成果,是指由中国领导创立的、目的在于“以互信求安全、以互利求合作”的新型区域合作组织是（）。', 0, '', '', '&lt;p&gt;A、亚太经济合作组织&lt;/p&gt;&lt;p&gt;B、东南亚联盟国家组织&lt;/p&gt;&lt;p&gt;C、欧盟&lt;/p&gt;&lt;p&gt;D、上海合作组织&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(88, 1, '被西方媒体誉为“第二次绿色革命”的是（）。', 0, '', '', '&lt;p&gt;A、“银河”系列计算机的诞生&lt;/p&gt;&lt;p&gt;B、杂交水稻的培育成功&lt;/p&gt;&lt;p&gt;C、“神舟”号飞船的发射成功&lt;/p&gt;&lt;p&gt;D、“两弹一星”的研制成功&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(89, 1, '“一九九二年又是一个春天，有一位老人在中国的南海边写下诗篇……”。这一“诗篇”回答的重要问题是（）。', 0, '', '', '&lt;p&gt;A、什么是中国特色社会主义&lt;/p&gt;&lt;p&gt;B、什么是社会主义初级阶段&lt;/p&gt;&lt;p&gt;C、什么是社会主义，怎样建设社会主义&lt;/p&gt;&lt;p&gt;D、什么是“一国两制”&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(90, 1, '毛泽东思想、邓小平理论、“三个代表”重要思想被写入党章作为党的指导思想分别是在（）。', 0, '', '', '&lt;p&gt;A、七大、十五大、十六大&lt;/p&gt;&lt;p&gt;B、七大、十一届三中全会、十五大&lt;/p&gt;&lt;p&gt;C、七届二中全会、十五大、十六大&lt;/p&gt;&lt;p&gt;D、八大、十三大、十四大&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(91, 1, '我国形成了共产党同各民主党派真诚合作，互相监督的新型关系，创造了颇具特色的社会主义政党模式是（）。', 0, '', '', '&lt;p&gt;A、人民代表大会制度&lt;/p&gt;&lt;p&gt;B、多党轮流执政&lt;/p&gt;&lt;p&gt;C、民族区域自治制度&lt;/p&gt;&lt;p&gt;D、中共领导的多党合作和政治协商制度&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(92, 1, '人民解放军进驻香港和澳门分别在（）。', 0, '', '', '&lt;p&gt;A、1997年和1999年&lt;/p&gt;&lt;p&gt;B、1990年和1999年&lt;/p&gt;&lt;p&gt;C、1997年和2000年&lt;/p&gt;&lt;p&gt;D、1984年和1987年&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(93, 1, '2008年安理会授权各国进入亚丁湾、索马里海域并采取强制性措施打击海盗，随后中国政府派海军舰艇赴此海域实施护航。这显示了新时期中国外交活动的特点之一是（）。', 0, '', '', '&lt;p&gt;A、反对霸权主义&lt;/p&gt;&lt;p&gt;B、支持非洲国家的民族解放斗争&lt;/p&gt;&lt;p&gt;C、积极推进新型区域合作&lt;/p&gt;&lt;p&gt;D、积极开展以联合国为中心的多边外交活动&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(94, 1, '邓小平理论形成一个完整体系的标志，是在（）。', 0, '', '', '&lt;p&gt;A、中共十二大&lt;/p&gt;&lt;p&gt;B、中共十三大&lt;/p&gt;&lt;p&gt;C、南方谈话和中共十四大&lt;/p&gt;&lt;p&gt;D、中共十五大&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(95, 1, '十一届三中全会是建国以来党的历史上具有深远意义的伟大转折，其依据是（）。', 0, '', '', '&lt;p&gt;A、新时期党的基本路线初步形成&lt;/p&gt;&lt;p&gt;B、邓小平等第二代领导核心形成&lt;/p&gt;&lt;p&gt;C、转移了党和国家的工作重点&lt;/p&gt;&lt;p&gt;D、全面解决人民温饱&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(96, 1, '家庭联产承包责任制之所以能在全国普遍推进，根本原因是（）。', 0, '', '', '&lt;p&gt;A、党作出了改革开放的决策&lt;/p&gt;&lt;p&gt;B、满足了广大农民对土地的要求&lt;/p&gt;&lt;p&gt;C、符合中国农村生产力发展水平的实际&lt;/p&gt;&lt;p&gt;D、适应了我国人多地少的现实&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(97, 1, '明确提出中国经济体制改革的目标是建立社会主义市场经济体制的重要会议是（）。', 0, '', '', '&lt;p&gt;A、十一届三中全会&lt;/p&gt;&lt;p&gt;B、十三大&lt;/p&gt;&lt;p&gt;C、十四大&lt;/p&gt;&lt;p&gt;D、十四届三中全会&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(98, 1, '2010年10月1日，长征三号丙火箭在我国西昌卫星发射中心点火发射，把（）卫星成功送入太空。这标志着探月工程二期任务迈出了成功的第一步。', 0, '', '', '&lt;p&gt;A、嫦娥一号&lt;/p&gt;&lt;p&gt;B、嫦娥二号&lt;/p&gt;&lt;p&gt;C、神州六号&lt;/p&gt;&lt;p&gt;D、神州七号&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(99, 1, '郭明义同志是助人为乐的道德模范，是新时期学习实践（）的优秀代表。', 0, '', '', '&lt;p&gt;A、民族精神&lt;/p&gt;&lt;p&gt;B、雷锋精神&lt;/p&gt;&lt;p&gt;C、社会主义荣辱观&lt;/p&gt;&lt;p&gt;D、科学发展&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(100, 1, '中国载人航天工程新闻发言人2010年10月27日表示，我国（）工程已正式启动实施，2020年前后将建成规模较大、长期有人参与的国家级太空实验室。', 0, '', '', '&lt;p&gt;A、载人空间站&lt;/p&gt;&lt;p&gt;B、绕月探测&lt;/p&gt;&lt;p&gt;C、登月探测&lt;/p&gt;&lt;p&gt;D、载人航空器&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(101, 1, '中国２０１０年上海世界博览会的主题是（）。', 0, '', '', '&lt;p&gt;A、“海洋--未来的财富”&lt;/p&gt;&lt;p&gt;B、“超越发展：大自然智慧的再发现”&lt;/p&gt;&lt;p&gt;C、“人类-自然-科技-发展”&lt;/p&gt;&lt;p&gt;D、“城市，让生活更美好”&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(102, 1, '中国共产党第十七届五中全会，于２０１０年１０月１５日至１８日在北京举行。全会审议通过了《中共中央关于制定国民经济和社会发展第（）五年规划的建议》。', 0, '', '', '&lt;p&gt;A、十个&lt;/p&gt;&lt;p&gt;B、十一个&lt;/p&gt;&lt;p&gt;C、十二个&lt;/p&gt;&lt;p&gt;D、十三个&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(103, 1, '羊城豪情点燃亚运盛会，珠江光影拥抱和谐亚洲。第十六届广州亚洲运动会中国体育代表团取得了（）金牌的优异成绩。', 0, '', '', '&lt;p&gt;A、51枚&lt;/p&gt;&lt;p&gt;B、89枚&lt;/p&gt;&lt;p&gt;C、199枚&lt;/p&gt;&lt;p&gt;D、78枚&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(104, 1, '2010年11月安装在国家超级计算天津中心的（）以峰值速度4700万亿次、持续速度2566万亿次每秒浮点运算的优异性能位居世界第一。', 0, '', '', '&lt;p&gt;A、“曙光一号”&lt;/p&gt;&lt;p&gt;B、“天河一号”&lt;/p&gt;&lt;p&gt;C、“魔方”&lt;/p&gt;&lt;p&gt;D、“银河一号”&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(105, 1, '“十一五”时期，我国对外投资实现新突破，5年累计对外直接投资达到２２００亿美元，年均增长３０％左右，全球排名由“十五”期末的第十八位跃升至（），正逐步迈入对外投资大国行列。', 0, '', '', '&lt;p&gt;A、第五位&lt;/p&gt;&lt;p&gt;B、第十位&lt;/p&gt;&lt;p&gt;C、第十三位&lt;/p&gt;&lt;p&gt;D、第十五位&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(106, 1, '人民英雄纪念碑的碑文是由( )起草( )题写的。', 0, '', '', '&lt;p&gt;A、毛泽东周恩来&lt;/p&gt;&lt;p&gt;B、周恩来毛泽东&lt;/p&gt;&lt;p&gt;C、毛泽东朱德&lt;/p&gt;&lt;p&gt;D、朱德周恩来&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(107, 1, '2010年12月3日，中共中央政治局召开会议，分析研究明年经济工作。会议强调，要正确把握国内外形势新变化新特点，以科学发展为主题，以（A）为主线。', 0, '', '', '&lt;p&gt;A、加快转变经济发展方式&lt;/p&gt;&lt;p&gt;B、加快改善民生&lt;/p&gt;&lt;p&gt;C、加快社会建设&lt;/p&gt;&lt;p&gt;D、构建和谐社会&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(108, 1, '2011年1月12日，美国传统基金会公布世界“经济自由度指数”报告，（）再次获评为全球最自由经济体系，这已是该国（地区）连续第十七年名列经济自由度榜首。', 0, '', '', '&lt;p&gt;A、澳门&lt;/p&gt;&lt;p&gt;B、香港&lt;/p&gt;&lt;p&gt;C、美国&lt;/p&gt;&lt;p&gt;D、日本&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(109, 1, '“十二五规划”的时间跨度：( )', 0, '', '', '&lt;p&gt;A、2010-2015&lt;/p&gt;&lt;p&gt;B、2010-2014&lt;/p&gt;&lt;p&gt;C、2011-2015&lt;/p&gt;&lt;p&gt;D、2011-2016&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(110, 1, '1919年,《新青年》杂志发表《我的马克思主义观》一文,系统地介绍了马克思主义的唯物史观、政治经济学和科学社会主义的基本原理。这篇文章的作者是( )。', 0, '', '', '&lt;p&gt;A、陈独秀&lt;/p&gt;&lt;p&gt;B、李大钊&lt;/p&gt;&lt;p&gt;C、李达&lt;/p&gt;&lt;p&gt;D、毛泽东&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(111, 1, '1921年( ),党的一大在上海开幕,最后一天的会议转移到浙江嘉兴南湖举行。', 0, '', '', '&lt;p&gt;A、6月20日&lt;/p&gt;&lt;p&gt;B、7月1日&lt;/p&gt;&lt;p&gt;C、7月23日&lt;/p&gt;&lt;p&gt;D、7月24日&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(112, 1, '党的三大决定共产党员以个人身份加入国民党,实现国共合作,同时必须在政治上、思想上、组织上( )。', 0, '', '', '&lt;p&gt;A、保持自己的独立性&lt;/p&gt;&lt;p&gt;B、保持自己的先进性&lt;/p&gt;&lt;p&gt;C、保持自己的平等性&lt;/p&gt;&lt;p&gt;D、保持自己的合法性&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(113, 1, '标志第一次国共合作全面破裂、大革命最后失败的事件是( )。', 0, '', '', '&lt;p&gt;A、四一二反革命政变&lt;/p&gt;&lt;p&gt;B、马日事变&lt;/p&gt;&lt;p&gt;C、七一五“分共”事件&lt;/p&gt;&lt;p&gt;D、中山舰事件&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(114, 1, '( )打响了武装反抗国民党反动派的第一枪,标志着中国共产党独立地领导革命战争、创建人民军队和武装夺取政权的开始。', 0, '', '', '&lt;p&gt;A、南昌起义&lt;/p&gt;&lt;p&gt;B、秋收起义&lt;/p&gt;&lt;p&gt;C、广州起义&lt;/p&gt;&lt;p&gt;D、黄花岗起义&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(115, 1, '1927年10月,毛泽东率领湘赣边界秋收起义部队到达江西宁冈,开始了创建(B)的斗争。', 0, '', '', '&lt;p&gt;A、赣南、闽西革命根据地&lt;/p&gt;&lt;p&gt;B、井冈山革命根据地&lt;/p&gt;&lt;p&gt;C、湘赣革命根据地&lt;/p&gt;&lt;p&gt;D、晋察冀革命根据地&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(116, 1, '中国共产党在莫斯科召开的全国代表大会是( )。', 0, '', '', '&lt;p&gt;A、党的六大&lt;/p&gt;&lt;p&gt;B、党的五大&lt;/p&gt;&lt;p&gt;C、党的四大&lt;/p&gt;&lt;p&gt;D、党的七大&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(117, 1, '1935年1月召开的(B),确立了毛泽东在党和红军中的领导地位,在极其危急的情况下挽救了党、挽救了红军、挽救了中国革命,是党的历史上一个生死攸关的转折点。', 0, '', '', '&lt;p&gt;A、古田会议&lt;/p&gt;&lt;p&gt;B、遵义会议&lt;/p&gt;&lt;p&gt;C、黎平会议&lt;/p&gt;&lt;p&gt;D、瓦窑堡会议&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(118, 1, '( ),红四、红二方面军先后同红一方面军在甘肃会宁、静宁将台堡会师,胜利地结束了长征。', 0, '', '', '&lt;p&gt;A、1934年10月&lt;/p&gt;&lt;p&gt;B、1935年10月&lt;/p&gt;&lt;p&gt;C、1936年10月&lt;/p&gt;&lt;p&gt;D、1937年10月&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(119, 1, '1936年( ),张学良、杨虎城实施兵谏,扣留蒋介石,囚禁从南京来的几十名国民党军政要员,史称西安事变。', 0, '', '', '&lt;p&gt;A、12月1日&lt;/p&gt;&lt;p&gt;B、12月9日&lt;/p&gt;&lt;p&gt;C、12月12日&lt;/p&gt;&lt;p&gt;D、10月10日&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(120, 1, '过渡时期总路线的主体是( )。', 0, '', '', '&lt;p&gt;A、实现现代化&lt;/p&gt;&lt;p&gt;B、实现工业化&lt;/p&gt;&lt;p&gt;C、实现国有化&lt;/p&gt;&lt;p&gt;D、实现私有化&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(121, 1, '中华人民共和国第一次以五大国之一的地位参加讨论重大国际问题的国际会议是( )。', 0, '', '', '&lt;p&gt;A、日内瓦会议&lt;/p&gt;&lt;p&gt;B、亚非会议&lt;/p&gt;&lt;p&gt;C、万隆会议&lt;/p&gt;&lt;p&gt;D、多哈会议&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(122, 1, '1954年9月,第一届全国人民代表大会第一次会议在北京举行。会议的召开,标志着( )作为新中国的根本政治制度正式确立。', 0, '', '', '&lt;p&gt;A、共产党领导的多党合作、政治协商制度&lt;/p&gt;&lt;p&gt;B、民族区域自治制度&lt;/p&gt;&lt;p&gt;C、人民代表大会制度&lt;/p&gt;&lt;p&gt;D、民主集中制&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(123, 1, '( ),我国成功地爆炸第一颗原子弹,有力地打破了超级大国的核垄断和核讹诈,提高了我国的国际地位。', 0, '', '', '&lt;p&gt;A、1964年10月6日&lt;/p&gt;&lt;p&gt;B、1965年10月16日&lt;/p&gt;&lt;p&gt;C、1964年10月16日&lt;/p&gt;&lt;p&gt;D、1963年10月6日&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(124, 1, '1964年12月至1965年1月,三届全国人大一次会议举行。这次会议提出了( )的任务。', 0, '', '', '&lt;p&gt;A、调整国民经济&lt;/p&gt;&lt;p&gt;B、建设工业化国家&lt;/p&gt;&lt;p&gt;C、实现四个现代化&lt;/p&gt;&lt;p&gt;D、实现农业现代化&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(125, 1, '1967年2月,谭震林、陈毅、叶剑英等老同志对“文化大革命”的错误提出强烈批评,却被江青、康生等人诬为( )。', 0, '', '', '&lt;p&gt;A、“二月抗争”&lt;/p&gt;&lt;p&gt;B、“二月逆流”&lt;/p&gt;&lt;p&gt;C、“二月事件”&lt;/p&gt;&lt;p&gt;D、“二月事变”&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(126, 1, '党的十五大把( )写入党章,确立为党的指导思想。', 0, '', '', '&lt;p&gt;A、建设有中国特色社会主义理论&lt;/p&gt;&lt;p&gt;B、邓小平理论&lt;/p&gt;&lt;p&gt;C、“三个代表”重要思想&lt;/p&gt;&lt;p&gt;D、科学发展观&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(127, 1, '全面建成小康社会的奋斗目标,是(D)提出来的。', 0, '', '', '&lt;p&gt;A、党的十五大&lt;/p&gt;&lt;p&gt;B、党的十六大&lt;/p&gt;&lt;p&gt;C、党的十七大&lt;/p&gt;&lt;p&gt;D、党的十八大&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(128, 1, '2004年11月,中共中央决定,从2005年1月开始,分三批在全党开展以实践( )为主要内容的保持共产党员先进性教育活动。', 0, '', '', '&lt;p&gt;A、邓小平理论&lt;/p&gt;&lt;p&gt;B、邓小平理论&lt;/p&gt;&lt;p&gt;C、“三个代表”重要思想&lt;/p&gt;&lt;p&gt;D、科学发展观&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(129, 1, '大革命失败后，以毛泽东为主要代表的中国共产党人走上了（A）的道路。历史证明，这是中国革命走向胜利的唯一正确的道路。', 0, '', '', '&lt;p&gt;A、在农村建立根据地，以农村包围城市、武装夺取政权&lt;/p&gt;&lt;p&gt;B、夺取敌人力量相对弱小的城市和发动城市暴动相结合&lt;/p&gt;&lt;p&gt;C、领导、组织工人运动来推动革命的发展&lt;/p&gt;&lt;p&gt;D、领导、组织农民运动来推动革命的发展&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(130, 1, '中国工人运动史上持续时间最长的一次罢工是（）。', 0, '', '', '&lt;p&gt;A、香港海员罢工&lt;/p&gt;&lt;p&gt;B、广州沙面工人罢工&lt;/p&gt;&lt;p&gt;C、省港大罢工&lt;/p&gt;&lt;p&gt;D、二七大罢工&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(131, 1, '中国共产党解决民族问题的基本政策是（）。', 0, '', '', '&lt;p&gt;A、民族自治&lt;/p&gt;&lt;p&gt;B、民族区域自治&lt;/p&gt;&lt;p&gt;C、民族平等&lt;/p&gt;&lt;p&gt;D、民族融合&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(132, 1, '1957年全党开展整风运动的主题是（）。', 0, '', '', '&lt;p&gt;A、百花齐放、百家争鸣&lt;/p&gt;&lt;p&gt;B、反对官僚主义&lt;/p&gt;&lt;p&gt;C、正确处理人民内部矛盾&lt;/p&gt;&lt;p&gt;D、反自由主义&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(133, 1, '1978年12月18日至22日，中共十一届三中全会在北京召开。会议作出把党和国家的工作重点转移到（）上来等一系列重大决策，实现了建国以来党的历史上具有深远意义的伟大转折。从此，我国进入改革开放和社会主义现代化建设的新时期。', 0, '', '', '&lt;p&gt;A、全面开展拨乱反正&lt;/p&gt;&lt;p&gt;B、社会主义现代化建设&lt;/p&gt;&lt;p&gt;C、国民经济调整&lt;/p&gt;&lt;p&gt;D、经济建设&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(134, 1, '2001年11月10日，在（）举行的世界贸易组织第四届部长级会议通过中国加入世界贸易组织的决定。12月11日，中国正式成为世贸组织成员国，标志着中国对外开放进入新的阶段。', 0, '', '', '&lt;p&gt;A、巴黎&lt;/p&gt;&lt;p&gt;B、巴黎&lt;/p&gt;&lt;p&gt;C、多哈&lt;/p&gt;&lt;p&gt;D、纽约&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(135, 1, '加强和改进党的建设，必须加强党的执政能力建设，提高党的（）。', 0, '', '', '&lt;p&gt;A、抵御风险能力和水平&lt;/p&gt;&lt;p&gt;B、驾驭全局能力和水平&lt;/p&gt;&lt;p&gt;C、领导水平和执政水平&lt;/p&gt;&lt;p&gt;D、&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(136, 1, '( )10月，毛泽东率红一方面军攻打吉安取得胜利，使湘赣苏区与赣西南苏区连成一片，成为全国最大的苏区，“中央苏区”名称从此叫响。', 0, '', '', '&lt;p&gt;A、1930&lt;/p&gt;&lt;p&gt;B、1931&lt;/p&gt;&lt;p&gt;C、1929&lt;/p&gt;&lt;p&gt;D、1932&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(137, 1, '1930年底，蒋介石调集国民党10万大军对中央苏区进行了(A)的军事围剿。', 0, '', '', '&lt;p&gt;A、第一次大规模&lt;/p&gt;&lt;p&gt;B、第二次大规模&lt;/p&gt;&lt;p&gt;C、第三次大规模&lt;/p&gt;&lt;p&gt;D、第四次大规模&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(138, 1, '1940年( )八路军发动取得毙伤日伪军2、5万多人等辉煌战果，沉重打击了日军，进一步提高了共产党和八路军的威望。', 0, '', '', '&lt;p&gt;A、百团大战&lt;/p&gt;&lt;p&gt;B、平型关大捷&lt;/p&gt;&lt;p&gt;C、台儿庄战役&lt;/p&gt;&lt;p&gt;D、徐州战役&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(139, 1, '中国抗日战争胜利纪念日是（）。', 0, '', '', '&lt;p&gt;A、8月15日&lt;/p&gt;&lt;p&gt;B、9月15日&lt;/p&gt;&lt;p&gt;C、9月3日&lt;/p&gt;&lt;p&gt;D、9月1日&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(140, 1, '全国解放战争三大战役中，历时最长、规模最大、歼敌数量最多的是(A)。', 0, '', '', '&lt;p&gt;A、淮海战役&lt;/p&gt;&lt;p&gt;B、平津战役&lt;/p&gt;&lt;p&gt;C、辽沈战役&lt;/p&gt;&lt;p&gt;D、渡江战役&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(141, 1, '新中国成立后制定的第一部基本法律是（）。', 0, '', '', '&lt;p&gt;A、《中华人民共和国民族区域自治实施纲要》&lt;/p&gt;&lt;p&gt;B、《中华人民共和国婚姻法》&lt;/p&gt;&lt;p&gt;C、《中华人民共和国土地改革法》&lt;/p&gt;&lt;p&gt;D、《中华人民共和国宪法》&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(142, 1, '1950年( )，中国人民志愿军跨过鸭绿江，开始了抗美援朝战争。', 0, '', '', '&lt;p&gt;A、10月9日&lt;/p&gt;&lt;p&gt;B、10月19日&lt;/p&gt;&lt;p&gt;C、10月29日&lt;/p&gt;&lt;p&gt;D、9月10日&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(143, 1, '（）年7月27日，《关于朝鲜军事停战的协定》及其附件和临时补充协议在板门店正式签署，历时3年多的朝鲜战争宣告结束。', 0, '', '', '&lt;p&gt;A、1951&lt;/p&gt;&lt;p&gt;B、1952&lt;/p&gt;&lt;p&gt;C、1953&lt;/p&gt;&lt;p&gt;D、1954&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(144, 1, '( )，第一届全国人民代表大会第一次会议在北京举行。会议的召开，标志着人民代表大会制度作为新中国的根本政治制度正式确立。', 0, '', '', '&lt;p&gt;A、1954年9月&lt;/p&gt;&lt;p&gt;B、1954年8月&lt;/p&gt;&lt;p&gt;C、1953年9月&lt;/p&gt;&lt;p&gt;D、1953年8月&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(145, 1, '1964年12月至1965年1月，（）全国人大一次会议举行。这次会议提出了实现四个现代化的任务。', 0, '', '', '&lt;p&gt;A、一届&lt;/p&gt;&lt;p&gt;B、二届&lt;/p&gt;&lt;p&gt;C、三届&lt;/p&gt;&lt;p&gt;D、四届&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(146, 1, '2005年（）,中共中央总书记胡锦涛在北京与中国国民党主席连战举行正式会谈。这是60年来国共两党最高领导人的首次正式会谈。会后共同发布“两岸和平发展共同愿景”。', 0, '', '', '&lt;p&gt;A、4月28日&lt;/p&gt;&lt;p&gt;B、4月29日&lt;/p&gt;&lt;p&gt;C、4月30日&lt;/p&gt;&lt;p&gt;D、4月31日&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(147, 1, '1975年,邓小平部署以（）为突破口,对各条战线进行整顿。', 0, '', '', '&lt;p&gt;A、军队整顿&lt;/p&gt;&lt;p&gt;B、铁路整顿&lt;/p&gt;&lt;p&gt;C、农业整顿&lt;/p&gt;&lt;p&gt;D、商业整顿&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(148, 1, '全国开展“向雷锋同志学习”的热潮始于（B）年。', 0, '', '', '&lt;p&gt;A、1953&lt;/p&gt;&lt;p&gt;B、1963&lt;/p&gt;&lt;p&gt;C、1954&lt;/p&gt;&lt;p&gt;D、1965&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(149, 1, '1971年10月25日,第（）届联合国大会以压倒多数的票数,通过了恢复中华人民共和国在联合国的一切合法权利和立即把台湾当局的代表从联合国及其所属一切机构中驱逐出去的2758号决议。', 0, '', '', '&lt;p&gt;A、24&lt;/p&gt;&lt;p&gt;B、25&lt;/p&gt;&lt;p&gt;C、26&lt;/p&gt;&lt;p&gt;D、27&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(150, 1, '2010年5月28日，中共中央政治局召开会议，研究深入实施( )战略的总体思路和政策措施。', 0, '', '', '&lt;p&gt;A、新疆发展&lt;/p&gt;&lt;p&gt;B、中部崛起&lt;/p&gt;&lt;p&gt;C、西藏发展&lt;/p&gt;&lt;p&gt;D、西部大开发&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(151, 1, '2013年习近平对俄罗斯进行国事访问期间，在莫斯科出席了中共(C)纪念馆启动仪式。', 0, '', '', '&lt;p&gt;A、四大&lt;/p&gt;&lt;p&gt;B、五大&lt;/p&gt;&lt;p&gt;C、六大&lt;/p&gt;&lt;p&gt;D、七大&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247397, 1, '', 0, 0, 1),
(152, 1, '十八大党章共11章（）条。', 0, '', '', '&lt;p&gt;A、50&lt;/p&gt;&lt;p&gt;B、53&lt;/p&gt;&lt;p&gt;C、58&lt;/p&gt;&lt;p&gt;D、60&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(153, 1, '中国共产党是中国工人阶级的先锋队，同时是（）的先锋队。', 0, '', '', '&lt;p&gt;A、中国人民&lt;/p&gt;&lt;p&gt;B、中华民族&lt;/p&gt;&lt;p&gt;C、中国人民和中华民族&lt;/p&gt;&lt;p&gt;D、劳动人民&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(154, 1, '十八次党章于2012年11月（）日通过。', 0, '', '', '&lt;p&gt;A、8&lt;/p&gt;&lt;p&gt;B、14&lt;/p&gt;&lt;p&gt;C、15&lt;/p&gt;&lt;p&gt;D、16&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(155, 1, '马克思列宁主义揭示了（），它的基本原理是正确的，具有强大的生命力。', 0, '', '', '&lt;p&gt;A、共产党执政规律&lt;/p&gt;&lt;p&gt;B、社会主义建设规律&lt;/p&gt;&lt;p&gt;C、人类社会历史发展规律&lt;/p&gt;&lt;p&gt;D、人类社会经济发展规律&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(156, 1, '着力建设资源节约型、环境友好型社会，形成节约资源和保护环境的空间格局、产业结构、生产方式、生活方式，为人民创造良好生产生活环境，实现中华民族（）发展。', 0, '', '', '&lt;p&gt;A、快速&lt;/p&gt;&lt;p&gt;B、健康&lt;/p&gt;&lt;p&gt;C、不断&lt;/p&gt;&lt;p&gt;D、永续&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(157, 1, '“三个代表”重要思想是对马克思列宁主义、毛泽东思想、邓小平理论的（）和发展。', 0, '', '', '&lt;p&gt;A、丰富&lt;/p&gt;&lt;p&gt;B、继承&lt;/p&gt;&lt;p&gt;C、创新&lt;/p&gt;&lt;p&gt;D、巩固&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(158, 1, '党的最高理想和最终目标是（）。', 0, '', '', '&lt;p&gt;A、建设社会主义&lt;/p&gt;&lt;p&gt;B、建设中国特色社会主义&lt;/p&gt;&lt;p&gt;C、建设富强、民主、文明的社会主义现代化强国&lt;/p&gt;&lt;p&gt;D、实现共产主义&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(159, 1, '我国正处于并将长期处于（）。', 0, '', '', '&lt;p&gt;A、社会主义中级阶段&lt;/p&gt;&lt;p&gt;B、社会主义高级阶段&lt;/p&gt;&lt;p&gt;C、社会主义初级阶段&lt;/p&gt;&lt;p&gt;D、由社会主义向共产主义过渡阶段&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(160, 1, '在现阶段，我国社会的主要矛盾是（）。', 0, '', '', '&lt;p&gt;A、阶级矛盾&lt;/p&gt;&lt;p&gt;B、人民内部矛盾&lt;/p&gt;&lt;p&gt;C、发展与环境的矛盾&lt;/p&gt;&lt;p&gt;D、人民日益增长的物质文化需要同落后的社会生产之间的矛盾&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(161, 1, '（）是我们党执政兴国的第一要务。', 0, '', '', '&lt;p&gt;A、发展&lt;/p&gt;&lt;p&gt;B、开放&lt;/p&gt;&lt;p&gt;C、改革&lt;/p&gt;&lt;p&gt;D、稳定&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(162, 1, '社会主义初级阶段需要（）的时间。', 0, '', '', '&lt;p&gt;A、十几年&lt;/p&gt;&lt;p&gt;B、二十年&lt;/p&gt;&lt;p&gt;C、五十年&lt;/p&gt;&lt;p&gt;D、上百年&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(163, 1, '我国的社会主义建设，必须从我国的国情出发，走（）道路。', 0, '', '', '&lt;p&gt;A、社会主义&lt;/p&gt;&lt;p&gt;B、中国特色社会主义&lt;/p&gt;&lt;p&gt;C、改革开放&lt;/p&gt;&lt;p&gt;D、强国富民&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(164, 1, '“三个代表”重要思想是党必须长期坚持的（）。', 0, '', '', '&lt;p&gt;A、科学理论&lt;/p&gt;&lt;p&gt;B、基本原则&lt;/p&gt;&lt;p&gt;C、治国方略&lt;/p&gt;&lt;p&gt;D、指导思想&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(165, 1, '在生产发展和社会财富增长的基础上不断满足人民日益增长的物质文化需要，促进（）的全面发展。', 0, '', '', '&lt;p&gt;A、经济&lt;/p&gt;&lt;p&gt;B、社会&lt;/p&gt;&lt;p&gt;C、国家&lt;/p&gt;&lt;p&gt;D、人&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(166, 1, '党的下级组织既要向上级组织请示和报告工作，又要独立负责地解决（）的问题。', 0, '', '', '&lt;p&gt;A、群众中&lt;/p&gt;&lt;p&gt;B、社会上&lt;/p&gt;&lt;p&gt;C、自己职责范围内&lt;/p&gt;&lt;p&gt;D、本单位&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(167, 1, '我国到（）时，建成惠及十几亿人口的更高水平的小康社会。', 0, '', '', '&lt;p&gt;A、2015年&lt;/p&gt;&lt;p&gt;B、2017年&lt;/p&gt;&lt;p&gt;C、建党一百年&lt;/p&gt;&lt;p&gt;D、建国一百年&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(168, 1, '中国共产党在领导社会主义事业中，必须坚持以（）为中心，其他各项工作都服从和服务于这个中心。', 0, '', '', '&lt;p&gt;A、经济建设&lt;/p&gt;&lt;p&gt;B、政治建设&lt;/p&gt;&lt;p&gt;C、文化建设&lt;/p&gt;&lt;p&gt;D、国防建设&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(169, 1, '党的各级代表大会的代表和委员候选人名单要由（）和选举人充分酝酿讨论。', 0, '', '', '&lt;p&gt;A、党组织&lt;/p&gt;&lt;p&gt;B、党代表&lt;/p&gt;&lt;p&gt;C、候选人&lt;/p&gt;&lt;p&gt;D、党委成员&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(170, 1, '坚持四项基本原则是我们的立国之本，坚持（）是我们的强国之路。', 0, '', '', '&lt;p&gt;A、以经济建设为中心&lt;/p&gt;&lt;p&gt;B、改革开放&lt;/p&gt;&lt;p&gt;C、科教兴国战略&lt;/p&gt;&lt;p&gt;D、依法治国战略&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(171, 1, '我们要从根本上改革束缚生产力发展的经济体制，坚持和完善社会主义（）体制。', 0, '', '', '&lt;p&gt;A、计划经济&lt;/p&gt;&lt;p&gt;B、商品经济&lt;/p&gt;&lt;p&gt;C、市场经济&lt;/p&gt;&lt;p&gt;D、公有制经济&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(172, 1, '凡是成立党的新组织，或是撤销党的原有组织，必须由（）决定。', 0, '', '', '&lt;p&gt;A、全体党员&lt;/p&gt;&lt;p&gt;B、上级党组织&lt;/p&gt;&lt;p&gt;C、基层委员会&lt;/p&gt;&lt;p&gt;D、人大&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(173, 1, '坚持和完善（）制度，维护和发展平等团结互助和谐的社会主义民族关系，积极培养、选拔少数民族干部，帮助各少数民族地区发展经济、文化，实现各民族的共同繁荣和全面进步。', 0, '', '', '&lt;p&gt;A、民族区域自治&lt;/p&gt;&lt;p&gt;B、人民代表大会&lt;/p&gt;&lt;p&gt;C、共产党领导的多党合作&lt;/p&gt;&lt;p&gt;D、政治协商&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(174, 1, '中国人民解放军的党组织，根据（）的指示进行工作。', 0, '', '', '&lt;p&gt;A、中央委员会&lt;/p&gt;&lt;p&gt;B、中央军事委员会&lt;/p&gt;&lt;p&gt;C、中央军委总政治部&lt;/p&gt;&lt;p&gt;D、所在地委员会&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(175, 1, '中国共产党主张按照（）的方针，完成祖国统一的大业。', 0, '', '', '&lt;p&gt;A、和平谈判&lt;/p&gt;&lt;p&gt;B、两岸三通&lt;/p&gt;&lt;p&gt;C、“一个国家、两种制度”&lt;/p&gt;&lt;p&gt;D、对话合作&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(176, 1, '军队中党的组织体制和机构，由（）作出规定。（B）', 0, '', '', '&lt;p&gt;A、中央委员会&lt;/p&gt;&lt;p&gt;B、中央军事委员会&lt;/p&gt;&lt;p&gt;C、中央军委总政治部&lt;/p&gt;&lt;p&gt;D、军委常委&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(177, 1, '在国际事务中，维护我国的（），反对霸权主义和强权政治，维护世界和平，促进人类进步，努力推动建设持久和平、共同繁荣的和谐世界。', 0, '', '', '&lt;p&gt;A、独立和主权&lt;/p&gt;&lt;p&gt;B、发展与稳定&lt;/p&gt;&lt;p&gt;C、良好发展环境&lt;/p&gt;&lt;p&gt;D、繁荣富强&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(178, 1, '党的地方各级代表大会如提前或延期举行，由它选举的委员会的任期（）。', 0, '', '', '&lt;p&gt;A、不变&lt;/p&gt;&lt;p&gt;B、相应地改变&lt;/p&gt;&lt;p&gt;C、无效&lt;/p&gt;&lt;p&gt;D、中断&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(179, 1, '基层委员会、总支部委员会、支部委员会的书记、（）选举产生后，应报上级党组织批准。（A）', 0, '', '', '&lt;p&gt;A、副书记&lt;/p&gt;&lt;p&gt;B、组织书记&lt;/p&gt;&lt;p&gt;C、纪检书记&lt;/p&gt;&lt;p&gt;D、党委委员&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(180, 1, '党的思想路线是一切从实际出发，理论联系实际，（），在实践中检验真理和发展真理。', 0, '', '', '&lt;p&gt;A、解放思想&lt;/p&gt;&lt;p&gt;B、解放思想&lt;/p&gt;&lt;p&gt;C、与时俱进&lt;/p&gt;&lt;p&gt;D、开拓创新&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(181, 1, '党的建设必须坚持解放思想，实事求是，与时俱进，（）。', 0, '', '', '&lt;p&gt;A、求真务实&lt;/p&gt;&lt;p&gt;B、艰苦奋斗&lt;/p&gt;&lt;p&gt;C、执政为民&lt;/p&gt;&lt;p&gt;D、开拓创新&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(182, 1, '“一切为了群众，一切依靠群众，从群众中来，到群众中去。”这是对（）的表述。', 0, '', '', '&lt;p&gt;A、党的思想路线&lt;/p&gt;&lt;p&gt;B、党的政治路线&lt;/p&gt;&lt;p&gt;C、党的组织路线&lt;/p&gt;&lt;p&gt;D、党的群众路线&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(183, 1, '必须把改革开放同四项基本原则统一起来，全面落实党的基本路线，全面执行党在社会主义初级阶段的（）。', 0, '', '', '&lt;p&gt;A、方针政策&lt;/p&gt;&lt;p&gt;B、基本纲领&lt;/p&gt;&lt;p&gt;C、治国方略&lt;/p&gt;&lt;p&gt;D、基本制度&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(184, 1, '中国共产党执政后的最大危险是（）。', 0, '', '', '&lt;p&gt;A、决策失误&lt;/p&gt;&lt;p&gt;B、脱离群众&lt;/p&gt;&lt;p&gt;C、思想僵化&lt;/p&gt;&lt;p&gt;D、腐败堕落&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(185, 1, '我们党的最大政治优势是（）。', 0, '', '', '&lt;p&gt;A、无产阶级先锋队&lt;/p&gt;&lt;p&gt;B、以科学理论为指导&lt;/p&gt;&lt;p&gt;C、密切联系群众&lt;/p&gt;&lt;p&gt;D、一切从实际出发&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(186, 1, '党的领导主要是（）的领导。', 0, '', '', '&lt;p&gt;A、思想&lt;/p&gt;&lt;p&gt;B、政治&lt;/p&gt;&lt;p&gt;C、组织&lt;/p&gt;&lt;p&gt;D、思想、政治和组织&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(187, 1, '（）问题、党同人民群众联系问题是关系党生死存亡的问题。', 0, '', '', '&lt;p&gt;A、旗帜&lt;/p&gt;&lt;p&gt;B、党风&lt;/p&gt;&lt;p&gt;C、先进性&lt;/p&gt;&lt;p&gt;D、纯洁性&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(188, 1, '民主集中制既是党的根本组织原则，也是（）在党的生活中的运用。', 0, '', '', '&lt;p&gt;A、群众路线&lt;/p&gt;&lt;p&gt;B、党的领导&lt;/p&gt;&lt;p&gt;C、实事求是&lt;/p&gt;&lt;p&gt;D、执政为民&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(189, 1, '必须实行正确的集中，保证全党的团结统一和行动一致，保证（）得到迅速有效的贯彻执行。', 0, '', '', '&lt;p&gt;A、党的制度&lt;/p&gt;&lt;p&gt;B、党的纪律&lt;/p&gt;&lt;p&gt;C、党的思想&lt;/p&gt;&lt;p&gt;D、党的决定&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(190, 1, '党必须按照总揽全局、（）的原则，在同级各种组织中发挥领导核心作用。', 0, '', '', '&lt;p&gt;A、统筹兼顾&lt;/p&gt;&lt;p&gt;B、协调各方&lt;/p&gt;&lt;p&gt;C、执政为民&lt;/p&gt;&lt;p&gt;D、宣传教育&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(191, 1, '党必须集中精力领导经济建设，组织、协调各方面的力量，同心协力，围绕（）开展工作，促进经济社会全面发展。', 0, '', '', '&lt;p&gt;A、思想建设&lt;/p&gt;&lt;p&gt;B、政治建设&lt;/p&gt;&lt;p&gt;C、经济建设&lt;/p&gt;&lt;p&gt;D、文化建设&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(192, 1, '党必须在宪法和（）的范围内活动。', 0, '', '', '&lt;p&gt;A、党章&lt;/p&gt;&lt;p&gt;B、党规&lt;/p&gt;&lt;p&gt;C、法律&lt;/p&gt;&lt;p&gt;D、法规&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(193, 1, '构建社会主义和谐社会的重点是（）。', 0, '', '', '&lt;p&gt;A、民主法治&lt;/p&gt;&lt;p&gt;B、公平正义&lt;/p&gt;&lt;p&gt;C、保障和改善民生&lt;/p&gt;&lt;p&gt;D、人与自然和谐相处&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(194, 1, '党章规定，可以申请入党的年龄为年满（）。', 0, '', '', '&lt;p&gt;A、14岁&lt;/p&gt;&lt;p&gt;B、16岁&lt;/p&gt;&lt;p&gt;C、18岁&lt;/p&gt;&lt;p&gt;D、20岁&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(195, 1, '中国共产党党员是中国工人阶级的有（）觉悟的先锋战士。', 0, '', '', '&lt;p&gt;A、共产主义&lt;/p&gt;&lt;p&gt;B、社会主义&lt;/p&gt;&lt;p&gt;C、集体主义&lt;/p&gt;&lt;p&gt;D、爱国主义&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(196, 1, '除了法律和（）规定范围内的个人利益和工作职权以外，所有共产党员都不得谋求任何私利和特权。', 0, '', '', '&lt;p&gt;A、宪法&lt;/p&gt;&lt;p&gt;B、法规&lt;/p&gt;&lt;p&gt;C、党规&lt;/p&gt;&lt;p&gt;D、政策&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(197, 1, '党章规定，党员必须履行的义务有（）。', 0, '', '', '&lt;p&gt;A、6项&lt;/p&gt;&lt;p&gt;B、8项&lt;/p&gt;&lt;p&gt;C、10项&lt;/p&gt;&lt;p&gt;D、12项&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(198, 1, '党章规定，党员必须履行的权利有（）。', 0, '', '', '&lt;p&gt;A、6项&lt;/p&gt;&lt;p&gt;B、7项&lt;/p&gt;&lt;p&gt;C、8项&lt;/p&gt;&lt;p&gt;D、10项&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(199, 1, '中国共产党员要在生产、工作、学习和社会生活中起（）。', 0, '', '', '&lt;p&gt;A、桥梁作用&lt;/p&gt;&lt;p&gt;B、纽带作用&lt;/p&gt;&lt;p&gt;C、战斗堡垒作用&lt;/p&gt;&lt;p&gt;D、先锋模范作用&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(200, 1, '基层党组织要密切联系群众，经常了解群众对（）、党的工作的批评和意见，维护群众的正当权利和利益，做好群众的思想政治工作。', 0, '', '', '&lt;p&gt;A、党组织&lt;/p&gt;&lt;p&gt;B、党员&lt;/p&gt;&lt;p&gt;C、书记&lt;/p&gt;&lt;p&gt;D、班子成员&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(201, 1, '党员有权要求（）或撤换不称职的干部。', 0, '', '', '&lt;p&gt;A、开除&lt;/p&gt;&lt;p&gt;B、罢免&lt;/p&gt;&lt;p&gt;C、辞退&lt;/p&gt;&lt;p&gt;D、处分&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(202, 1, '申请入党的人，要有（）正式党员作介绍人。（B）', 0, '', '', '&lt;p&gt;A、一名&lt;/p&gt;&lt;p&gt;B、两名&lt;/p&gt;&lt;p&gt;C、三名&lt;/p&gt;&lt;p&gt;D、四名&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(203, 1, '在党组织讨论决定对党员的党纪处分或作出鉴定时，下列说法中正确的是（）。', 0, '', '', '&lt;p&gt;A、本人无权参加&lt;/p&gt;&lt;p&gt;B、本人无权进行申辩&lt;/p&gt;&lt;p&gt;C、其他党员不可以为他作证和辩护&lt;/p&gt;&lt;p&gt;D、本人有权参加和进行申辩&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(204, 1, '当党员对党的决议和政策有不同意见时，下列说法中正确的是（）。', 0, '', '', '&lt;p&gt;A、可以不执行党的决议和政策&lt;/p&gt;&lt;p&gt;B、在坚决执行的前提下，可以声明保留，并且可以把自己的意见向党的上级组织直至中央提出&lt;/p&gt;&lt;p&gt;C、不允许向上级组织提出自己的意见&lt;/p&gt;&lt;p&gt;D、只允许向上一级组织提出自己的意见，不能向中央提出&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(205, 1, '下列说法中，错误的是（）。', 0, '', '', '&lt;p&gt;A、党员只能向上级党组织提出请求、申诉和控告&lt;/p&gt;&lt;p&gt;B、党员可以向上级党组织提出请求、申诉和控告&lt;/p&gt;&lt;p&gt;C、党员可以向中央提出请求、申诉和控告&lt;/p&gt;&lt;p&gt;D、党员有权要求有关组织给以负责的答复&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(206, 1, '基层党组织应监督党员干部和其他任何工作人员严格遵守国法政纪，严格遵守（）和人事制度，不得侵占国家、集体和群众的利益。', 0, '', '', '&lt;p&gt;A、党章&lt;/p&gt;&lt;p&gt;B、党规&lt;/p&gt;&lt;p&gt;C、国家的财政经济法规&lt;/p&gt;&lt;p&gt;D、公务员守则&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(207, 1, '党的各级领导干部要讲学习、讲政治、（），经得起各种风浪的考验。', 0, '', '', '&lt;p&gt;A、讲奉献&lt;/p&gt;&lt;p&gt;B、讲正气&lt;/p&gt;&lt;p&gt;C、讲姿态&lt;/p&gt;&lt;p&gt;D、讲风格&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(208, 1, '预备党员的预备期为（）。', 0, '', '', '&lt;p&gt;A、1年&lt;/p&gt;&lt;p&gt;B、2年&lt;/p&gt;&lt;p&gt;C、2.5年&lt;/p&gt;&lt;p&gt;D、3年&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(209, 1, '预备党员的预备期，从（）之日算起。', 0, '', '', '&lt;p&gt;A、递交入党申请书&lt;/p&gt;&lt;p&gt;B、递交入党志愿书&lt;/p&gt;&lt;p&gt;C、支部大会通过他为预备党员&lt;/p&gt;&lt;p&gt;D、上级党组织批准&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(210, 1, '预备党员预备期满，党组织认为需要继续考察和教育的，可以延长预备期，但不能超过（）。', 0, '', '', '&lt;p&gt;A、半年&lt;/p&gt;&lt;p&gt;B、1年&lt;/p&gt;&lt;p&gt;C、一年半&lt;/p&gt;&lt;p&gt;D、2年&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(211, 1, '预备党员预备期满后，党组织经过考察认为其不履行党员义务，不具备党员条件的，应当（）。', 0, '', '', '&lt;p&gt;A、留党察看&lt;/p&gt;&lt;p&gt;B、延长预备期&lt;/p&gt;&lt;p&gt;C、取消预备党员资格&lt;/p&gt;&lt;p&gt;D、给予党纪处分&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(212, 1, '预备党员转为正式党员，或延长预备期，或取消预备党员资格，都应当经（）讨论通过和上级党组织批准。', 0, '', '', '&lt;p&gt;A、支部大会&lt;/p&gt;&lt;p&gt;B、支部委员会&lt;/p&gt;&lt;p&gt;C、上级支部委员会&lt;/p&gt;&lt;p&gt;D、党小组&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(213, 1, '申请入党的人必须有两名党员作介绍人。这里的党员是指（）。', 0, '', '', '&lt;p&gt;A、党员领导干部&lt;/p&gt;&lt;p&gt;B、正式党员&lt;/p&gt;&lt;p&gt;C、预备党员&lt;/p&gt;&lt;p&gt;D、党小组长或党组成员&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(214, 1, '发展党员，必须坚持（）的原则。', 0, '', '', '&lt;p&gt;A、集体吸收&lt;/p&gt;&lt;p&gt;B、个别吸收&lt;/p&gt;&lt;p&gt;C、个别吸收和集体吸收相结合&lt;/p&gt;&lt;p&gt;D、宽严结合&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(215, 1, '预备党员的权利，除没有（）、选举权和被选举权以外，同正式党员一样。', 0, '', '', '&lt;p&gt;A、申诉权&lt;/p&gt;&lt;p&gt;B、控告权&lt;/p&gt;&lt;p&gt;C、表决权&lt;/p&gt;&lt;p&gt;D、参与权&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(216, 1, '党员要求退党，应当经支部大会讨论后宣布（），并报上级党组织备案。', 0, '', '', '&lt;p&gt;A、开除&lt;/p&gt;&lt;p&gt;B、除名&lt;/p&gt;&lt;p&gt;C、给予党纪处分&lt;/p&gt;&lt;p&gt;D、给予通报批评&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(217, 1, '党的各级组织要善于发现和推荐有真才实学的党外干部担任领导工作，保证他们（），充分发挥他们的作用。', 0, '', '', '&lt;p&gt;A、用其所长&lt;/p&gt;&lt;p&gt;B、学有所用&lt;/p&gt;&lt;p&gt;C、有职有权&lt;/p&gt;&lt;p&gt;D、大胆工作&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(218, 1, '党员如果没有正当理由，连续（）不参加党的组织生活，就被认为是自行脱党。', 0, '', '', '&lt;p&gt;A、3个月&lt;/p&gt;&lt;p&gt;B、6个月&lt;/p&gt;&lt;p&gt;C、9个月&lt;/p&gt;&lt;p&gt;D、12个月&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(219, 1, '党的地方各级纪律检查委员会全体会议，选举常务委员会和书记、副书记，并由同级党的委员会通过，报（）批准。', 0, '', '', '&lt;p&gt;A、上级党的委员会&lt;/p&gt;&lt;p&gt;B、上级党的纪律检查委员会&lt;/p&gt;&lt;p&gt;C、上级人事部门&lt;/p&gt;&lt;p&gt;D、上级人大常委会&lt;/p&gt;', 4, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(220, 1, '民主集中制是（）。', 0, '', '', '&lt;p&gt;A、民主基础上的集中&lt;/p&gt;&lt;p&gt;B、集中基础上的民主&lt;/p&gt;&lt;p&gt;C、集中指导下的民主&lt;/p&gt;&lt;p&gt;D、民主基础上的集中和集中指导下的民主相结合&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(221, 1, '&lt;p&gt;党的各级委员会实行（）的制度。&lt;/p&gt;', 0, '', '', '&lt;table align=&quot;center&quot; border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;width: 500px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;width: 258px; height: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://127.0.0.1/3.0//files/attach/files/content/20150611/14339865451588.jpg&quot; style=&quot;height: 258px; opacity: 0.9; line-height: 20.7999992370605px; width: 258px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 6, 'E', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:19:"请修改知识点2";}}', 1372247397, 1, '', 0, 0, 1),
(222, 1, '党的各级委员会向（）负责并报告工作。', 0, '', '', '&lt;p&gt;A、同级党委书记办公会&lt;/p&gt;&lt;p&gt;B、同级党的代表大会&lt;/p&gt;&lt;p&gt;C、同级党委常委&lt;/p&gt;&lt;p&gt;D、党的地方领导机关&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(223, 1, '党的总支部委员会和支部委员会设（）。', 0, '', '', '&lt;p&gt;A、纪律检查组组长&lt;/p&gt;&lt;p&gt;B、纪律检查员&lt;/p&gt;&lt;p&gt;C、纪律检查委员会&lt;/p&gt;&lt;p&gt;D、纪律检查委员&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(224, 1, '党的上下级组织之间要（）、互相支持和互相监督。', 0, '', '', '&lt;p&gt;A、互通有无&lt;/p&gt;&lt;p&gt;B、互相经验&lt;/p&gt;&lt;p&gt;C、互通情报&lt;/p&gt;&lt;p&gt;D、精诚合作&lt;/p&gt;', 4, 'C', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(225, 1, '在选举产生党的各级代表大会的代表和委员会委员时，下列表述中，正确的是（）。', 0, '', '', '&lt;p&gt;A、只能采取差额选举的办法&lt;/p&gt;&lt;p&gt;B、必须先采取差额选举办法进行预选，产生候选人名单，然后进行正式选举&lt;/p&gt;&lt;p&gt;C、党组织可以不经过选举人酝酿讨论而确定候选人名单&lt;/p&gt;&lt;p&gt;D、可以直接采用候选人数多于应选人数的差额选举办法进行正式选举；也可以先采用差额选举办法进行预选，产生候选人名单，然后进行正式选举&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(226, 1, '在选举党的各级代表大会的代表和委员会委员时，应当采用（）的方式进行选举。', 0, '', '', '&lt;p&gt;A、举手表决&lt;/p&gt;&lt;p&gt;B、口头表决&lt;/p&gt;&lt;p&gt;C、记名投票&lt;/p&gt;&lt;p&gt;D、无记名投票&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(227, 1, '党组织讨论决定问题，必须执行（）的原则。（B）', 0, '', '', '&lt;p&gt;A、个人服从组织&lt;/p&gt;&lt;p&gt;B、少数服从多数&lt;/p&gt;&lt;p&gt;C、下级服从上级&lt;/p&gt;&lt;p&gt;D、党员服从党组织&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(228, 1, '党的全国代表大会每（）举行一次，由中央委员会召集。', 0, '', '', '&lt;p&gt;A、1年&lt;/p&gt;&lt;p&gt;B、2年&lt;/p&gt;&lt;p&gt;C、4年&lt;/p&gt;&lt;p&gt;D、5年&lt;/p&gt;', 4, 'D', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(229, 1, '各级纪律检查委员会要经常对党员进行（）的教育。', 0, '', '', '&lt;p&gt;A、爱国主义&lt;/p&gt;&lt;p&gt;B、遵守纪律&lt;/p&gt;&lt;p&gt;C、道德品质&lt;/p&gt;&lt;p&gt;D、思想政治&lt;/p&gt;', 4, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247397, 1, '', 0, 0, 1),
(230, 2, '参加了中国共产党一大会议的是（）。', 0, '', '', '&lt;p&gt;A、毛泽东&lt;/p&gt;&lt;p&gt;B、何叔衡&lt;/p&gt;&lt;p&gt;C、李大钊&lt;/p&gt;&lt;p&gt;D、邓恩铭&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(231, 2, '1922年7月，党的二大在上海召开，第一次提出明确的反帝反封建的民主革命纲领。其内容是（）。', 0, '', '', '&lt;p&gt;A、打倒军阀&lt;/p&gt;&lt;p&gt;B、推翻国际帝国主义的压迫&lt;/p&gt;&lt;p&gt;C、统一中国为真正的民主共和国&lt;/p&gt;&lt;p&gt;D、实现共产主义&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(232, 2, '1927年8月7日,中共中央在汉口秘密召开紧急会议,确定了（）的方针。', 0, '', '', '&lt;p&gt;A、土地革命&lt;/p&gt;&lt;p&gt;B、武装起义&lt;/p&gt;&lt;p&gt;C、成立苏维埃&lt;/p&gt;&lt;p&gt;D、国共合作&lt;/p&gt;', 4, 'AB', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(233, 2, '1932年底,国民党军队调集30多个师的兵力,向中央根据地发动第四次“围剿”。（）从实际情况出发,指挥红一方面军在运动战中消灭敌人,取得反“围剿”的胜利。', 0, '', '', '&lt;p&gt;A、朱德&lt;/p&gt;&lt;p&gt;B、毛泽东&lt;/p&gt;&lt;p&gt;C、周恩来&lt;/p&gt;&lt;p&gt;D、李德&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(234, 2, '毛泽东指出，新民主主义革命的对象是（）。', 0, '', '', '&lt;p&gt;A、民族资产阶级&lt;/p&gt;&lt;p&gt;B、帝国主义&lt;/p&gt;&lt;p&gt;C、买办资产阶级&lt;/p&gt;&lt;p&gt;D、封建主义&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(235, 2, '1938，毛泽东发表了《论持久战》，科学地预见了抗日战争将经过的三个阶段是（）。', 0, '', '', '&lt;p&gt;A、战略防御&lt;/p&gt;&lt;p&gt;B、战略退却&lt;/p&gt;&lt;p&gt;C、战略相持&lt;/p&gt;&lt;p&gt;D、战略反攻&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(236, 2, '1940年3月,中共中央发出《抗日根据地的政权问题》的指示,提出在抗日根据地政府人员的构成上实行“三三制”原则，即（）。', 0, '', '', '&lt;p&gt;A、共产党员占三分之一&lt;/p&gt;&lt;p&gt;B、非党的左派进步分子占三分之一&lt;/p&gt;&lt;p&gt;C、中间派占三分之一&lt;/p&gt;&lt;p&gt;D、民主党派占三分之一&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(237, 2, '从1942年春天起，中国共产党在全党范围内展开了一次整风运动。下列属于这次整风运动的任务的是（）。', 0, '', '', '&lt;p&gt;A、反对主观主义以整顿学风&lt;/p&gt;&lt;p&gt;B、反对宗派主义以整顿党风&lt;/p&gt;&lt;p&gt;C、反对机会主义以整顿作风&lt;/p&gt;&lt;p&gt;D、反对党八股以整顿文风&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(238, 2, '1949年３月，在党的七届二中全会上，毛泽东告诫全党，必须警惕资产阶级“糖衣炮弹”的攻击；务必继续地保持（）的作风，务必继续地保持艰苦奋斗的作风。', 0, '', '', '&lt;p&gt;A、谦虚&lt;/p&gt;&lt;p&gt;B、谨慎&lt;/p&gt;&lt;p&gt;C、不骄&lt;/p&gt;&lt;p&gt;D、不躁&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(239, 2, '党的七大总结历史经验,把党在长期奋斗中形成的优良传统作风概括为三大作风,即（）。', 0, '', '', '&lt;p&gt;A、理论和实践相结合的作风&lt;/p&gt;&lt;p&gt;B、自我批评的作风&lt;/p&gt;&lt;p&gt;C、C、全心全意为人民服务的作风&lt;/p&gt;&lt;p&gt;D、和人民群众紧密联系在一起的作风&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(240, 2, '中国共产党在中国新民主主义革命中战胜敌人的三大法宝是（）。', 0, '', '', '&lt;p&gt;A、统一战线&lt;/p&gt;&lt;p&gt;B、工农割据&lt;/p&gt;&lt;p&gt;C、武装斗争&lt;/p&gt;&lt;p&gt;D、党的建设&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(241, 2, '1950年6月,党的七届三中全会指出,我国财政经济状况的根本好转,要用三年左右的时间,创造三个条件。这三个条件是（）。', 0, '', '', '&lt;p&gt;A、土地改革的完成&lt;/p&gt;&lt;p&gt;B、现有工商业的合理调整&lt;/p&gt;&lt;p&gt;C、打击不法投机资本&lt;/p&gt;&lt;p&gt;D、国家机构所需经费的大量节减&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(242, 2, '1951年12月1日,中共中央决定开展“三反”运动,主要内容是（）。', 0, '', '', '&lt;p&gt;A、反对贪污&lt;/p&gt;&lt;p&gt;B、反对行贿&lt;/p&gt;&lt;p&gt;C、反对浪费&lt;/p&gt;&lt;p&gt;D、反对官僚主义&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(243, 2, '和平共处五项原则指互相尊重主权和领土完整（）。', 0, '', '', '&lt;p&gt;A、互不侵犯&lt;/p&gt;&lt;p&gt;B、互不干涉内政&lt;/p&gt;&lt;p&gt;C、平等互利&lt;/p&gt;&lt;p&gt;D、和平共处&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(244, 2, '1956年我国的社会主义改造对象是（）。', 0, '', '', '&lt;p&gt;A、官僚资本主义的社会主义改造&lt;/p&gt;&lt;p&gt;B、个体农业的社会主义改&lt;/p&gt;&lt;p&gt;C、手工业的社会主义改造&lt;/p&gt;&lt;p&gt;D、资本主义工商业的社会主义改造&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(245, 2, '1957年4月,中共中央发出指示,决定在全党进行一次以正确处理人民内部矛盾为主题,以反对（）为内容的整风运动。', 0, '', '', '&lt;p&gt;A、官僚主义&lt;/p&gt;&lt;p&gt;B、党八股&lt;/p&gt;&lt;p&gt;C、宗派主义&lt;/p&gt;&lt;p&gt;D、主观主义&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(246, 2, '“文化大革命”全面发动的标志是（）。', 0, '', '', '&lt;p&gt;A、《评新编历史剧〈海瑞罢官〉》一文的发表&lt;/p&gt;&lt;p&gt;B、1966年5月中央政治局扩大会议召开&lt;/p&gt;&lt;p&gt;C、党的八届十一中全会召开&lt;/p&gt;&lt;p&gt;D、社会主义教育运动的展开&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(247, 2, '党的十二大提出,中国共产党同各国共产党发展关系要遵循的原则是（）。', 0, '', '', '&lt;p&gt;A、独立自主&lt;/p&gt;&lt;p&gt;B、完全平等&lt;/p&gt;&lt;p&gt;C、互相尊重&lt;/p&gt;&lt;p&gt;D、互不干涉内部事务&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(248, 2, '1949年9月，中国人民政治协商会议通过了四项决定，以下属于这四项决定的是（）。', 0, '', '', '&lt;p&gt;A、以北京为新中国的首都&lt;/p&gt;&lt;p&gt;B、以五星红旗为新中国的国旗&lt;/p&gt;&lt;p&gt;C、在天安门广场建立人民英雄纪念碑&lt;/p&gt;&lt;p&gt;D、以《义勇军进行曲》为代国歌&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(249, 2, '20世纪中国人民在前进道路上经历的三次历史性巨大变化是（）。', 0, '', '', '&lt;p&gt;A、辛亥革命，推翻统治中国几千年的君主专制制度&lt;/p&gt;&lt;p&gt;B、五四运动，促进马克思主义在中国的传播及其与中国工人运动的结合&lt;/p&gt;&lt;p&gt;C、中华人民共和国的成立和社会主义制度的建立&lt;/p&gt;&lt;p&gt;D、改革开放，为实现社会主义现代化而奋斗&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(250, 2, '毛泽东思想的科学含义是（）', 0, '', '', '&lt;p&gt;A、马克思列宁主义在中国的运用和发展&lt;/p&gt;&lt;p&gt;B、毛泽东个人的思想&lt;/p&gt;&lt;p&gt;C、被实践证明了的关于中国革命和建设的正确的理论原则和经验总结&lt;/p&gt;&lt;p&gt;D、中国共产党集体智慧的结晶&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(251, 2, '新民主主义革命就是“新式的特殊的资产阶级民主主义革命”，它的基本特点是（）', 0, '', '', '&lt;p&gt;A、它有新的领导阶级即无产阶级&lt;/p&gt;&lt;p&gt;B、它有新的指导思想即马克思主义&lt;/p&gt;&lt;p&gt;C、它属于世界无产阶级革命的一部分&lt;/p&gt;&lt;p&gt;D、它有了新的前途，经过新民主主义革命进而达到社会主义的目标&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(252, 2, '对个体农业、手工业和资本主义工商业进行社会主义改造，是为了（）', 0, '', '', '&lt;p&gt;A、确立社会主义生产关系&lt;/p&gt;&lt;p&gt;B、健全社会主义上层建筑&lt;/p&gt;&lt;p&gt;C、继续解放和发展生产力&lt;/p&gt;&lt;p&gt;D、为实现社会主义工业化创造必要条件&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(253, 2, '在中共八大上，陈云提出了关于我国社会主义经济体制的设想，其主要点包括（）', 0, '', '', '&lt;p&gt;A、以国营经济为主体，以私营经济为补充&lt;/p&gt;&lt;p&gt;B、以国家与集体经营为主体，以个体经营为补充&lt;/p&gt;&lt;p&gt;C、以计划生产为主体，以自由生产为补充&lt;/p&gt;&lt;p&gt;D、以国家市场为主体，以自由市场为补充&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(254, 2, '1949年3月，毛泽东在中共七届二中全会的报告中提出的“两个务必”是指（）', 0, '', '', '&lt;p&gt;A、居安思危，增强忧患意识&lt;/p&gt;&lt;p&gt;B、保持同人民群众的血肉联系&lt;/p&gt;&lt;p&gt;C、保持谦虚、谨慎、不骄、不燥的作风&lt;/p&gt;&lt;p&gt;D、保持艰苦奋斗的作风&lt;/p&gt;', 4, 'CD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(255, 2, '邓小平在强调马克思主义要与中国实际相结合时，指出（）', 0, '', '', '&lt;p&gt;A、我国建设有中国特色的社会主义，是真正坚持了马克思主义&lt;/p&gt;&lt;p&gt;B、只有结合中国实际的马克思主义，才是我们所需要的真正的马克思主义&lt;/p&gt;&lt;p&gt;C、我们要坚持的马克思主义，必须是同中国实际相结合的马克思主义&lt;/p&gt;&lt;p&gt;D、真正的马克思主义者必须根据现在的情况，认识、继承和发展马列主义&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(256, 2, '实事求是是毛泽东思想的精髓，是因为（）', 0, '', '', '&lt;p&gt;A、毛泽东在延安时为中央党校题了“实事求是”四个大字&lt;/p&gt;&lt;p&gt;B、实事求是是毛泽东思想的出发点、根本点&lt;/p&gt;&lt;p&gt;C、它是同毛泽东对中国革命道路的探索联系在一起的，是中国革命胜利的思想武器&lt;/p&gt;&lt;p&gt;D、实事求是与毛泽东思想紧密不可分&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(257, 2, '邓小平指出，建设社会主义（）', 0, '', '', '&lt;p&gt;A、必须把马克思主义的普遍真理同本国具体实际相结合&lt;/p&gt;&lt;p&gt;B、要一切从实际出发，走自己的路&lt;/p&gt;&lt;p&gt;C、没有固定的模式&lt;/p&gt;&lt;p&gt;D、必须大胆吸收和借鉴人类社会创造的一切文明成果&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(258, 2, '社会主义初级阶段是我国建设社会主义不可逾越的一个历史阶段（）', 0, '', '', '&lt;p&gt;A、它反映了社会主义代替资本主义的客观必然性&lt;/p&gt;&lt;p&gt;B、它反映了我国建设社会主义的特殊性&lt;/p&gt;&lt;p&gt;C、它是由生产力落后、商品经济不发达的客观条件决定的&lt;/p&gt;&lt;p&gt;D、它的历史任务是实现工业化和经济的社会化、市场化、现代化&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(259, 2, '中共十六大报告指出，为完成党在新世纪新阶段全面建设小康社会的奋斗目标（）', 0, '', '', '&lt;p&gt;A、发展要有新思路&lt;/p&gt;&lt;p&gt;B、改革要有新突破&lt;/p&gt;&lt;p&gt;C、开放要有新局面&lt;/p&gt;&lt;p&gt;D、各项工作要有新举措&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(260, 2, '社会主义市场经济体制的特征是（）', 0, '', '', '&lt;p&gt;A、以公有制为主体，多种所有制经济共同发展的所有制结构&lt;/p&gt;&lt;p&gt;B、以按劳分配为主体，多种分配方式并存的分配结构&lt;/p&gt;&lt;p&gt;C、宏观调控上，能更好地发挥计划和市场两种手段的长处&lt;/p&gt;&lt;p&gt;D、政府不直接干预企业的生产和经营&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(261, 2, '我国民主党派的参政作用表现在（）', 0, '', '', '&lt;p&gt;A、参加国家政权&lt;/p&gt;&lt;p&gt;B、参与国家大政方针、国家领导人选的协商&lt;/p&gt;&lt;p&gt;C、参与国家事务的管理&lt;/p&gt;&lt;p&gt;D、参与国家方针、政策、法律、法规的制定执行&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(262, 2, '下列选项中，正确的观点有（）', 0, '', '', '&lt;p&gt;A、在社会主义社会，国家、集体和个人的利益在根本上是一致的&lt;/p&gt;&lt;p&gt;B、市场经济本身要求提倡集体主义&lt;/p&gt;&lt;p&gt;C、在社会主义市场经济条件下，“人人为我，我为人人”已不现实，取而代之的必然是“人人为自己，上帝为大家”&lt;/p&gt;&lt;p&gt;D、在社会主义市场经济条件下建设精神文明，应当引导人们形成把国家和集体利益放在首位而又充分尊重个人正当利益的社会主义义利观&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(263, 2, '在处理国家之间的关系上，中国坚持的原则是（）', 0, '', '', '&lt;p&gt;A、相互尊重主权和领土完整&lt;/p&gt;&lt;p&gt;B、互不侵犯&lt;/p&gt;&lt;p&gt;C、互不干涉内政&lt;/p&gt;&lt;p&gt;D、平等互利和和平共处&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(264, 2, '党在长期斗争中形成的三大优良作风（）', 0, '', '', '&lt;p&gt;A、理论联系实际&lt;/p&gt;&lt;p&gt;B、密切联系群众&lt;/p&gt;&lt;p&gt;C、为人民服务&lt;/p&gt;&lt;p&gt;D、批评与自我批评&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(265, 2, '要在中国实现工业化，首先要正确处理农业、轻工业和重工业的关系问题，为此，毛泽东提出的许多重要思想有（）', 0, '', '', '&lt;p&gt;A、发展工业和发展农业同时并举&lt;/p&gt;&lt;p&gt;B、多发展重工业，少发展一些农业、轻工业&lt;/p&gt;&lt;p&gt;C、以农业、轻工业、重工业为序安排国民经济的方针&lt;/p&gt;&lt;p&gt;D、以农业为基础、以工业为主导的总方针&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(266, 2, '马列主义、毛泽东思想、邓小平理论是一脉相承的统一的科学体系。因为（）', 0, '', '', '&lt;p&gt;A、它们产生的时代背景是一致的&lt;/p&gt;&lt;p&gt;B、它们的基本立场和方法是一致的&lt;/p&gt;&lt;p&gt;C、它们具体的理论观点是一样的&lt;/p&gt;&lt;p&gt;D、它们对根本任务和最终目标的认识是一样的&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(267, 2, '邓小平理论是马克思主义在中国发展的新阶段，因为它（）', 0, '', '', '&lt;p&gt;A、开拓了马克思主义的新境界&lt;/p&gt;&lt;p&gt;B、把对社会主义的认识提高到了新的科学水平&lt;/p&gt;&lt;p&gt;C、对当今时代特点和总体国际形势做出了新的科学判断&lt;/p&gt;&lt;p&gt;D、形成了新的建设中国特色社会主义理论的科学体系&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(268, 2, '邓小平提出在我国社会主义建设中，判断各方面工作是非得失的标准，归根到底看其是否有利于（）', 0, '', '', '&lt;p&gt;A、提高全民族的科学文化素质&lt;/p&gt;&lt;p&gt;B、发展社会主义社会的生产力&lt;/p&gt;&lt;p&gt;C、增强社会主义国家的综合国力&lt;/p&gt;&lt;p&gt;D、提高人民的生活水平&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(269, 2, '与时俱进，就是党的全部理论和工作要（）', 0, '', '', '&lt;p&gt;A、体现时代性&lt;/p&gt;&lt;p&gt;B、忠于实践性&lt;/p&gt;&lt;p&gt;C、把握规律性&lt;/p&gt;&lt;p&gt;D、富于创造性&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(270, 2, '1980年8月26日，五届全国人大常委会第十五次会议通过决议，批准国务院提出的《广东省经济特区条例》和《福建省厦门经济特区条例》，决定在广东( )和福建厦门设置经济特区（）', 0, '', '', '&lt;p&gt;A、深圳&lt;/p&gt;&lt;p&gt;B、珠海&lt;/p&gt;&lt;p&gt;C、汕头&lt;/p&gt;&lt;p&gt;D、广州&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(271, 2, '1981年2月25日，全国总工会、共青团中央等九单位联合向全国人民特别是青少年发出倡议，开展以“五讲四美”为主要内容的文明礼貌活动。此后，这项活动又和“三热爱”活动相结合。“三热爱”指（）', 0, '', '', '&lt;p&gt;A、热爱祖国&lt;/p&gt;&lt;p&gt;B、热爱社会主义&lt;/p&gt;&lt;p&gt;C、热爱党&lt;/p&gt;&lt;p&gt;D、热爱人民&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(272, 2, '党的十二大提出,中国共产党同各国共产党发展关系要遵循的原则是（）', 0, '', '', '&lt;p&gt;A、独立自主&lt;/p&gt;&lt;p&gt;B、完全平等&lt;/p&gt;&lt;p&gt;C、互相尊重&lt;/p&gt;&lt;p&gt;D、互不干涉内部事务&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(273, 2, '1989年12月,中共中央发出《关于坚持和完善中国共产党领导的多党合作和政治协商制度的意见，指出：中国共产党同各民主党派合作的基本方针是（）', 0, '', '', '&lt;p&gt;A、长期共存&lt;/p&gt;&lt;p&gt;B、互相监督&lt;/p&gt;&lt;p&gt;C、肝胆相照&lt;/p&gt;&lt;p&gt;D、荣辱与共&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(274, 2, '邓小平在1992年南方谈话中提出的“三个有利于”是（）', 0, '', '', '&lt;p&gt;A、有利于发展社会主义社会的生产力&lt;/p&gt;&lt;p&gt;B、有利于增强社会主义国家的综合国力&lt;/p&gt;&lt;p&gt;C、有利于提高驾驭社会主义市场经济的能力&lt;/p&gt;&lt;p&gt;D、有利于提高人民的生活水平&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(275, 2, '1994年1月,江泽民在全国宣传思想工作会议上提出,新时期宣传思想战线的主要任务是（）', 0, '', '', '&lt;p&gt;A、以科学的理论武装人&lt;/p&gt;&lt;p&gt;B、以正确的舆论引导人&lt;/p&gt;&lt;p&gt;C、以高尚的精神塑造人&lt;/p&gt;&lt;p&gt;D、以优秀的作品鼓舞人&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(276, 2, '根据党的十五大确定的任务,从1998年11月开始,全党在县级以上党政领导班子、领导干部中集中时间,分期分批开展以____为主要内容的党性党风教育（）', 0, '', '', '&lt;p&gt;A、讲政治&lt;/p&gt;&lt;p&gt;B、讲学习&lt;/p&gt;&lt;p&gt;C、讲奉献&lt;/p&gt;&lt;p&gt;D、讲正气&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(277, 2, '2001年9月20日,中共中央印发《公民道德建设实施纲要》,提出在全社会大力倡导的基本道德规范是____、敬业奉献（）', 0, '', '', '&lt;p&gt;A、爱国守法&lt;/p&gt;&lt;p&gt;B、明礼诚信&lt;/p&gt;&lt;p&gt;C、团结友善&lt;/p&gt;&lt;p&gt;D、勤俭自强&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(278, 2, '2008年6月,胡锦涛在抗震救灾先进基层党组织和优秀共产党员代表座谈会讲话中,概括了抗震救灾精神的内涵,即万众一心、众志成城（）', 0, '', '', '&lt;p&gt;A、不畏艰险&lt;/p&gt;&lt;p&gt;B、百折不挠&lt;/p&gt;&lt;p&gt;C、以人为本&lt;/p&gt;&lt;p&gt;D、尊重科学&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(279, 2, '中国共产党第十七次全国代表大会提出了中国特色社会主义理论体系的科学命题，明确指出：“中国特色社会主义理论体系,就是包括____等重大战略思想在内的科学理论体系。”（）', 0, '', '', '&lt;p&gt;A、毛泽东思想&lt;/p&gt;&lt;p&gt;B、邓小平理论&lt;/p&gt;&lt;p&gt;C、“三个代表”重要思想&lt;/p&gt;&lt;p&gt;D、科学发展观&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(280, 2, '构建社会主义和谐社会的总要求是民主法治、公平正义（）', 0, '', '', '&lt;p&gt;A、诚信友爱&lt;/p&gt;&lt;p&gt;B、充满活力&lt;/p&gt;&lt;p&gt;C、安定有序&lt;/p&gt;&lt;p&gt;D、人与自然和谐相处&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(281, 2, '中央组织部统计数据显示，截至2011年底，中国共产党党员总数达8260、2万名，比上年增加233、3万名，增长2、9%；党的基层组织总数达402、7万个，比上年增加13、5万个，增长3、5%。每一个党的基层组织和每一名中国共产党党员都应努力做到（）', 0, '', '', '&lt;p&gt;A、权为民所用&lt;/p&gt;&lt;p&gt;B、情为民所系&lt;/p&gt;&lt;p&gt;C、利为民所谋&lt;/p&gt;&lt;p&gt;D、自觉践行科学发展观&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(282, 2, '中国共产党成立90年、执政60多年、领导改革开放30多年来，几代中国共产党人始终以实现中华民族伟大复兴为己任，坚持把马克思主义基本原理同中国具体实际相结合，团结带领全国各族人民不懈奋斗，战胜各种艰难险阻，不断取得革命、建设、改革的伟大胜利。我们从实践中得出的结论有（）', 0, '', '', '&lt;p&gt;A、没有共产党就没有新中国&lt;/p&gt;&lt;p&gt;B、只有社会主义才能救中国&lt;/p&gt;&lt;p&gt;C、只有社会主义才能发展中国&lt;/p&gt;&lt;p&gt;D、党的基本路线要永远坚持下去&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(283, 2, '作为小岗村党委第一书记，沈浩带领干部群众的6年探索与实践，推动小岗人走上了脱贫致富的道路，赢得了群众真诚的支持和拥护。他以忠诚和大爱，以创新和奋斗，以青春和生命，抒写了当代中国农村优秀基层干部的先进事迹和崇高精神。沈浩用他光辉而短暂的一生向人们昭示中国共产党（）', 0, '', '', '&lt;p&gt;A、是“三个代表”重要思想的忠实实践者&lt;/p&gt;&lt;p&gt;B、以全心全意为人民服务为宗旨&lt;/p&gt;&lt;p&gt;C、履行经济建设职能，带领人民走向富裕之路&lt;/p&gt;&lt;p&gt;D、是社会主义事业的领导核心&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(284, 2, '从1978年到2009年，我国国内生产总值由3645亿元增长到33、35万亿元，年均实际增长9、7％，是同期世界经济年均增长率的３倍多，2010年我国经济总量上升为世界第二。30多年的实践证明改革开放是（）', 0, '', '', '&lt;p&gt;A、决定当代中国命运的关键抉择&lt;/p&gt;&lt;p&gt;B、党执政兴国的第一要务&lt;/p&gt;&lt;p&gt;C、发展中国特色社会主义的必由之路&lt;/p&gt;&lt;p&gt;D、解决当代中国发展问题的权宜之计&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(285, 2, '“十一五”时期是我国发展史上极不平凡的５年，也是我国改革开放和社会主义现代化建设取得新的重大成就的５年。我们办成了一系列大事，办好了一系列喜事，办妥了一系列难事……我们能够取得这些成绩，确实来之不易。这充分（）', 0, '', '', '&lt;p&gt;A、显示了我国日益增强的经济实力和综合国力&lt;/p&gt;&lt;p&gt;B、证明了中国特色社会主义道路的正确性&lt;/p&gt;&lt;p&gt;C、表明了社会主义制度能够集中力量办大事的优越性&lt;/p&gt;&lt;p&gt;D、体现了中华民族不畏艰险、自强不息的英雄气概和强大凝聚力。&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(286, 2, '党的十七届五中全会高度评价“十一五”时期我国经济社会发展取得的巨大成就，认为我们党团结带领全国各族人民，紧紧抓住发展这个党执政兴国的第一要务，贯彻落实党的理论和路线方针政策，使国家面貌发生新的历史性变化，谱写了中国特色社会主义事业新篇章。因此我们要（）', 0, '', '', '&lt;p&gt;A、深入贯彻落实科学发展观&lt;/p&gt;&lt;p&gt;B、坚定不移地沿着中国特色社会主义道路走下去&lt;/p&gt;&lt;p&gt;C、坚定不移坚持党在社会主义初级阶段基本路线&lt;/p&gt;&lt;p&gt;D、高举中国特色社会主义伟大旗帜&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(287, 2, '2010年5月17日至19日，中央新疆工作座谈会议在北京召开。胡锦涛提出新时期民族工作的主题是（）', 0, '', '', '&lt;p&gt;A、共同团结奋斗&lt;/p&gt;&lt;p&gt;B、共同繁荣发展&lt;/p&gt;&lt;p&gt;C、平等团结&lt;/p&gt;&lt;p&gt;D、互助和谐&lt;/p&gt;', 4, 'AB', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(288, 2, '2011年中央一号文件《中共中央国务院关于加快水利改革发展的决定》1月29日全文发布。今后五年中国将基本建立最严格的水资源管理制度；将成为三道“红线”。这是新世纪以来连续第8个中央一号文件（）', 0, '', '', '&lt;p&gt;A、严格禁止高耗水型工业项目&lt;/p&gt;&lt;p&gt;B、用水总量控制&lt;/p&gt;&lt;p&gt;C、用水效率控制&lt;/p&gt;&lt;p&gt;D、水功能区限制纳污&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(289, 2, '2011年是中国共产党成立90周年，90年来，中国共产党为了民族独立、国家富强和人民幸福进行了艰苦卓绝的斗争，中国人民在中国共产党的领导下，彻底改变了旧中国四分五裂的局面，真正掌握了国家的命运，初步实现了国家的繁荣和富强，谱写了中华民族伟大复兴的壮丽篇章。历史雄辩地证明了（）', 0, '', '', '&lt;p&gt;A、坚持中国共产党的领导是社会主义现代化建设顺利进行的根本保证&lt;/p&gt;&lt;p&gt;B、党的执政地位是与生俱来，一劳永逸的&lt;/p&gt;&lt;p&gt;C、中国共产党对社会主义现代化建设的领导能力和领导水平不断提高&lt;/p&gt;&lt;p&gt;D、中国共产党是历史的创造者&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(290, 2, '全面建设小康社会，必须毫不放松地加强和改善党的领导，全面推进党的建设新的伟大工程，保证我们党（）', 0, '', '', '&lt;p&gt;A、始终是中国工人阶级的先锋队，同时是中国人民和中华民族的先锋队&lt;/p&gt;&lt;p&gt;B、始终是中国特色社会主义事业领导核心&lt;/p&gt;&lt;p&gt;C、始终代表中国先进生产力的发展要求，代表中国先进文化的前进方向，代表中国最广大人民的根本利益&lt;/p&gt;&lt;p&gt;D、始终坚持马克思列宁主义和别国经验在中国全面、具体的运用&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(291, 2, '“三个代表”重要思想是毛泽东思想、邓小平理论一脉相承的理论体系，这是因为它们( )。', 0, '', '', '&lt;p&gt;A、都是以马克思列宁主义为理论基础和思想来源&lt;/p&gt;&lt;p&gt;B、其基本内容是完全相同的&lt;/p&gt;&lt;p&gt;C、都以实现社会主义为目标，以解决中华民族的复兴为主题&lt;/p&gt;&lt;p&gt;D、有着共同的逻辑起点、共同的科学精神和共同的价值取向&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(292, 2, '“三个代表”重要思想标志着我们党对( )的认识达到了新水平新高度', 0, '', '', '&lt;p&gt;A、共产党的执政规律&lt;/p&gt;&lt;p&gt;B、社会主义建设的规律&lt;/p&gt;&lt;p&gt;C、市场经济发展的规律&lt;/p&gt;&lt;p&gt;D、人类社会发展的规律&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(293, 2, '“三个代表”重要思想是（）', 0, '', '', '&lt;p&gt;A、是对马克思列宁主义、毛泽东思想和邓小平理论的继承和发展&lt;/p&gt;&lt;p&gt;B、反映了当代世界和中国的发展变化对党和国家工作的新要求&lt;/p&gt;&lt;p&gt;C、是加强和改进党的建设、推进我国社会主义自我完善和发展的强大理论武器&lt;/p&gt;&lt;p&gt;D、是中国共产党集体智慧的结晶，是党必须长期坚持的指导思想&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(294, 2, '先进文化是（）', 0, '', '', '&lt;p&gt;A、杰出人物的书籍&lt;/p&gt;&lt;p&gt;B、人类文明进步的结晶&lt;/p&gt;&lt;p&gt;C、健康的、科学的、向上的、代表未来发展方向和推动社会前进的文化&lt;/p&gt;&lt;p&gt;D、造诣很高的文化艺术&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(295, 2, '贯彻“三个代表”重要思想，必须（）', 0, '', '', '&lt;p&gt;A、使全党始终保持与时俱进的精神状态，不断开拓马克思主义理论发展的新境界&lt;/p&gt;&lt;p&gt;B、把发展作为党执政兴国的第一要务，不断开创现代化建设的新局面&lt;/p&gt;&lt;p&gt;C、最广泛最充分地调动一切积极因素，不断为中华民族的伟大复兴增添新力量&lt;/p&gt;&lt;p&gt;D、以改革的精神推进党的建设，不断为党的肌体注入新活力&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(296, 2, '“三个代表”重要思想之所以成为加强和改进党的建设的根本指导思想，是因为（）', 0, '', '', '&lt;p&gt;A、它为如何加强和改进党的领导指明了方向&lt;/p&gt;&lt;p&gt;B、它为全面建设小康社会指明了方向&lt;/p&gt;&lt;p&gt;C、它为党的建设提出了新的更高要求&lt;/p&gt;&lt;p&gt;D、它指出了加强和改进党的建设的衡量标准&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(297, 2, '党的思想路线的重新确立的意义是（）', 0, '', '', '&lt;p&gt;A、保证了拨乱反正的顺利进行&lt;/p&gt;&lt;p&gt;B、推动了改革开放的伟大实践的发展&lt;/p&gt;&lt;p&gt;C、保证了党的政治路线的贯彻执行&lt;/p&gt;&lt;p&gt;D、保证了毛泽东思想的正确性&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(298, 2, '党的第三代领导集体提出“三个代表”重要思想，就是要回答（）', 0, '', '', '&lt;p&gt;A、什么是社会主义，怎样建设社会主义&lt;/p&gt;&lt;p&gt;B、中国处在什么发展阶段&lt;/p&gt;&lt;p&gt;C、建设什么样的党&lt;/p&gt;&lt;p&gt;D、怎样建设党&lt;/p&gt;', 4, 'CD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(299, 2, '党要代表先进文化前进方向就是党的全部理论和实践必须努力（）', 0, '', '', '&lt;p&gt;A、体现发展面向现代化、面向世界、面向未来的社会主义文化的要求&lt;/p&gt;&lt;p&gt;B、体现发展民族的科学的大众的社会主义文化的要求&lt;/p&gt;&lt;p&gt;C、促进全民族思想道德素质和科学文化素质的不断提高&lt;/p&gt;&lt;p&gt;D、为我国经济发展和社会进步提供精神动力和智力支持&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(300, 2, '党的十七大强调，深入贯彻落实科学发展观，要求我们（）', 0, '', '', '&lt;p&gt;A、始终坚持“一个中心、两个基本点”的基本路线&lt;/p&gt;&lt;p&gt;B、积极构建社会主义和谐社会&lt;/p&gt;&lt;p&gt;C、继续深化改革开放&lt;/p&gt;&lt;p&gt;D、切实加强和改进党的建设&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(301, 2, '深入贯彻落实科学发展观对加强党的执政能力建设提出了新要求，要求我们在运用科学发展观指导经济社会发展的实践中，不断提高（）', 0, '', '', '&lt;p&gt;A、驾驭社会主义市场经济的能力&lt;/p&gt;&lt;p&gt;B、发展社会主义民主政治的能力&lt;/p&gt;&lt;p&gt;C、建设社会主义先进文化的能力&lt;/p&gt;&lt;p&gt;D、构建社会主义和谐社会的能力&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(302, 2, '中央要求，在全党开展深入学习实践科学发展观活动，广大党员、干部要着力把科学发展观的要求转化为( )，切实推动科学发展观的贯彻落实.（）', 0, '', '', '&lt;p&gt;A、谋划发展的正确思路&lt;/p&gt;&lt;p&gt;B、促进发展的政策措施&lt;/p&gt;&lt;p&gt;C、领导发展的实际能力&lt;/p&gt;&lt;p&gt;D、提高GDP的具体做法&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(303, 2, '科学发展观，是对党的三代中央领导集体关于发展的重要思想的继承和发展，是( ).', 0, '', '', '&lt;p&gt;A、马克思主义关于发展的世界观和方法论的集中体现&lt;/p&gt;&lt;p&gt;B、同马克思列宁主义、毛泽东思想、邓小平理论和“三个代表”重要思想既一脉相承又与时俱进的科学理论&lt;/p&gt;&lt;p&gt;C、我国经济社会发展的重要指导方针&lt;/p&gt;&lt;p&gt;D、发展中国特色社会主义必须坚持和贯彻的重大战略思想&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(304, 2, '坚持以人为本，就是要坚持（）', 0, '', '', '&lt;p&gt;A、发展为了人民&lt;/p&gt;&lt;p&gt;B、发展依靠人民&lt;/p&gt;&lt;p&gt;C、发展成果由人民共享&lt;/p&gt;&lt;p&gt;D、实现人的全面发展&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(305, 2, '坚持全面可持续发展，要全面推进（）', 0, '', '', '&lt;p&gt;A、经济建设&lt;/p&gt;&lt;p&gt;B、政治建设&lt;/p&gt;&lt;p&gt;C、文化建设&lt;/p&gt;&lt;p&gt;D、生态文明建设&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(306, 2, '坚持统筹发展，就是要统筹（）', 0, '', '', '&lt;p&gt;A、城乡、区域协调发展&lt;/p&gt;&lt;p&gt;B、对内开放和对外开放协调发展&lt;/p&gt;&lt;p&gt;C、经济社会协调发展&lt;/p&gt;&lt;p&gt;D、人与自然和谐协调发展&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(307, 2, '从马克思主义历史观来深刻认识和把握科学发展观，下列说法正确的有（）', 0, '', '', '&lt;p&gt;A、人类社会的存在和发展一刻也离不开自然&lt;/p&gt;&lt;p&gt;B、人类社会的发展要受到政治、文化、意识等因素和其他社会因素的制约&lt;/p&gt;&lt;p&gt;C、生产关系是决定社会发展的根本力量&lt;/p&gt;&lt;p&gt;D、人类社会发展的内在动力就是社会矛盾的不断解决&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(308, 2, '科学发展观着眼于( )，在发展道路、发展模式、发展战略、发展动力、发展目的和发展要求等方面提出了一系列新的思想观点.（）', 0, '', '', '&lt;p&gt;A、丰富发展内涵&lt;/p&gt;&lt;p&gt;B、创新发展观念&lt;/p&gt;&lt;p&gt;C、开拓发展思路&lt;/p&gt;&lt;p&gt;D、破解发展难题&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(309, 2, '科学发展观要求，把加快经济发展，建立在( )的基础上.（）', 0, '', '', '&lt;p&gt;A、提高速度&lt;/p&gt;&lt;p&gt;B、优化结构&lt;/p&gt;&lt;p&gt;C、提高质量和效益&lt;/p&gt;&lt;p&gt;D、增加GDP&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(310, 2, '中国特色社会主义包括（）三个相互联系的组成部分。（）', 0, '', '', '&lt;p&gt;A、中国特色社会主义经济&lt;/p&gt;&lt;p&gt;B、中国特色社会主义道路&lt;/p&gt;&lt;p&gt;C、中国特色社会主义理论体系&lt;/p&gt;&lt;p&gt;D、中国特色社会主义制度&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(311, 2, '始终做到“三个代表”，是我们党的（）。（）', 0, '', '', '&lt;p&gt;A、第一要务&lt;/p&gt;&lt;p&gt;B、立党之本&lt;/p&gt;&lt;p&gt;C、执政之基&lt;/p&gt;&lt;p&gt;D、力量之源&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(312, 2, '中国共产党按照（）、（）、（）、互不干涉内部事务的原则，发展我党同各国共产党和其他政党的关系。（）', 0, '', '', '&lt;p&gt;A、独立自主&lt;/p&gt;&lt;p&gt;B、完全平等&lt;/p&gt;&lt;p&gt;C、互利共赢&lt;/p&gt;&lt;p&gt;D、互相尊重&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(313, 2, '要不断提高党的创造力、凝聚力、战斗力，建设（）、（）、（）的马克思主义执政党。（）', 0, '', '', '&lt;p&gt;A、创新型&lt;/p&gt;&lt;p&gt;B、学习型&lt;/p&gt;&lt;p&gt;C、服务型&lt;/p&gt;&lt;p&gt;D、为民型&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(314, 2, '坚持不懈地反对腐败，加强党风建设和廉政建设，必须坚持（）、（）、惩防并举、（）的方针，建立健全惩治和预防腐败体系。（）', 0, '', '', '&lt;p&gt;A、加大力度&lt;/p&gt;&lt;p&gt;B、标本兼治&lt;/p&gt;&lt;p&gt;C、综合治理&lt;/p&gt;&lt;p&gt;D、注重预防&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(315, 2, '党要适应改革开放和社会主义现代化建设的要求，坚持（）、（）、（），加强和改善党的领导。（）', 0, '', '', '&lt;p&gt;A、科学执政&lt;/p&gt;&lt;p&gt;B、民主执政&lt;/p&gt;&lt;p&gt;C、依法执政&lt;/p&gt;&lt;p&gt;D、为民执政&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(316, 2, '党必须适应形势的发展和情况的变化，（），（），改进领导方式。（）', 0, '', '', '&lt;p&gt;A、完善领导体制&lt;/p&gt;&lt;p&gt;B、科学民主决策&lt;/p&gt;&lt;p&gt;C、增强执政能力&lt;/p&gt;&lt;p&gt;D、提高执政水平&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(317, 2, '构建社会主义和谐社会的总要求是民主法治、（）、诚信友爱、（）、（）、人与自然和谐相处。（）', 0, '', '', '&lt;p&gt;A、公平正义&lt;/p&gt;&lt;p&gt;B、统筹兼顾&lt;/p&gt;&lt;p&gt;C、充满活力&lt;/p&gt;&lt;p&gt;D、安定有序&lt;/p&gt;', 4, 'ACD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(318, 2, '十六大以来，党中央坚持以邓小平理论和“三个代表”重要思想为指导，根据新的发展要求，集中全党智慧，提出了（）、（）的科学发展观。（）', 0, '', '', '&lt;p&gt;A、以经济建设为中心&lt;/p&gt;&lt;p&gt;B、以人为本&lt;/p&gt;&lt;p&gt;C、全面协调统筹持续发展&lt;/p&gt;&lt;p&gt;D、全面协调可持续发展&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(319, 2, '科学发展观，是同马克思列宁主义、毛泽东思想、邓小平理论和“三个代表”重要思想既一脉相承又与时俱进的（），是我国经济社会发展的（），是发展中国特色社会主义必须坚持和贯彻的（）。（）', 0, '', '', '&lt;p&gt;A、重要理论&lt;/p&gt;&lt;p&gt;B、科学理论&lt;/p&gt;&lt;p&gt;C、重要指导方针&lt;/p&gt;&lt;p&gt;D、重大战略思想&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(320, 2, '毛泽东思想是（）在中国的运用和发展，是被实践证明了的关于（）的正确的理论原则和经验总结，是中国共产党集体智慧的结晶。（）', 0, '', '', '&lt;p&gt;A、科学社会主义&lt;/p&gt;&lt;p&gt;B、马克思列宁主义&lt;/p&gt;&lt;p&gt;C、中国革命和建设&lt;/p&gt;&lt;p&gt;D、中国特色社会主义建设&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(321, 2, '邓小平理论是马克思列宁主义的基本原理同（）相结合的产物，是毛泽东思想在新的历史条件下的继承和发展，是（）在中国发展的新阶段，是（），是中国共产党集体智慧的结晶。（）', 0, '', '', '&lt;p&gt;A、中国革命实践&lt;/p&gt;&lt;p&gt;B、当代中国实践和时代特征&lt;/p&gt;&lt;p&gt;C、马克思主义&lt;/p&gt;&lt;p&gt;D、当代中国的马克思主义&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(322, 2, '新世纪，党的三大历史任务是。（）', 0, '', '', '&lt;p&gt;A、全面建成小康社会&lt;/p&gt;&lt;p&gt;B、实现推进现代化建设&lt;/p&gt;&lt;p&gt;C、完成祖国统一&lt;/p&gt;&lt;p&gt;D、维护世界和平与促进共同发展&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(323, 2, '和平共处五项原则的内容是：（）、互不侵犯、（）、平等互利、和平共处。（）', 0, '', '', '&lt;p&gt;A、互相尊重主权和领土完整&lt;/p&gt;&lt;p&gt;B、互不干涉内政&lt;/p&gt;&lt;p&gt;C、维护世界和平&lt;/p&gt;&lt;p&gt;D、加强合作&lt;/p&gt;', 4, 'AB', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(324, 2, '党在社会主义初级阶段的基本路线是：领导和团结全国各族人民，以经济建设为中心，坚持（），坚持改革开放，（），艰苦创业，为把我国建设成为富强民主文明和谐的社会主义现代化国家而奋斗。（）', 0, '', '', '&lt;p&gt;A、社会主义道路&lt;/p&gt;&lt;p&gt;B、四项基本原则&lt;/p&gt;&lt;p&gt;C、党的领导&lt;/p&gt;&lt;p&gt;D、自力更生&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(325, 2, '要抓紧时机，加快发展，实施（）、人才强国战略和（），充分发挥（）作为第一生产力的作用，依靠科技进步，提高劳动者素质，促进国民经济又好又快发展。（）', 0, '', '', '&lt;p&gt;A、科教兴国战略&lt;/p&gt;&lt;p&gt;B、可持续发展战略&lt;/p&gt;&lt;p&gt;C、依法治国战略&lt;/p&gt;&lt;p&gt;D、科学技术&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(326, 2, '改革开放应当（），勇于开拓，提高改革决策的科学性，增强（）的协调性，在实践中开创新路。（）', 0, '', '', '&lt;p&gt;A、解放思想&lt;/p&gt;&lt;p&gt;B、大胆探索&lt;/p&gt;&lt;p&gt;C、改革方案&lt;/p&gt;&lt;p&gt;D、改革措施&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(327, 2, '发展更加广泛、更加充分、更加健全的人民民主，切实保障人民管理（）事务和社会事务、管理经济和（）事业的权利。（）', 0, '', '', '&lt;p&gt;A、国家&lt;/p&gt;&lt;p&gt;B、党内&lt;/p&gt;&lt;p&gt;C、政治&lt;/p&gt;&lt;p&gt;D、文化&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(328, 2, '发展社会主义（），为改革开放和社会主义现代化建设提供强大的（）保证、精神动力和智力支持。（）', 0, '', '', '&lt;p&gt;A、民主政治&lt;/p&gt;&lt;p&gt;B、先进文化&lt;/p&gt;&lt;p&gt;C、思想&lt;/p&gt;&lt;p&gt;D、政治&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(329, 2, '建设社会主义生态文明的方针是。（）', 0, '', '', '&lt;p&gt;A、节约优先&lt;/p&gt;&lt;p&gt;B、保护优先&lt;/p&gt;&lt;p&gt;C、合理开发&lt;/p&gt;&lt;p&gt;D、自然恢复为主&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(330, 2, '党的建设必须坚决实现的基本要求是坚持（）。坚持解放思想，实事求是，与时俱进，求真务实。坚持（）。坚持民主集中制。（）', 0, '', '', '&lt;p&gt;A、党的基本路线&lt;/p&gt;&lt;p&gt;B、从严治党&lt;/p&gt;&lt;p&gt;C、全心全意为人民服务&lt;/p&gt;&lt;p&gt;D、党要管党&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(331, 2, '要正确认识和妥善处理中国特色社会主义事业中的重大关系，统筹（）、区域发展、（）、人与自然和谐发展、（）。（）', 0, '', '', '&lt;p&gt;A、城乡发展&lt;/p&gt;&lt;p&gt;B、经济社会发展&lt;/p&gt;&lt;p&gt;C、国内发展和对外开放&lt;/p&gt;&lt;p&gt;D、当前利益和长远利益&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(332, 2, '党员必须维护党的（），对党忠诚老实，言行一致，坚决反对一切派别组织和小集团活动，反对阳奉阴违的两面派行为和一切（）。（）', 0, '', '', '&lt;p&gt;A、形象和声誉&lt;/p&gt;&lt;p&gt;B、团结和统一&lt;/p&gt;&lt;p&gt;C、违法活动&lt;/p&gt;&lt;p&gt;D、阴谋诡计&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(333, 2, '下列（）属于党员的权利。（）', 0, '', '', '&lt;p&gt;A、有权接受党的教育和培训&lt;/p&gt;&lt;p&gt;B、有权在党的会议上和党报党刊上，参加关于党的政策问题的讨论&lt;/p&gt;&lt;p&gt;C、有权对党的工作提出建议和倡议&lt;/p&gt;&lt;p&gt;D、有权要求开除违法乱纪的党员&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(334, 2, '党的地方各级代表大会和基层代表大会的选举，如果发生违反（）的情况，上一级党的委员会在调查核实后，应作出选举（）和采取相应措施的决定，并报再上一级党的委员会审查批准，正式宣布执行。（）', 0, '', '', '&lt;p&gt;A、宪法&lt;/p&gt;&lt;p&gt;B、党章&lt;/p&gt;&lt;p&gt;C、无效&lt;/p&gt;&lt;p&gt;D、取消&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(335, 2, '在党的地方各级代表大会和（）闭会期间，（）认为有必要时，可以调动或者指派下级党组织的负责人。（）', 0, '', '', '&lt;p&gt;A、基层代表大会&lt;/p&gt;&lt;p&gt;B、支部大会&lt;/p&gt;&lt;p&gt;C、上级党的组织&lt;/p&gt;&lt;p&gt;D、基层党组织&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(336, 2, '有关全国性的重大政策问题，只有（）有权作出决定，各部门、各地方的党组织可以向（）提出建议，但不得擅自作出决定和对外发表主张。（）', 0, '', '', '&lt;p&gt;A、党中央&lt;/p&gt;&lt;p&gt;B、政治局常委&lt;/p&gt;&lt;p&gt;C、人大&lt;/p&gt;&lt;p&gt;D、中央&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(337, 2, '下级组织如果认为上级组织的决定不符合本地区、本部门的实际情况，可以请求改变（）；如果上级组织坚持原决定，下级组织必须执行，并不得（），但有权向再上一级组织报告。（）', 0, '', '', '&lt;p&gt;A、取消&lt;/p&gt;&lt;p&gt;B、改变&lt;/p&gt;&lt;p&gt;C、不执行&lt;/p&gt;&lt;p&gt;D、公开发表不同意见&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(338, 2, '中央委员会委员出缺，由（）按照（）依次递补。（）', 0, '', '', '&lt;p&gt;A、中央候补委员&lt;/p&gt;&lt;p&gt;B、政治局委员&lt;/p&gt;&lt;p&gt;C、得票多少&lt;/p&gt;&lt;p&gt;D、职务高低&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(339, 2, '党的中央政治局、中央政治局常务委员会和中央委员会总书记，由（）选举。中央委员会总书记必须从中央政治局（）中产生。（）', 0, '', '', '&lt;p&gt;A、中央委员会全体会议&lt;/p&gt;&lt;p&gt;B、全国代表大会&lt;/p&gt;&lt;p&gt;C、常务委员会委员&lt;/p&gt;&lt;p&gt;D、政治局委员&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(340, 2, '中央书记处成员由（）会提名，（）通过。（）', 0, '', '', '&lt;p&gt;A、中央委员会总书记&lt;/p&gt;&lt;p&gt;B、中央政治局常务委员&lt;/p&gt;&lt;p&gt;C、中央委员会全体会议&lt;/p&gt;&lt;p&gt;D、全国党代会&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(341, 2, '党的地方各级代表大会代表的名额和（）选举办法，由（）党的委员会决定，并报上一级党的委员会批准。（）', 0, '', '', '&lt;p&gt;A、选举办法&lt;/p&gt;&lt;p&gt;B、候选人&lt;/p&gt;&lt;p&gt;C、同级&lt;/p&gt;&lt;p&gt;D、基层&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(342, 2, '党的地方各级代表大会的职权是：听取和审查（）委员会的报告；听取和审查同级（）的报告；讨论本地区范围内的重大问题并作出决议；选举同级党的委员会，选举同级党的纪律检查委员会。（）', 0, '', '', '&lt;p&gt;A、同级&lt;/p&gt;&lt;p&gt;B、下级&lt;/p&gt;&lt;p&gt;C、党的委员会&lt;/p&gt;&lt;p&gt;D、纪律检查委员会&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(343, 2, '党的地方各级委员会的（）定期向委员会全体会议报告工作，接受（）。（）', 0, '', '', '&lt;p&gt;A、常务委员会&lt;/p&gt;&lt;p&gt;B、常委&lt;/p&gt;&lt;p&gt;C、审查&lt;/p&gt;&lt;p&gt;D、监督&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(344, 2, '党的地区委员会和相当于地区委员会的组织，是党的省、自治区委员会在几个（）范围内派出的代表（）机关。它根据（）的授权，领导本地区的工作。（）', 0, '', '', '&lt;p&gt;A、代表&lt;/p&gt;&lt;p&gt;B、领导&lt;/p&gt;&lt;p&gt;C、县、自治县、市&lt;/p&gt;&lt;p&gt;D、省、自治区委员会&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(345, 2, '党的基层组织，根据工作需要和党员人数，经（）党组织批准，分别设立党的（）、总支部委员会、支部委员会。（）', 0, '', '', '&lt;p&gt;A、同级&lt;/p&gt;&lt;p&gt;B、上级&lt;/p&gt;&lt;p&gt;C、基层委员会&lt;/p&gt;&lt;p&gt;D、纪检委员会&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(346, 2, '基层委员会由党员大会或（）选举产生，总支部委员会和支部委员会由（）选举产生。（）', 0, '', '', '&lt;p&gt;A、党小组会&lt;/p&gt;&lt;p&gt;B、代表大会&lt;/p&gt;&lt;p&gt;C、基层委员会&lt;/p&gt;&lt;p&gt;D、党员大会&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(347, 2, '党的基层组织应对党员进行教育、管理、监督和（），提高党员素质，增强党性，严格党的组织生活，开展批评和自我批评，维护和执行党的纪律，监督党员切实履行义务，保障党员的权利不受侵犯，加强和改进（）。（）', 0, '', '', '&lt;p&gt;A、领导&lt;/p&gt;&lt;p&gt;B、服务&lt;/p&gt;&lt;p&gt;C、党组织建设&lt;/p&gt;&lt;p&gt;D、流动党员管理&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(348, 2, '党组织应充分发挥党员和群众的积极性创造性，发现、培养和推荐他们中间的（），鼓励和支持他们在（）和社会主义现代化建设中贡献自己的聪明才智。（）', 0, '', '', '&lt;p&gt;A、优秀人才&lt;/p&gt;&lt;p&gt;B、先进典型&lt;/p&gt;&lt;p&gt;C、岗位工作&lt;/p&gt;&lt;p&gt;D、改革开放&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(349, 2, '党的各级领导干部必须模范地履行党章第（）条所规定的党员的各项（）。（）', 0, '', '', '&lt;p&gt;A、三&lt;/p&gt;&lt;p&gt;B、四&lt;/p&gt;&lt;p&gt;C、权利&lt;/p&gt;&lt;p&gt;D、义务&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(350, 2, '领导干部应坚持和维护党的（），有（）作风，有全局观念，善于团结同志，包括团结同自己有不同意见的同志一道工作。（）', 0, '', '', '&lt;p&gt;A、民主&lt;/p&gt;&lt;p&gt;B、良好&lt;/p&gt;&lt;p&gt;C、民主集中制&lt;/p&gt;&lt;p&gt;D、团结统一&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(351, 2, '党员干部要善于同（）合作共事，（）他们，虚心学习他们的长处。（）', 0, '', '', '&lt;p&gt;A、普通群众&lt;/p&gt;&lt;p&gt;B、党外干部&lt;/p&gt;&lt;p&gt;C、尊重&lt;/p&gt;&lt;p&gt;D、善待&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(352, 2, '（）和健康状况不适宜于继续担任工作的干部，应当按照（）的规定退、离休。（）', 0, '', '', '&lt;p&gt;A、年龄&lt;/p&gt;&lt;p&gt;B、能力&lt;/p&gt;&lt;p&gt;C、国家&lt;/p&gt;&lt;p&gt;D、党组织&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(353, 2, '党内严格禁止用违反党章和（）的手段对待党员，严格禁止打击报复和诬告陷害。违反这些规定的组织或（）必须受到党的纪律和国家法律的追究。（）', 0, '', '', '&lt;p&gt;A、党的纪律&lt;/p&gt;&lt;p&gt;B、国家法律&lt;/p&gt;&lt;p&gt;C、个人&lt;/p&gt;&lt;p&gt;D、领导&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(354, 2, '党的各级纪律检查委员会的主要任务是：维护党的章程和（），检查党的路线、方针、政策和决议的执行情况，（）党的委员会加强党风建设和组织协调反腐败工作。（）', 0, '', '', '&lt;p&gt;A、国家法律&lt;/p&gt;&lt;p&gt;B、其他党内法规&lt;/p&gt;&lt;p&gt;C、协助&lt;/p&gt;&lt;p&gt;D、指导&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(355, 2, '各级纪律检查委员会要经常对党员进行（）的教育，对（）行使权力进行监督。（）', 0, '', '', '&lt;p&gt;A、遵守纪律&lt;/p&gt;&lt;p&gt;B、遵纪守法&lt;/p&gt;&lt;p&gt;C、领导干部&lt;/p&gt;&lt;p&gt;D、党员领导干部&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(356, 2, '党要坚决支持共青团根据（）的特点和需要，（）地、富于创造性地进行工作。（）', 0, '', '', '&lt;p&gt;A、青年&lt;/p&gt;&lt;p&gt;B、广大青年&lt;/p&gt;&lt;p&gt;C、生动活泼&lt;/p&gt;&lt;p&gt;D、积极&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(357, 2, '&lt;p&gt;中国共产党代表（）的发展要求，代表中国先进文化的前进方向，代表中国最广大人民的（）。（）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A、小康社会建设&lt;/p&gt;\r\n\r\n&lt;p&gt;B、中国先进生产力&lt;/p&gt;\r\n\r\n&lt;p&gt;C、根本意志&lt;/p&gt;\r\n\r\n&lt;p&gt;D、根本利益&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"策略";}}', 1372247435, 1, '', 0, 0, 1),
(358, 2, '中国共产党以马克思列宁主义、毛泽东思想、（）、“三个代表”重要思想和（）作为自己的行动指南。（）', 0, '', '', '&lt;p&gt;A、邓小平理论&lt;/p&gt;&lt;p&gt;B、科学发展观&lt;/p&gt;&lt;p&gt;C、中国特色社会主义理论&lt;/p&gt;&lt;p&gt;D、社会主义荣辱观&lt;/p&gt;', 4, 'AB', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(359, 2, '改革开放以来我们取得一切成绩和进步的根本原因，归结起来就是：（），（），（）。（）', 0, '', '', '&lt;p&gt;A、开辟了中国特色社会主义道路&lt;/p&gt;&lt;p&gt;B、形成了中国特色社会主义理论体系&lt;/p&gt;&lt;p&gt;C、确立了中国特色社会主义目标&lt;/p&gt;&lt;p&gt;D、确立了中国特色社会主义制度&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(360, 2, '在社会主义初级阶段，必须坚持和完善（）为主体、多种所有制经济共同发展的（）经济制度。（）', 0, '', '', '&lt;p&gt;A、全民所有制&lt;/p&gt;&lt;p&gt;B、公有制&lt;/p&gt;&lt;p&gt;C、基本&lt;/p&gt;&lt;p&gt;D、根本&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(361, 2, '“三个代表”重要思想反映了当代世界和中国的发展变化对（）的新要求，是加强和改进党的建设、推进我国社会主义（）和发展的强大（）武器。（）', 0, '', '', '&lt;p&gt;A、党的工作&lt;/p&gt;&lt;p&gt;B、党和国家工作&lt;/p&gt;&lt;p&gt;C、自我完善&lt;/p&gt;&lt;p&gt;D、理论&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(362, 2, '党和国家的各项工作都要把有利于发展社会主义社会的生产力，有利于增强（），有利于提高（），作为总的出发点和检验标准。（）', 0, '', '', '&lt;p&gt;A、社会主义国家的综合国力&lt;/p&gt;&lt;p&gt;B、社会主义国家的经济实力&lt;/p&gt;&lt;p&gt;C、人民的生活水平&lt;/p&gt;&lt;p&gt;D、人民的和谐幸福&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(363, 2, '必须按照中国特色社会主义事业总体布局，全面推进经济建设、政治建设、文化建设、（）、（）。（）', 0, '', '', '&lt;p&gt;A、制度建设&lt;/p&gt;&lt;p&gt;B、社会建设&lt;/p&gt;&lt;p&gt;C、作风建设&lt;/p&gt;&lt;p&gt;D、生态文明建设&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(364, 2, '我国社会主义建设的根本任务，是进一步解放（），发展生产力，逐步实现（），并且为此而改革生产关系和上层建筑中不适应生产力发展的方面和环节。（）', 0, '', '', '&lt;p&gt;A、思想&lt;/p&gt;&lt;p&gt;B、生产力&lt;/p&gt;&lt;p&gt;C、社会主义现代化&lt;/p&gt;&lt;p&gt;D、共产主义&lt;/p&gt;', 4, '', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(365, 2, '党的各项工作要做到发展为了人民、（）依靠人民、（）由人民共享。（）', 0, '', '', '&lt;p&gt;A、建设&lt;/p&gt;&lt;p&gt;B、发展&lt;/p&gt;&lt;p&gt;C、经济成果&lt;/p&gt;&lt;p&gt;D、发展成果&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(366, 2, '坚持社会主义道路、坚持（）、坚持（）、坚持马克思列宁主义毛泽东思想这四项基本原则，是我们的立国之本。（）', 0, '', '', '&lt;p&gt;A、改革开放&lt;/p&gt;&lt;p&gt;B、人民民主专政&lt;/p&gt;&lt;p&gt;C、以经济建设为中心&lt;/p&gt;&lt;p&gt;D、中国共产党的领导&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(367, 2, '中国共产党领导人民发展社会主义民主政治。坚持（）、人民当家作主、（）有机统一，走中国特色社会主义政治发展道路。（）', 0, '', '', '&lt;p&gt;A、党的领导&lt;/p&gt;&lt;p&gt;B、社会主义道路&lt;/p&gt;&lt;p&gt;C、民主决策&lt;/p&gt;&lt;p&gt;D、依法治国&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(368, 2, '共产党员必须（），模范遵守（），严格保守党和国家的秘密，执行党的决定，服从组织分配，（）。（）', 0, '', '', '&lt;p&gt;A、自觉遵守党的纪律&lt;/p&gt;&lt;p&gt;B、国家的法律法规&lt;/p&gt;&lt;p&gt;C、认真做好本职工作&lt;/p&gt;&lt;p&gt;D、积极完成党的任务&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(369, 2, '凡属重大问题，党的各级委员会都要按照集体领导、（）、个别酝酿、（）的原则，由党的委员会集体讨论，作出决定。（）', 0, '', '', '&lt;p&gt;A、党员参与&lt;/p&gt;&lt;p&gt;B、民主集中&lt;/p&gt;&lt;p&gt;C、会议决定&lt;/p&gt;&lt;p&gt;D、求真务实&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(370, 2, '党的全国代表大会的职权是：（）；听取和审查中央纪律检查委员会的报告；讨论并决定党的重大问题；（）；选举中央委员会；选举中央纪律检查委员会。（）', 0, '', '', '&lt;p&gt;A、听取和审查中央委员会的报告&lt;/p&gt;&lt;p&gt;B、解释党的章程&lt;/p&gt;&lt;p&gt;C、修改党的章程&lt;/p&gt;&lt;p&gt;D、选举中央政治局&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(371, 2, '党组织对违犯党的纪律的党员，应当本着（）的精神，按照错误性质和情节轻重，给以批评教育直至（）。（）', 0, '', '', '&lt;p&gt;A、从严治党&lt;/p&gt;&lt;p&gt;B、惩前毖后、治病救人&lt;/p&gt;&lt;p&gt;C、纪律处分&lt;/p&gt;&lt;p&gt;D、开除党籍&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(372, 2, '加强各级领导班子建设，选拔使用在改革开放和社会主义现代化建设中政绩突出、（）的干部，培养和造就千百万社会主义事业接班人，从组织上保证党的基本理论、基本路线、基本纲领、（）的贯彻落实。（）', 0, '', '', '&lt;p&gt;A、坚持原则&lt;/p&gt;&lt;p&gt;B、群众信任&lt;/p&gt;&lt;p&gt;C、方针政策&lt;/p&gt;&lt;p&gt;D、基本经验&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(373, 2, '中国特色社会主义道路是实现途径，（）是行动指南，中国特色社会主义制度是根本保障，三者统一于中国特色社会主义伟大实践，这是党领导人民在建设社会主义长期实践中（）。（）', 0, '', '', '&lt;p&gt;A、马克思主义&lt;/p&gt;&lt;p&gt;B、中国特色社会主义理论体系&lt;/p&gt;&lt;p&gt;C、得出的基本经验&lt;/p&gt;&lt;p&gt;D、形成的最鲜明特色&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(374, 2, '改革开放应当（），勇于开拓，提高改革决策的科学性，增强改革措施的（），在实践中开创新路。（）', 0, '', '', '&lt;p&gt;A、解放思想&lt;/p&gt;&lt;p&gt;B、大胆探索&lt;/p&gt;&lt;p&gt;C、协调性&lt;/p&gt;&lt;p&gt;D、规范化&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(375, 2, '党员要坚持（）的利益高于一切，个人利益服从党和人民的利益，吃苦在前，享受在后，（），多做贡献。（）', 0, '', '', '&lt;p&gt;A、党和党组织&lt;/p&gt;&lt;p&gt;B、党和人民&lt;/p&gt;&lt;p&gt;C、克己奉公&lt;/p&gt;&lt;p&gt;D、努力工作&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(376, 2, '下列表述中，正确的是。（）', 0, '', '', '&lt;p&gt;A、邓小平理论是毛泽东思想在新的历史条件下的继承和发展&lt;/p&gt;&lt;p&gt;B、邓小平理论是马克思主义在中国发展的新阶段&lt;/p&gt;&lt;p&gt;C、科学发展观，是同马克思列宁主义、毛泽东思想、邓小平理论、“三个代表”重要思想既一脉相承又与时俱进的科学理论&lt;/p&gt;&lt;p&gt;D、科学发展观是马克思主义中国化最新成果&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(377, 2, '党的纪律处分有警告、（）、（）、留党察看、（）五种。（）', 0, '', '', '&lt;p&gt;A、记过&lt;/p&gt;&lt;p&gt;B、严重警告&lt;/p&gt;&lt;p&gt;C、撤销党内职务&lt;/p&gt;&lt;p&gt;D、开除党籍&lt;/p&gt;', 4, 'BCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(378, 2, '党选拔干部坚持（）、（），反对任人唯亲。（）', 0, '', '', '&lt;p&gt;A、五湖四海&lt;/p&gt;&lt;p&gt;B、德才兼备&lt;/p&gt;&lt;p&gt;C、政绩突出&lt;/p&gt;&lt;p&gt;D、任人唯贤&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(379, 2, '党的基层组织要宣传和执行党的路线、方针、政策，宣传和执行党中央、上级组织和本组织的决议，充分发挥党员的（），（），团结、组织党内外的干部和群众，努力完成本单位所担负的任务。\n（）', 0, '', '', '&lt;p&gt;A、积极性创造性&lt;/p&gt;&lt;p&gt;B、先锋模范作用&lt;/p&gt;&lt;p&gt;C、积极创先争优&lt;/p&gt;&lt;p&gt;D、密切联系群众&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(380, 2, '实行党委领导下的行政领导人负责制的事业单位中党的基层组织，对重大问题进行讨论和（），同时保证（）充分行使自己的职权。（）', 0, '', '', '&lt;p&gt;A、作出决定&lt;/p&gt;&lt;p&gt;B、提出建议&lt;/p&gt;&lt;p&gt;C、行政领导人&lt;/p&gt;&lt;p&gt;D、党组织负责人&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(381, 2, '党的民主集中制的基本原则的“四个服从”，即（），（），（），全党各个组织和全体党员服从党的全国代表大会和中央委员会。（）', 0, '', '', '&lt;p&gt;A、党员个人服从党的组织&lt;/p&gt;&lt;p&gt;B、少数服从多数&lt;/p&gt;&lt;p&gt;C、下级组织服从上级组织&lt;/p&gt;&lt;p&gt;D、错误意见服从正确意见&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(382, 2, '党员缺乏革命意志，（），（），经党的支部对其进行教育并在限期内仍无改正和转变的，党组织应当劝其退党。（）', 0, '', '', '&lt;p&gt;A、不履行党员义务&lt;/p&gt;&lt;p&gt;B、不行使党员权利&lt;/p&gt;&lt;p&gt;C、不符合党员条件&lt;/p&gt;&lt;p&gt;D、不按时交纳党费&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(383, 2, '入党誓词如下：我志愿加入中国共产党，拥护党的纲领，（），履行党员义务，执行党的决定，严守党的纪律，保守党的秘密，（），积极工作，为（）奋斗终身，随时准备为党和人民牺牲一切，永不叛党。（）', 0, '', '', '&lt;p&gt;A、遵守党的章程&lt;/p&gt;&lt;p&gt;B、对党忠诚&lt;/p&gt;&lt;p&gt;C、中国特色社会主义事业&lt;/p&gt;&lt;p&gt;D、共产主义&lt;/p&gt;', 4, 'ABD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(384, 2, '入党介绍人的任务是认真了解（）的思想、品质、经历和工作表现，向他解释（），说明党员的条件、义务和权利，并向党组织作出负责的报告。（）', 0, '', '', '&lt;p&gt;A、申请人&lt;/p&gt;&lt;p&gt;B、培养对象&lt;/p&gt;&lt;p&gt;C、党的纲领和党的章程&lt;/p&gt;&lt;p&gt;D、党的路线方针政策&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(385, 2, '要以改革创新精神全面推进党的建设新的伟大工程，整体推进党的（）、组织建设、作风建设、（）、制度建设，全面提高党的建设科学化水平。（）', 0, '', '', '&lt;p&gt;A、理论建设&lt;/p&gt;&lt;p&gt;B、思想建设&lt;/p&gt;&lt;p&gt;C、政治建设&lt;/p&gt;&lt;p&gt;D、反腐倡廉建设&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(386, 2, '中国共产党要领导全国各族人民实现社会主义现代化的宏伟目标，必须紧密围绕（），加强党的执政能力建设、（）建设。（）', 0, '', '', '&lt;p&gt;A、党的基本路线&lt;/p&gt;&lt;p&gt;B、党的奋斗目标&lt;/p&gt;&lt;p&gt;C、作风建设&lt;/p&gt;&lt;p&gt;D、先进性和纯洁性&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(387, 2, '中国共产党坚持（）的和平外交政策，坚持和平发展道路，坚持互利共赢的开放战略，统筹（）两个大局，积极发展对外关系，努力为我国的改革开放和现代化建设争取有利的国际环境。（）', 0, '', '', '&lt;p&gt;A、和平共处&lt;/p&gt;&lt;p&gt;B、独立自主&lt;/p&gt;&lt;p&gt;C、国内国际&lt;/p&gt;&lt;p&gt;D、和平发展&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(388, 2, '新时期的统一战线是在中国共产党领导下由（）、社会主义事业的建设者、拥护社会主义的爱国者、拥护祖国统一的（）组成的最广泛的爱国统一战线。（）', 0, '', '', '&lt;p&gt;A、全体社会主义劳动者&lt;/p&gt;&lt;p&gt;B、全国各族人民&lt;/p&gt;&lt;p&gt;C、海外侨胞&lt;/p&gt;&lt;p&gt;D、爱国者&lt;/p&gt;', 4, 'AD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(389, 2, '下列表述中，错误的是。（）', 0, '', '', '&lt;p&gt;A、党员有权在党的会议上任意地批评党的任何组织和任何党员&lt;/p&gt;&lt;p&gt;B、党员有退党的自由&lt;/p&gt;&lt;p&gt;C、预备党员的权利，除了没有表决权以外，同正式党员一样&lt;/p&gt;&lt;p&gt;D、每个党员，不论职务高低，都必须编入党的一个支部、小组或其他特定组织&lt;/p&gt;', 4, 'AC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247435, 1, '', 0, 0, 1),
(390, 2, '禁止党员领导干部利用职权和职务上的影响谋取不正当利益，不准有以下哪些行为：（）。', 0, '', '', '&lt;p&gt;A、索取、接受或者以借为名占用管理和服务对象以及其他与行使职权有关系的单位或者个人的财物；&lt;/p&gt;&lt;p&gt;B、以交易、委托理财等形式谋取不正当利益；&lt;/p&gt;&lt;p&gt;C、利用知悉或者掌握的内幕信息谋取利益；&lt;/p&gt;&lt;p&gt;D、违反规定多占住房，或者违反规定买卖经济适用房、廉租住房等保障性住房。&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(391, 2, '禁止违反规定选拔任用干部，不准有以下哪些行为：（）。', 0, '', '', '&lt;p&gt;A、采取不正当手段为本人或者他人谋取职位；&lt;/p&gt;&lt;p&gt;B、不按照规定程序推荐、考察、酝酿、讨论决定任免干部；&lt;/p&gt;&lt;p&gt;C、私自泄露民主推荐、民主测评、考察、酝酿、讨论决定干部等有关情况；&lt;/p&gt;&lt;p&gt;D、在民主推荐、民主测评、组织考察和选举中搞拉票等非组织活动。&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(392, 2, '禁止党员领导干部利用职权和职务上的影响为（）谋取利益。（）', 0, '', '', '&lt;p&gt;A、配偶&lt;/p&gt;&lt;p&gt;B、子女及其配偶&lt;/p&gt;&lt;p&gt;C、其他亲属&lt;/p&gt;&lt;p&gt;D、身边工作人员&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(393, 2, '禁止党员领导干部讲排场、比阔气、挥霍公款、铺张浪费，不准有以下哪些行为：（）。', 0, '', '', '&lt;p&gt;A、违反规定决定或者批准兴建、装修办公楼、培训中心等楼堂馆所，超标准配备、使用办公用房和办公用品&lt;/p&gt;&lt;p&gt;B、擅自用公款包租、占用客房供个人使用&lt;/p&gt;&lt;p&gt;C、违反规定配备、购买、更换、装饰或者使用小汽车&lt;/p&gt;&lt;p&gt;D、决定或者批准用公款举办有关庆典活动&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(394, 2, '禁止党员领导干部违反规定干预和插手市场经济活动，谋取私利。不准有以下哪些行为：（）。', 0, '', '', '&lt;p&gt;A、干预和插手建设工程项目承发包、土地使用权出让、政府采购、房地产开发与经营、矿产资源开发利用、中介机构服务等市场经济活动；&lt;/p&gt;&lt;p&gt;B、干预和插手国有企业重组改制、兼并、破产、产权交易、清产核资、资产评估、资产转让、重大项目投资以及其他重大经营活动等事项；&lt;/p&gt;&lt;p&gt;C、干预和插手批办各类行政许可和资金借贷等事项；&lt;/p&gt;&lt;p&gt;D、干预和插手经济纠纷。&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(395, 2, '', 0, '', '', '&lt;p&gt;A、&lt;/p&gt;&lt;p&gt;B、&lt;/p&gt;&lt;p&gt;C、&lt;/p&gt;&lt;p&gt;D、&lt;/p&gt;', 4, '', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(396, 2, '禁止党员领导干部脱离实际，弄虚作假，损害群众利益和党群干群关系，不准有以下哪些行为：（）。', 0, '', '', '&lt;p&gt;A、搞劳民伤财的“形象工程”和沽名钓誉的“政绩工程”；&lt;/p&gt;&lt;p&gt;B、虚报工作业绩；&lt;/p&gt;&lt;p&gt;C、在社会保障、政策扶持、救灾救济款物分配等事项中优亲厚友、显失公平；&lt;/p&gt;&lt;p&gt;D、获取荣誉、职称、学历学位等利益。&lt;/p&gt;', 4, 'ABC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(397, 2, '《廉政准则》总则中强调了（）。', 0, '', '', '&lt;p&gt;A、党风廉政建设的重要性和规范党员领导干部廉洁从政行为的重大意义；&lt;/p&gt;&lt;p&gt;B、对党员领导干部廉洁从政的基本要求；&lt;/p&gt;&lt;p&gt;C、促进党员领导干部廉洁从政的基本举措；&lt;/p&gt;&lt;p&gt;D、廉洁自律的极端重要性。&lt;/p&gt;', 4, 'BC', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(398, 2, '《廉政准则》第二章强调了贯彻实施的（）。', 0, '', '', '&lt;p&gt;A、组织领导；&lt;/p&gt;&lt;p&gt;B、基本途径；&lt;/p&gt;&lt;p&gt;C、考核办法；&lt;/p&gt;&lt;p&gt;D、对违反本准则的处置以及对实施本准则的监督。&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(399, 2, '《廉政准则》规定，党员领导干部不准在（）中搞拉票等非组织活动。（）', 0, '', '', '&lt;p&gt;A、民主推荐&lt;/p&gt;&lt;p&gt;B、民主测评&lt;/p&gt;&lt;p&gt;C、组织考察&lt;/p&gt;&lt;p&gt;D、选举&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(400, 2, '特定关系人是指国家工作人员的（）。', 0, '', '', '&lt;p&gt;A、近亲属&lt;/p&gt;&lt;p&gt;B、情妇（夫）&lt;/p&gt;&lt;p&gt;C、其他有共同利益关系的人&lt;/p&gt;&lt;p&gt;D、下属人员&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(401, 2, '反腐倡廉建设必须坚持（）的方针。（）', 0, '', '', '&lt;p&gt;A、标本兼治&lt;/p&gt;&lt;p&gt;B、综合治理&lt;/p&gt;&lt;p&gt;C、惩防并举&lt;/p&gt;&lt;p&gt;D、注重预防&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(402, 2, '《廉政准则》规定，党员领导干部不准违反规定（）小汽车。（）', 0, '', '', '&lt;p&gt;A、配备、购买&lt;/p&gt;&lt;p&gt;B、更换&lt;/p&gt;&lt;p&gt;C、装饰&lt;/p&gt;&lt;p&gt;D、使用&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(403, 2, '&lt;p&gt;《廉政准则》规定，党员领导干部不准干预和插手农村集体资金、资产和资源的（）等事项。（） -----&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 0, '', '', '&lt;p&gt;A、使用&lt;/p&gt;\r\n\r\n&lt;p&gt;B、分配&lt;/p&gt;\r\n\r\n&lt;p&gt;C、承包&lt;/p&gt;\r\n\r\n&lt;p&gt;D、租赁&lt;/p&gt;', 4, 'ABCD', '&lt;p&gt;3&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247435, 1, '', 0, 0, 1),
(404, 2, '《廉政准则》适用于（）。（）', 0, '', '', '&lt;p&gt;A、党的机关、人大机关、行政机关、政协机关、审判机关、检察机关中县(处)级以上党员领导干部；&lt;/p&gt;&lt;p&gt;B、人民团体、事业单位中相当于县(处)级以上党员领导干部；&lt;/p&gt;&lt;p&gt;C、国有和国有控股企业(含国有和国有控股金融企业)及其分支机构领导人员中的党员参照执行；&lt;/p&gt;&lt;p&gt;D、县(市、区、旗)直属机关、审判机关、检察机关的科级党员负责人，乡镇(街道)党员负责人，基层站所的党员负责人参照执行。&lt;/p&gt;', 4, 'ABCD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(405, 2, '下列那种行为一定违反了《廉政准则》中关于禁止违反规定选拔任用干部的规定？（）', 0, '', '', '&lt;p&gt;A、向当事人通告民主测评的情况及结果；&lt;/p&gt;&lt;p&gt;B、在工作调动时突击提拔干部；&lt;/p&gt;&lt;p&gt;C、给原任职地区干部选拔工作提出自己的建议和意见；&lt;/p&gt;&lt;p&gt;D、在干部选拔任用工作中封官许愿。&lt;/p&gt;', 4, 'BD', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247435, 1, '', 0, 0, 1),
(406, 2, '下列关于“小康社会”阐述正确的是（　）。', 0, '', '', '&lt;p&gt;A、我国人民生活总体上达到了小康水平，是社会主义制度的伟大胜利&lt;/p&gt;&lt;p&gt;B、这标志着我国彻底摆脱了贫穷落后面貌，跻身于世界经济大国&lt;/p&gt;&lt;p&gt;C、全面建设小康社会，是实现现代化建设的第三步战略目标必需的承上启下的发展阶段&lt;/p&gt;&lt;p&gt;D、党的十六大提出的“小康社会”与儒家主张的“小康社会”有本质的不同&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(407, 2, '关于我国第六次人口普查，下列表述不正确的是（）。', 0, '', '', '&lt;p&gt;A、其标准时点是2010年1月1日至2010年12月31日&lt;/p&gt;&lt;p&gt;B、所取得的数据不得作为对普查对象实施处罚的依据&lt;/p&gt;&lt;p&gt;C、所需经费由中央政府完全负担，列入相应年度的财政预算&lt;/p&gt;&lt;p&gt;D、采用按户口所在地登记的原则&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(408, 2, '下列关于我国土地资源的说法正确的是（　）。', 0, '', '', '&lt;p&gt;A、我国的国土面积居世界第四位&lt;/p&gt;&lt;p&gt;B、截至2010年底，中国耕地总数不足18、26亿亩，已接近“红线”，人均耕地不足0、1公顷，不到世界平均水平的一半&lt;/p&gt;&lt;p&gt;C、我国陆地地形多种多样，五种基本类型都有，山区总面积约占陆地总面积的三分之二&lt;/p&gt;&lt;p&gt;D、宁夏平原和河套平原被称为“塞上江南”&lt;/p&gt;', 4, 'BCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(409, 2, '《新乡市社会养老服务体系建设规划(2011-2015年)》是根据以下那些条例制定的。（）', 0, '', '', '&lt;p&gt;A、国家《社会养老服务体系建设规划(2011—2015年)》&lt;/p&gt;&lt;p&gt;B、《河南省社会养老服务体系建设规划(2011—2015年)》&lt;/p&gt;&lt;p&gt;C、《河南省老龄事业发展“十二五”规划》&lt;/p&gt;&lt;p&gt;D、《河南省人民政府关于加快推进社会养老服务体系建设的意见》&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(410, 2, '2012年，我省以迎接党的十八大胜利召开和学习贯彻十八大精神为动力，全面落实省第九次党代会部署，持续求进，务实发展，根据形势变化特点，突出（）四个着力点，较好完成了省十一届人大五次会议确定的各项目标任务。（）', 0, '', '', '&lt;p&gt;A、扩需求&lt;/p&gt;&lt;p&gt;B、创优势&lt;/p&gt;&lt;p&gt;C、破瓶颈&lt;/p&gt;&lt;p&gt;D、惠民生&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(411, 2, '为推进“全国农村改革试验区”改革发展，加强新乡市新型农村社区规划建设的管理,推进新型城镇化进程，促进“三化”协调科学发展,根据（）、（）和（）等法律法规有关规定，结合新乡市建设新型农村社区的实际，先行先试，制定新乡市新型农村社区规划建设管理办法。（）', 0, '', '', '&lt;p&gt;A、《中华人民共和国城乡规划法》&lt;/p&gt;&lt;p&gt;B、《中华人民共和国建筑法》&lt;/p&gt;&lt;p&gt;C、《河南省实施〈中华人民共和国城乡规划法〉办法》&lt;/p&gt;&lt;p&gt;D、《城市居住区规划设计规范》&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(412, 2, '辉县一座正在崛起的工业新城。（）、（）、装备制造业、纺织加工业、（）等已成为五大支柱产业。（　　　）', 0, '', '', '&lt;p&gt;A、形成能源业&lt;/p&gt;&lt;p&gt;B、水泥建材业&lt;/p&gt;&lt;p&gt;C、药品食品业&lt;/p&gt;&lt;p&gt;D、化工医药业&lt;/p&gt;', 4, 'ABC　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(413, 2, '国家能源局表示，2011年，可再生能源“十二五”规划将全面实施，七个战略新兴产业发展规划全面启动，新能源和可再生能源迎来新的发展机遇期。下列说法不正确的是（　）。', 0, '', '', '&lt;p&gt;A、2015年，战略新兴产业增加值占国内生产总值的比重力争达15%左右&lt;/p&gt;&lt;p&gt;B、核能、水电、风能、太阳能和生物能均属于可再生能源&lt;/p&gt;&lt;p&gt;C、我国的水能资源的蕴藏量居世界第二位&lt;/p&gt;&lt;p&gt;D、青藏高原、新疆、内蒙古高原、贵州高原具有丰富的太阳辐射能&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(414, 2, '辉县是一个品牌闪亮的农业基地。是（）和（），是国家优质小麦生产基地，全国小麦良种繁育基地，全国粮食生产先进县，全国食用菌行业优秀基地县，全国无公害农产品标志推广与监管示范县和河南省畜牧业发展重点县。是全省无公害蔬菜生产基地，（）。（　　　　）', 0, '', '', '&lt;p&gt;A、全国生猪调出大县&lt;/p&gt;&lt;p&gt;B、全省畜牧业发展重点县&lt;/p&gt;&lt;p&gt;C、国家优质小麦生产基地&lt;/p&gt;&lt;p&gt;D、全省最大的食用菌单品种种植基地&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(415, 2, '社会建设与人民幸福安康息息相关。党的十八大报告提出，要加快推进以改善民生为重点的社会建设。下列各项属于社会建设范畴的是（）。', 0, '', '', '&lt;p&gt;A、在学校建立贫困生活资助体系&lt;/p&gt;&lt;p&gt;B、为低收入家庭提供住房保障&lt;/p&gt;&lt;p&gt;C、扩大各项社会保险的覆盖范围&lt;/p&gt;&lt;p&gt;D、强化政府服务职能，建设服务型政府&lt;/p&gt;', 4, 'ABC　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(416, 2, '我国民族关系中的“三个离不开”指（）。', 0, '', '', '&lt;p&gt;A、汉族离不开少数民族&lt;/p&gt;&lt;p&gt;B、少数民族的发展离不开自身的努力，离不开发达地区的帮助，离不开国家政策的支持&lt;/p&gt;&lt;p&gt;C、少数民族离不开汉族，&lt;/p&gt;&lt;p&gt;D、少数民族之间也相互离不开&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(417, 2, '下列关于我国经济发展现状的表述，正确的是（）。', 0, '', '', '&lt;p&gt;A、人均国民生产总值已超过3000美元&lt;/p&gt;&lt;p&gt;B、黄金储备量已超过1000吨&lt;/p&gt;&lt;p&gt;C、对石油进口的依存度已接近30%&lt;/p&gt;&lt;p&gt;D、第三产业增加值已接近第二产业&lt;/p&gt;', 4, 'ABD　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(418, 2, '今后五年，河南省将围绕全面建成小康社会，努力实现以下那些目标：（　）。', 0, '', '', '&lt;p&gt;A、综合经济实力再上一个大台阶。&lt;/p&gt;&lt;p&gt;B、人民生活水平再上一个大台阶。&lt;/p&gt;&lt;p&gt;C、现代化建设再上一个大台阶。&lt;/p&gt;&lt;p&gt;D、基础支撑条件基本完备。&lt;/p&gt;', 4, 'ABCD　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(419, 2, '新乡市在新型农村社区规划建设中提出，新型农村社区规划建设应满足哪些技术标准。（　　）', 0, '', '', '&lt;p&gt;A、《城市居住区规划设计规范》&lt;/p&gt;&lt;p&gt;B、《河南省新型农村社区建设技术导则》&lt;/p&gt;&lt;p&gt;C、《新乡市新型农村社区规划建设技术导则》&lt;/p&gt;&lt;p&gt;D、《中原经济区规划》&lt;/p&gt;', 4, 'ABC　　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(420, 2, '下列关于我国人口现状的说法正确的是（）。', 0, '', '', '&lt;p&gt;A、我国当前人口工作的基本方向是控制人口数量、提高人口素质，优化人口结构，促进人口长期均衡发展&lt;/p&gt;&lt;p&gt;B、人口老龄化的趋势在加快、流动人口的规模不断扩大、出生人口的性别比偏低是我国当前所面临的人口问题&lt;/p&gt;&lt;p&gt;C、十二五”时期，我国将出现第一个老年人口增长高峰&lt;/p&gt;&lt;p&gt;D、“十二五”时期，我国的人均预期寿命将达到74、5岁&lt;/p&gt;', 4, 'ACD　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(421, 2, '中国特色社会主义的基本经验包括（）。', 0, '', '', '&lt;p&gt;A、中国特色社会主义道路&lt;/p&gt;&lt;p&gt;B、中国特色社会主义理论体系&lt;/p&gt;&lt;p&gt;C、中国特色社会主义制度&lt;/p&gt;&lt;p&gt;D、中国特色社会主义民主法治&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(422, 2, '推进经济结构战略性调整，必须以（）为重点，着力解决制约经济持续健康发展的重大结构性问题。（）', 0, '', '', '&lt;p&gt;A、改善需求结构&lt;/p&gt;&lt;p&gt;B、优化产业结构&lt;/p&gt;&lt;p&gt;C、促进区域协调发展&lt;/p&gt;&lt;p&gt;D、推进城镇化&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(423, 2, '十八大报告指出，扎实推进社会主义文化强国，就要（）。', 0, '', '', '&lt;p&gt;A、加强社会主义核心价值体系建设&lt;/p&gt;&lt;p&gt;B、全面提高公民道德素质&lt;/p&gt;&lt;p&gt;C、丰富人民精神文化生活&lt;/p&gt;&lt;p&gt;D、增强文化整体实力和竞争力&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(424, 2, '科学发展观最鲜明的精神实质是（）。', 0, '', '', '&lt;p&gt;A、解放思想&lt;/p&gt;&lt;p&gt;B、实事求是&lt;/p&gt;&lt;p&gt;C、与时俱进&lt;/p&gt;&lt;p&gt;D、求真务实&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(425, 2, '党的十八大对我国现阶段基本国情的重要判断是（）。', 0, '', '', '&lt;p&gt;A、我国仍处于并将长期处于社会主义初级阶段的基本国情没有变&lt;/p&gt;&lt;p&gt;B、人民日益增长的物质文化需要同落后的社会生产之间的矛盾这一社会主要矛盾没有变&lt;/p&gt;&lt;p&gt;C、我国是世界最大发展中国家的国际地位没有变&lt;/p&gt;&lt;p&gt;D、经济建设为中心的发展路子没有变&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(426, 2, '党的十八大报告提出：千方百计增加居民收入，在收入分配过程中实现“两个同步”是指（）。', 0, '', '', '&lt;p&gt;A、城乡居民收入增长和经济发展同步&lt;/p&gt;&lt;p&gt;B、城镇居民收入增长和经济发展同步&lt;/p&gt;&lt;p&gt;C、劳动报酬增长和生产率提高同步&lt;/p&gt;&lt;p&gt;D、国民生产总值增长和生产率提高同步&lt;/p&gt;', 4, 'AC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(427, 2, '党的十八大提出，我们坚定不移高举中国特色社会主义伟大旗帜，不能走：（）。', 0, '', '', '&lt;p&gt;A、封闭僵化的老路&lt;/p&gt;&lt;p&gt;B、改旗易帜的邪路&lt;/p&gt;&lt;p&gt;C、照搬照抄的死路&lt;/p&gt;&lt;p&gt;D、拒绝改革的旧路&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(428, 2, '中国特色社会主义理论体系、道路和制度的相互关系是（）。', 0, '', '', '&lt;p&gt;A、中国特色社会主义道路是实现途径&lt;/p&gt;&lt;p&gt;B、中国特色社会主义理论体系是行动指南&lt;/p&gt;&lt;p&gt;C、中国特色社会主义制度是根本保障&lt;/p&gt;&lt;p&gt;D、三者统一于中国特色社会主义伟大实践&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(429, 2, '十二届一次全会决定的四位副总理是：（）。', 0, '', '', '&lt;p&gt;A、张高丽&lt;/p&gt;&lt;p&gt;B、汪洋&lt;/p&gt;&lt;p&gt;C、刘延东&lt;/p&gt;&lt;p&gt;D、马凯&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(430, 2, '党的十八大提出的“两个一百年”奋斗目标是（）。', 0, '', '', '&lt;p&gt;A、建党100年，全面建成小康社会&lt;/p&gt;&lt;p&gt;B、建国100年，建成社会主义现代化国家&lt;/p&gt;&lt;p&gt;C、建军100年，成为世界第一强大国家&lt;/p&gt;&lt;p&gt;D、改革开放100年，成为世界第一大国&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(431, 2, '为了更好地发挥积极财政政策在稳增长、调结构、促改革、惠民生中的作用，必须（）。', 0, '', '', '&lt;p&gt;A、适当增加财政赤字和国债规模&lt;/p&gt;&lt;p&gt;B、结合税制改革完善结构性减税政策&lt;/p&gt;&lt;p&gt;C、着力优化财政支出结构&lt;/p&gt;&lt;p&gt;D、续加强地方政府性债务管理&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(432, 2, '胡锦涛指出，要加强国防和军队现代化建设，要适应国家发展战略和安全战略新要求，高度关注（）空间安全，提高以打赢信息化条件下局部战争能力为核心的完成多样化军事任务能力。', 0, '', '', '&lt;p&gt;A、海洋&lt;/p&gt;&lt;p&gt;B、太空&lt;/p&gt;&lt;p&gt;C、网络&lt;/p&gt;&lt;p&gt;D、岛屿&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(433, 2, '要积极发展党内民主，保障党员主体地位，健全党员民主权利保障制度，落实党员（）。', 0, '', '', '&lt;p&gt;A、知情权&lt;/p&gt;&lt;p&gt;B、参与权&lt;/p&gt;&lt;p&gt;C、选举权&lt;/p&gt;&lt;p&gt;D、监督权&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(434, 2, '坚持把思想理论建设放在首位，必须提高全党运用科学理论改造主观世界和客观世界的能力，使党的理论和实践始终（）。', 0, '', '', '&lt;p&gt;A、体现时代性&lt;/p&gt;&lt;p&gt;B、充满先进性&lt;/p&gt;&lt;p&gt;C、把握规律性&lt;/p&gt;&lt;p&gt;D、富于创造性&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(435, 2, '党要管党，从严治党是保持党的先进性和纯洁性，巩固党的执政地位的重要保证。在新的历史条件下，我们坚持党要管党、从严治党，必须解决好的两大历史性课题是( )。', 0, '', '', '&lt;p&gt;A、提高党的领导水平和执政水平&lt;/p&gt;&lt;p&gt;B、提高拒腐防变和抵御风险的能力&lt;/p&gt;&lt;p&gt;C、提高全党的马克思主义理论水平&lt;/p&gt;&lt;p&gt;D、提高领导干部队伍的整体素质&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(436, 2, '面对新的历史条件和考验，全党必须增强哪些意识（ABCD）', 0, '', '', '&lt;p&gt;A、忧患意识&lt;/p&gt;&lt;p&gt;B、创新意识&lt;/p&gt;&lt;p&gt;C、宗旨意识&lt;/p&gt;&lt;p&gt;D、使命意识&lt;/p&gt;', 4, '', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(437, 2, '面对资源约束趋紧、环境污染严重、生态系统退化的严峻形势，必须树立正确的生态文明理念是（）。', 0, '', '', '&lt;p&gt;A、尊重自然&lt;/p&gt;&lt;p&gt;B、顺应自然&lt;/p&gt;&lt;p&gt;C、保护自然&lt;/p&gt;&lt;p&gt;D、改造自然&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(438, 2, '党的十八大倡导的中国特色社会主义核心价值观包括（）。', 0, '', '', '&lt;p&gt;A、倡导富强、民主、文明、和谐&lt;/p&gt;&lt;p&gt;B、倡导忠孝、仁勇、俭让、节义&lt;/p&gt;&lt;p&gt;C、倡导自由、平等、公正、法治&lt;/p&gt;&lt;p&gt;D、倡导爱国、敬业、诚信、友善&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(439, 2, '根据胡锦涛总书记所作的十八大政治报告，大会主题是（）。', 0, '', '', '&lt;p&gt;A、高举中国特色社会主义伟大旗帜&lt;/p&gt;&lt;p&gt;B、走中国特色社会主义道道&lt;/p&gt;&lt;p&gt;C、以解放思想、改革开放、凝聚力量、攻坚克难的精神状态&lt;/p&gt;&lt;p&gt;D、为全面建成小康社会的伟大目标而奋斗&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(440, 2, '十八大报告关于十年成就明确提到的两个“世界第二位”是（）。', 0, '', '', '&lt;p&gt;A、国内生产总值GDP世界第二&lt;/p&gt;&lt;p&gt;B、进出口总额世界第二&lt;/p&gt;&lt;p&gt;C、外汇储备世界第二&lt;/p&gt;&lt;p&gt;D、科技创新水平世界第二&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(441, 2, '十七大以来我们推动和两岸关系，实现重大转折，主要表现在（）。', 0, '', '', '&lt;p&gt;A、实现两岸全面双向“三通”&lt;/p&gt;&lt;p&gt;B、签署实施两岸经济合作框架协议&lt;/p&gt;&lt;p&gt;C、形成两岸全方位交往格局&lt;/p&gt;&lt;p&gt;D、开创两岸关系和平发展新局面&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(442, 2, '为了进一步完善社会主义市场经济体制，政府工作报告指出必须：（）。', 0, '', '', '&lt;p&gt;A、毫不动摇低巩固和发展公有制经济&lt;/p&gt;&lt;p&gt;B、毫不动摇低鼓励、支持和引导非公有制经济发展&lt;/p&gt;&lt;p&gt;C、形成各种所有制经济依法平等使用生产要素、公平参与市场竞争、同等受到法律保护的体制环境&lt;/p&gt;&lt;p&gt;D、加强社会主义民主法治建设&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(443, 2, '十八大报告提出的发展方式转变的重大战略举措主要有（）。', 0, '', '', '&lt;p&gt;A、深化改革是发展方式转变的关键，改革的核心是处理好政府和市场的关系&lt;/p&gt;&lt;p&gt;B、科技创新是发展方式转变提高社会生产力和综合国力的战略支撑，必须摆在发展全局的核心位置&lt;/p&gt;&lt;p&gt;C、结构调整是发展方式转变的主攻方向，结构调整要牢牢把握扩大内需这一战略基点和发展实体经济这一坚实基础&lt;/p&gt;&lt;p&gt;D、提高开放型经济水平，推动开放朝着优化结构、拓展深度、提高效益的方向转变；同时推动城乡一体化发展&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(444, 2, '十八大政治报告提出，十年来我国经济总量从世界第六位上升到第二位，重要意义在于（）。', 0, '', '', '&lt;p&gt;A、社会生产力、经济实力、科技实力迈上一个大台阶&lt;/p&gt;&lt;p&gt;B、人民生活水平、居民收入水平、社会保障水平迈上一个大台阶&lt;/p&gt;&lt;p&gt;C、综合国力、国际竞争力、国际影响力迈上一个大台阶&lt;/p&gt;&lt;p&gt;D、国际话语权和世界领导作用迈上了一个大台阶&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(445, 2, '十八大政治报告上提出，党的十六大以来的十年，是我国经济持续发展、民主不断健全、文化日益繁荣、社会保持稳定的十年，取得这样的历史性成就主要靠的是（）。', 0, '', '', '&lt;p&gt;A、科学发展观的科学指导&lt;/p&gt;&lt;p&gt;B、党的基本理论，基本路线、基本纲领、基本经验的正确指引&lt;/p&gt;&lt;p&gt;C、新中国成立以来特别是改革开放以来奠定的深厚基础&lt;/p&gt;&lt;p&gt;D、全党全国各族人民的团结奋斗&lt;/p&gt;', 4, 'BC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(446, 2, '十八大政治报告上提出，总结十年奋斗历程，最重要的是形成和贯彻了科学发展观,科学发展观的重要意义在于（）。', 0, '', '', '&lt;p&gt;A、是马克思主义同当代中国实际和时代特征相结合的产物&lt;/p&gt;&lt;p&gt;B、是马克思主义关于发展的世界观和方法论的集中体现&lt;/p&gt;&lt;p&gt;C、对新形势下实现什么样的发展、怎样发展等重大问题作出了新的科学回答&lt;/p&gt;&lt;p&gt;D、把我们对中国特色社会主义规律的认识提高到新的水平，开辟了当代中国马克思主义发展新境界&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(447, 2, '科学发展观的历史地位在于（）。', 0, '', '', '&lt;p&gt;A、是中国特色社会主义理论体系最新成果&lt;/p&gt;&lt;p&gt;B、是指导党和国家全部工作的强大思想武器&lt;/p&gt;&lt;p&gt;C、是中国共产党集体智慧的结晶&lt;/p&gt;&lt;p&gt;D、是党必须长期坚持的指导思想&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(448, 2, '十八大对科学发展观主要内容的新定位是（）。', 0, '', '', '&lt;p&gt;A、第一要义是经济社会发展&lt;/p&gt;&lt;p&gt;B、核心立场是以为为本&lt;/p&gt;&lt;p&gt;C、基本要求是全面协调可持续&lt;/p&gt;&lt;p&gt;D、根本方法是统筹兼顾&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(449, 2, '推动经济社会发展是科学发展观的第一要义，概括而言，发展是指（）。', 0, '', '', '&lt;p&gt;A、科学发展&lt;/p&gt;&lt;p&gt;B、和谐发展&lt;/p&gt;&lt;p&gt;C、和平发展&lt;/p&gt;&lt;p&gt;D、全面协调可持续发展&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(450, 2, '十八大政治报告强调要更加自觉地把以人为本作为深入贯彻落实科学发展观的核心立场，这是指（）。', 0, '', '', '&lt;p&gt;A、始终把实现好、发展好、维护好最广大人民根本利益作为党和国家一切工作的出发点和落脚点&lt;/p&gt;&lt;p&gt;B、尊重人民首创精神&lt;/p&gt;&lt;p&gt;C、保障人民各项权益&lt;/p&gt;&lt;p&gt;D、不断在实现发展成果由人民共享、促进人的全面发展上取得新成效&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(451, 2, '政府工作报告指出，重点推进三公经费公开接受民众监督，三公是指：（）。', 0, '', '', '&lt;p&gt;A、公务接待经费&lt;/p&gt;&lt;p&gt;B、公务车购置使用经费&lt;/p&gt;&lt;p&gt;C、因公出国出境经费&lt;/p&gt;&lt;p&gt;D、公务培训经费&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(452, 2, '十八大报告政治指出：毛泽东第一代领导人为中国特色社会主义作出的主要贡献是（）。', 0, '', '', '&lt;p&gt;A、宝贵经验&lt;/p&gt;&lt;p&gt;B、理论准备&lt;/p&gt;&lt;p&gt;C、物质基础&lt;/p&gt;&lt;p&gt;D、重要思想&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(453, 2, '中国共产党面向未来的“两个一百年”是（）。', 0, '', '', '&lt;p&gt;A、建党100年，全面建成小康社会&lt;/p&gt;&lt;p&gt;B、建国100年，建成社会主义现代化国家&lt;/p&gt;&lt;p&gt;C、建军100年，成为世界第一强大国家&lt;/p&gt;&lt;p&gt;D、改革开放100年，成为世界第一大国&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(454, 2, '十八大政治报告指出：邓小平第二代领导人为中国特色社会主义作出的主要贡献是( )。', 0, '', '', '&lt;p&gt;A、作出把党和国家工作中心转移到经济建设上来&lt;/p&gt;&lt;p&gt;B、实行改革开放的历史性决策；深刻揭示社会主义本质&lt;/p&gt;&lt;p&gt;C、确立社会主义初级阶段基本路线，明确提出走自己的路、建设中国特色社会主义&lt;/p&gt;&lt;p&gt;D、科学回答了建设中国特色社会主义的一系列基本问题，成功开创了中国特色社会主义&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(455, 2, '十八大指出，独立自主、自力更生、充满自信主要是指（）。', 0, '', '', '&lt;p&gt;A、道路自信&lt;/p&gt;&lt;p&gt;B、理论自信&lt;/p&gt;&lt;p&gt;C、旗帜自信&lt;/p&gt;&lt;p&gt;D、制度自信&lt;/p&gt;', 4, 'ABD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(456, 2, '十八大提出，从2010年到2020年要实现“两个倍增”计划是（）。', 0, '', '', '&lt;p&gt;A、国内生产总值倍增&lt;/p&gt;&lt;p&gt;B、进出口贸易额倍增&lt;/p&gt;&lt;p&gt;C、外汇储备量倍增&lt;/p&gt;&lt;p&gt;D、城乡居民收入倍增&lt;/p&gt;', 4, 'AD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(457, 2, '十八大提出全面建设小康的新要求是（）。', 0, '', '', '&lt;p&gt;A、经济持续健康发展，转变经济发展方式取得重大进展&lt;/p&gt;&lt;p&gt;B、人民民主不断扩大，民主制度更加完善，文化软实力显著增强，社会主义核心价值体系深入人心&lt;/p&gt;&lt;p&gt;C、人民生活水平全面提高，基本公共服务均等化总体实现&lt;/p&gt;&lt;p&gt;D、资源节约型、环境友好型社会建设取得重大进展；主体功能区布局基本形成，资源循环利用体系初步建立&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(458, 2, '中国特色的社会主义现代化道路，具有鲜明的时代内容，具体是指（）。', 0, '', '', '&lt;p&gt;A、新型工业化道路&lt;/p&gt;&lt;p&gt;B、信息化道路&lt;/p&gt;&lt;p&gt;C、城镇化道路&lt;/p&gt;&lt;p&gt;D、农业现代化道路&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(459, 2, '十八大强调，坚持走中国特色新型工业化、信息化、城镇化、农业现代化道路，正确处理“四化“之间相互关系的基本要求是（）。', 0, '', '', '&lt;p&gt;A、信息化和工业化深度融合&lt;/p&gt;&lt;p&gt;B、工业化和城镇化良性互动&lt;/p&gt;&lt;p&gt;C、城镇化和农村现代化相互协调&lt;/p&gt;&lt;p&gt;D、工业化、信息化、城镇化、农业现代化同步发展&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(460, 2, '十八大指出，加快发展方式转变，就是要使经济发展更多地（）。', 0, '', '', '&lt;p&gt;A、依靠内需特别是消费需求拉动&lt;/p&gt;&lt;p&gt;B、依靠科技进步、劳动者素质提高、管理创新驱动&lt;/p&gt;&lt;p&gt;C、依靠现代服务业和战略性新兴产业带动；依靠节约资源和循环经济推动&lt;/p&gt;&lt;p&gt;D、依靠城乡区域发展协调互动，不断增强长期发展后劲&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(461, 2, '十八大指出，加快发展方式转变，提高质量和效益就要（）。', 0, '', '', '&lt;p&gt;A、着力激发各类市场主体发展新活力&lt;/p&gt;&lt;p&gt;B、着力增强创新驱动发展新动力&lt;/p&gt;&lt;p&gt;C、着力构建现代产业发展新体系&lt;/p&gt;&lt;p&gt;D、着力培育开放型经济发展新优势&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(462, 2, '十八大强调，在当代中国，关系我国发展全局的战略抉择是（）。', 0, '', '', '&lt;p&gt;A、以科学发展观为主题&lt;/p&gt;&lt;p&gt;B、以加快发展方式转变为主线&lt;/p&gt;&lt;p&gt;C、以科技创新发展为支撑&lt;/p&gt;&lt;p&gt;D、以教育发展为基础&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(463, 2, '十八大政治报告指出：江泽民为核心的第三代中国领导集体又对于中国特色社会主义的主要贡献是（）。', 0, '', '', '&lt;p&gt;A、依据新的实践确立了党的基本纲领、基本经验&lt;/p&gt;&lt;p&gt;B、确立了社会主义市场经济体制的改革目标和基本框架&lt;/p&gt;&lt;p&gt;C、确立了社会主义初级阶段的基本经济制度和分配制度，开创全面改革开放新局面&lt;/p&gt;&lt;p&gt;D、推进党的建设新的伟大工程，成功把中国特色社会主义推向二十一世纪&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(464, 2, '胡锦涛为总书记的第四代中国领导集体，成功地在新的历史起点上坚持和发展了中国特色社会主义，主要贡献是（）。', 0, '', '', '&lt;p&gt;A、强调坚持以人为本、全面协调可持续发展&lt;/p&gt;&lt;p&gt;B、提出构建社会主义和谐社会、加快生态文明建设，形成中国特色社会主义事业总体布局&lt;/p&gt;&lt;p&gt;C、着力保障和改善民生，促进社会公平正义，推动建设和谐世界&lt;/p&gt;&lt;p&gt;D、推进党的执政能力建设和先进性建设&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(465, 2, '十八大重申指出，党和人民九十多年奋斗的根本成就是（）。', 0, '', '', '&lt;p&gt;A、中国特色社会主义道路&lt;/p&gt;&lt;p&gt;B、中国特色社会主义理论体系&lt;/p&gt;&lt;p&gt;C、中国特色社会主义制度&lt;/p&gt;&lt;p&gt;D、中国特色社会主义旗帜&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(466, 2, '高举中国特色社会主义伟大旗帜要坚持反对的主要错误倾向是（）。', 0, '', '', '&lt;p&gt;A、封闭僵化的老路&lt;/p&gt;&lt;p&gt;B、改旗易帜的邪路&lt;/p&gt;&lt;p&gt;C、照搬照抄的死路&lt;/p&gt;&lt;p&gt;D、拒绝改革的旧路&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(467, 2, '十八大重申指出，中国特色社会主义理论体系主要包括（）。', 0, '', '', '&lt;p&gt;A、毛泽东思想&lt;/p&gt;&lt;p&gt;B、邓小平理论&lt;/p&gt;&lt;p&gt;C、江泽民三个代表重要思想&lt;/p&gt;&lt;p&gt;D、科学发展观&lt;/p&gt;', 4, 'BCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(468, 2, '十八大重申，中国特色社会主义道路，就是在（）。', 0, '', '', '&lt;p&gt;A、立足基本国情，以经济建设为中心&lt;/p&gt;&lt;p&gt;B、坚持四项基本原则，坚持改革开放，解放和发展社会生产力&lt;/p&gt;&lt;p&gt;C、建设社会主义市场经济、社会主义民主政治、社会主义先进文化、社会主义和谐社会、社会主义生态文明&lt;/p&gt;&lt;p&gt;D、促进人的全面发展，逐步实现全体人民共同富裕，建设富强民主文明和谐的社会主义现代化国家&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(469, 2, '中国特色社会主义制度，概括而言，主要是指（）。', 0, '', '', '&lt;p&gt;A、根本制度&lt;/p&gt;&lt;p&gt;B、基本制度&lt;/p&gt;&lt;p&gt;C、具体制度&lt;/p&gt;&lt;p&gt;D、具体机制&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(470, 2, '结合过去十年特别是近五年工作的体会，政府工作报告对今年政府主要工作提出以下建议。（）', 0, '', '', '&lt;p&gt;A、加快转变经济发展方式，促进经济持续健康发展&lt;/p&gt;&lt;p&gt;B、强化农业农村发展基础，推动城乡发展一体化&lt;/p&gt;&lt;p&gt;C、以保障和改善民生为重点，全面提高人民物质文化生活水平&lt;/p&gt;&lt;p&gt;D、以更大的政治勇气和智慧，深入推进改革开放&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(471, 2, '中国特色社会主义总任务是（）。', 0, '', '', '&lt;p&gt;A、社会主义现代化&lt;/p&gt;&lt;p&gt;B、中华民族伟大复兴&lt;/p&gt;&lt;p&gt;C、全国人民共同富裕&lt;/p&gt;&lt;p&gt;D、人的自由和全面发展&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(472, 2, '发展中国特色社会主义，其中的中国特色主要是指（）。', 0, '', '', '&lt;p&gt;A、实践特色&lt;/p&gt;&lt;p&gt;B、理论特色&lt;/p&gt;&lt;p&gt;C、民族特色&lt;/p&gt;&lt;p&gt;D、时代特色&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(473, 2, '我国国防和军队现代化建设的双重任务是（）。', 0, '', '', '&lt;p&gt;A、机械化&lt;/p&gt;&lt;p&gt;B、信息化&lt;/p&gt;&lt;p&gt;C、电子化&lt;/p&gt;&lt;p&gt;D、网络化&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(474, 2, '十八大提出，当今世界各国人民的共同愿望是（）。', 0, '', '', '&lt;p&gt;A、要和平不要战争&lt;/p&gt;&lt;p&gt;B、要发展不要贫穷&lt;/p&gt;&lt;p&gt;C、要合作不要对抗&lt;/p&gt;&lt;p&gt;D、建设持久和平、共同繁荣的和谐世界&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(475, 2, '政治体制改革的目标是（）。', 0, '', '', '&lt;p&gt;A、增强党和国家的活力&lt;/p&gt;&lt;p&gt;B、调动人民积极性&lt;/p&gt;&lt;p&gt;C、维持团结稳定&lt;/p&gt;&lt;p&gt;D、保证共产党长期执政&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(476, 2, '十八大提出，完善基层民主的重点是（）。', 0, '', '', '&lt;p&gt;A、扩大有序参与&lt;/p&gt;&lt;p&gt;B、推进信息公开&lt;/p&gt;&lt;p&gt;C、加强议事协商&lt;/p&gt;&lt;p&gt;D、强化权力监督&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(477, 2, '十八大提出，依法治国理政的基本方式，主要包括（）。', 0, '', '', '&lt;p&gt;A、科学立法&lt;/p&gt;&lt;p&gt;B、严格执法&lt;/p&gt;&lt;p&gt;C、公正司法&lt;/p&gt;&lt;p&gt;D、全民守法&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(478, 2, '按照建立中国特色行政体制的目标，行政体制改革的主要内容有（）。', 0, '', '', '&lt;p&gt;A、政企分开&lt;/p&gt;&lt;p&gt;B、政资分开&lt;/p&gt;&lt;p&gt;C、政事分开&lt;/p&gt;&lt;p&gt;D、政社分开&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(479, 2, '在中国特色行政体制改革中，服务型政府的基本要求是（）。', 0, '', '', '&lt;p&gt;A、职能科学&lt;/p&gt;&lt;p&gt;B、结构优化&lt;/p&gt;&lt;p&gt;C、廉洁高效&lt;/p&gt;&lt;p&gt;D、人民满意&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(480, 2, '十八大要求建立健全权力运行制约和监督体系，强调指出，权力正确运行的重要保证是保障人民的（）。', 0, '', '', '&lt;p&gt;A、知情权&lt;/p&gt;&lt;p&gt;B、参与权&lt;/p&gt;&lt;p&gt;C、表达权&lt;/p&gt;&lt;p&gt;D、监督权&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(481, 2, '社会主义民族关系的基本要求是促进各民族（）。', 0, '', '', '&lt;p&gt;A、和睦相处&lt;/p&gt;&lt;p&gt;B、和衷共济&lt;/p&gt;&lt;p&gt;C、和谐发展&lt;/p&gt;&lt;p&gt;D、和平共处&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(482, 2, '十八大提出，党的民族工作主题是（）。', 0, '', '', '&lt;p&gt;A、民族平等&lt;/p&gt;&lt;p&gt;B、发展经济&lt;/p&gt;&lt;p&gt;C、各民族共同团结奋斗&lt;/p&gt;&lt;p&gt;D、共同繁荣发展&lt;/p&gt;', 4, 'CD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(483, 2, '十八大提出，文化的重要作用主要有（）。', 0, '', '', '&lt;p&gt;A、引领风尚&lt;/p&gt;&lt;p&gt;B、教育人民&lt;/p&gt;&lt;p&gt;C、服务社会&lt;/p&gt;&lt;p&gt;D、推动发展&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(484, 2, '十八大提出，我国在外交和国际政治活动中坚持弘扬的基本精神是（）。', 0, '', '', '&lt;p&gt;A、平等互信&lt;/p&gt;&lt;p&gt;B、包容互鉴&lt;/p&gt;&lt;p&gt;C、合作共赢&lt;/p&gt;&lt;p&gt;D、相互依存&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(485, 2, '十八大提出的党建目标是建设（）的马克思主义执政党。', 0, '', '', '&lt;p&gt;A、学习型&lt;/p&gt;&lt;p&gt;B、服务型&lt;/p&gt;&lt;p&gt;C、创新型&lt;/p&gt;&lt;p&gt;D、改革型&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(486, 2, '生态文明建设的基本国策是（）。', 0, '', '', '&lt;p&gt;A、节约资源&lt;/p&gt;&lt;p&gt;B、保护环境&lt;/p&gt;&lt;p&gt;C、提高资源利用效率&lt;/p&gt;&lt;p&gt;D、用好国内国际两种资源&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(487, 2, '生态文明建设的基本方针是（）。', 0, '', '', '&lt;p&gt;A、节约优先&lt;/p&gt;&lt;p&gt;B、保护优先&lt;/p&gt;&lt;p&gt;C、自然恢复为主&lt;/p&gt;&lt;p&gt;D、开发利用为主&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(488, 2, '优化国土空间开发的原则是（）。', 0, '', '', '&lt;p&gt;A、人口资源环境相均衡&lt;/p&gt;&lt;p&gt;B、经济社会生态效益相统一&lt;/p&gt;&lt;p&gt;C、开发利用和环境保护相结合&lt;/p&gt;&lt;p&gt;D、节约资源和提高资源利用率相互促进&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(489, 2, '十八大在提高海洋资源开发能力方面提出的主要政策目标有（）。', 0, '', '', '&lt;p&gt;A、发展海洋经济&lt;/p&gt;&lt;p&gt;B、保护海洋生态环境&lt;/p&gt;&lt;p&gt;C、维护国家海洋权益&lt;/p&gt;&lt;p&gt;D、建设海洋强国&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(490, 2, '中国特色社会主义文化发展道路主要内容是（）。', 0, '', '', '&lt;p&gt;A、坚持为人民服务、为社会主义服务的方向&lt;/p&gt;&lt;p&gt;B、坚持百花齐放、百家争鸣的方针&lt;/p&gt;&lt;p&gt;C、坚持贴近实际、贴近生活、贴近群众的原则&lt;/p&gt;&lt;p&gt;D、推动精神文明和物质文明全面发展，建设面向现代化、面向世界、面向未来的社会主义先进文化&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(491, 3, '中国第一个共产主义小组由陈独秀等人于1920年8月在上海建立。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(492, 3, '我国社会的主要矛盾是人民日益增长的物质文化需要同落后的社会生产之间的矛盾。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(493, 3, '中国共产党的建立，是中国开天辟地的大事件。自从有了共产党，中国革命的面貌就焕然一新。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(494, 3, '中共中央于1922年9月在上海创办了自己的政治机关报——《向导》周报。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(495, 3, '1922年7月16日至23日，中国共产党在上海召开了第二次全国代表大会，会议只制定了党的最高纲领。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(496, 3, '1923年1月1日,广东海丰县农会成立，彭湃任会长，会员约十万人，占海丰县人口的四分之一。这是我国的第一个县农会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(497, 3, '1923年6月15日，中国共产党理论刊物《新青年》在广州创刊，由瞿秋白翻译的《国际歌》的中文歌词首次在这个刊物上发表。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(498, 3, '1927年9月9日，由毛泽东和湖南省委领导、组织的秋收起义，使中国革命开始走上了农村包围城市、武装夺取政权的正确道路。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(499, 3, '1929年12月，在福建省上杭古田召开了中国工农红军第一军党的第九次代表大会，即古田会议。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(500, 3, '1931年11月7日，中华工农兵苏维埃第一次全国代表大会在江西瑞金召开，会议宣布成立中华苏维埃共和国临时中央政府，选举毛泽东为主席。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(501, 3, '土地革命、武装斗争和根据地建设是三位一体不可分割的，这三者的结合，就是“工农武装割据”。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(502, 3, '1935年8月1日，中国共产党驻共产国际代表团草拟了《为抗日救国告全体同胞书》，即八一宣言。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(503, 3, '西安事变的和平解决是中国共产党积极努力的结果，它标志着十年内战局面基本结束。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(504, 3, '中国工农红军在第一次至第四次反“围剿”斗争中采取了诱敌深入、集中兵力先打弱敌等方针。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(505, 3, '中国革命必须分两步走，第一步是新民主主义革命，第二步是社会主义革命，其间不允许横插一个资产阶级专政的阶段。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(506, 3, '皖南事变发生在1941年1月6日，是蒋介石国民党为发动第一次反共高潮而制造的反革命事变。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(507, 3, '1945年4月23日至6月11日，党的七大在延安杨家岭中央大礼堂隆重举行。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(508, 3, '人民解放战争经历了战略防御、战略进攻、战略反攻三个主要阶段。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(509, 3, '1949年10月1日中华人民共和国的成立，实现了从新民主主义到社会主义社会的转变。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(510, 3, '所谓马克思主义中国化，就是把马克思主义基本原理同中国实际和时代特征结合起来，运用马克思主义的立场、观点、方法研究和解决中国革命、建设、改革中的实际问题。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(511, 3, '1947年9月制定的《中国土地法大纲》，这是中国共产党历史上比较完备的一部土地革命纲领。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(512, 3, '毛泽东在七届三中全会上提出了“两个务必”,即务必使同志们继续地保持谦虚、谨慎、不骄、不躁的作风，务必使同志们继续保持艰苦奋斗的作风。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(513, 3, '建国初期，在资本主义工商业者中开展了反行贿、反偷税漏税、反盗骗国家财产、反偷工减料、反盗窃国家经济情报的斗争的“五反”运动。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(514, 3, '1954年9月20日，中华人民共和国第一届全国人民代表大会第一次会议通过的《中华人民共和国宪法》，是中国历史上第一部社会主义类型的宪法。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(515, 3, '1956年，我国对生产资料私有制的社会主义改造基本完成。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(516, 3, '我国“和平共处”五项基本原则是1953年12月，周恩来在接见印度政府代表团时首先提出来的。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(517, 3, '1964年10月16日，在中国西部的罗布泊试验基地，中国第一颗氢弹成功爆炸。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(518, 3, '1971年4月，应中国邀请，美国乒乓球代表团访问中国，此举打开了中美两国人民友好往来的大门，推动了中美关系的改善，被国际舆论称为“乒乓外交”。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(519, 3, '邓小平理论的主要内容是社会主义市场经济理论。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(520, 3, '土地革命战争时期，毛泽东从理论上系统分析和论证中国农村红色政权存在、发展的原因和条件的著作是《中国社会各阶级的分析》。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(521, 3, '我国改革开放的实践证明，经济特区在其发展中很好地发挥了“窗口”的作用。这里的“窗口”指的是对外政策的窗口。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(522, 3, '在我国，全国人民代表大会是国家的最高权力机关。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(523, 3, '中国特色社会主义文化建设的主要内容包括思想道德建设和教育科学文化建设。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(524, 3, '改革开放以来出现的新的社会阶层主要是个体户和私营企业主。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(525, 3, '我国外交政策的宗旨是维护世界和平，促进共同发展。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(526, 3, '在新的历史时期，统一战线的核心问题是祖国统一的问题。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(527, 3, '中国人数最多、最基本的依靠力量是农民阶级。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(528, 3, '毛泽东思想是一个内容十分丰富的科学体系，贯穿于各个组成部分的活的灵魂是群众路线。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(529, 3, '毛泽东确定的人民军队建设的最根本原则是政治工作，这是人民军队的生命线。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(530, 3, '毛泽东思想是马克思主义中国化的第一个重大理论成果。它初步形成于中国共产党创建和大革命时期。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(531, 3, '现阶段我国各族人民的共同理想是建设小康社会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(532, 3, '抗日战争时期延安整风运动的中心任务是反对主观主义以整顿学风。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(533, 3, '毛泽东思想形成的时代条件是中国沦为半殖民地半封建社会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(534, 3, '当前国际间的经济竞争实质上是产品质量和经济资源的竞争。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(535, 3, '马列主义、毛泽东思想、邓小平理论是一脉相承的统一的科学体系。因为它们的基本立场和方法是一致的。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(536, 3, '新中国成立初期，中国处于新民主主义社会，其经济成分主要是社会主义国营经济与合作社经济。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(537, 3, '邓小平提出在我国社会主义建设中，判断各方面工作是非得失的标准，归根到底看其是否有利于提高全民族的科学文化素质。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(538, 3, '“三个代表”重要思想、邓小平理论和毛泽东思想之间是继承和发展关系。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(539, 3, '2001年7月1日江泽民同志发表的《在庆祝中国共产党成立八十周年大会上的讲话》首次提出了“三个代表”的思想。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(540, 3, '我们建设党，最根本的就是要把党建设成为能够始终代表中国先进生产力发展要求、代表中国先进文化前进方向、代表中国最广大人民根本利益的党。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(541, 3, '“三个代表”重要思想是马克思主义活的灵魂。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(542, 3, '“三个代表”重要思想抓住“什么是社会主义、怎样建设社会主义”这个根本问题，深刻揭示社会主义的本质，把对社会主义的认识提高到了新的科学水平。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(543, 3, '与时俱进，是我们党坚持先进性和增强创造力的决定性因素。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(544, 3, '立党为公、执政为民是“三个代表”重要思想的本质。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(545, 3, '“三个代表”与马列主义、毛泽东思想、邓小平理论在基本立场、基本观点和基本方法上是一致的。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(546, 3, '党的十七大关于党章（修正案）决议，将科学发展观写入党章。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(547, 3, '科学发展观是在党的十六届四中全会上确立的。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(548, 3, '科学发展观，是对党的三代中央领导集体关于发展的重要思想的继承和发展，是马克思主义关于发展的世界观和方法论的集中体现。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(549, 3, '科学发展观，是立足社会主义初级阶段基本国情，总结我国发展实践，借鉴国外发展经验，适应新的发展要求提出的。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(550, 3, '党的基层组织是党全部工作和战斗力的基础，承担着把科学发展观贯彻落实到基层的重要责任。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(551, 3, '深入贯彻落实科学发展观，基础在于用马克思主义中国化最新成果武装全体人民的头脑。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(552, 3, '深入贯彻落实科学发展观，关键在于提高各级领导班子和领导干部领导科学发展能力。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(553, 3, '创新体制机制是实现科学发展的必然要求。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(554, 3, '全面发展的含义是要以经济建设为中心，全面推进经济、政治、文化建设，实现经济发展和社会全面进步。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(555, 3, '实现经济增长方式的转变，是落实科学发展观的具体体现。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(556, 3, '要把树立和落实科学发展观作为求真务实的着力点，在树立和落实科学发展观中坚持求真务实，用求真务实的作风来树立和落实科学发展观。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(557, 3, '科学发展观是中国特色社会主义理论体系的最新成果，是发展中国特色社会主义必须坚持和贯彻的重大战略思想。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(558, 3, '1978年5月，在全国范围内展开的关于真理标准问题的大讨论，重申了“实践是检验真理的惟一标准”，从根本上否定了“两个凡是”的错误方针。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(559, 3, '党的十一届三中全会，果断地停止了“以阶级斗争为纲”，提出把党和国家的工作重点转移到社会主义革命上来。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(560, 3, '中国的经济体制改革首先从农村开始，采取的主要形式是家庭联产承包责任制。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(561, 3, '1983年邓小平提出，教育要面向现代化，面向世界，面向未来。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(562, 3, '党的十二大以后，我们党对中国特色社会主义建设规律的认识不断得到深化，逐步形成了“三步走”的社会主义现代化发展战略。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(563, 3, '在世纪之交，我们党带领人民顺利实现了现代化建设的前两步战略目标，人民生活总体上实现了全面小康的历史性跨越。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(564, 3, '2006年1月1日起废止《中华人民共和国农业税条例》，取消农业税。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(565, 3, '以党的十八大为标志，我国进入了全面建成小康社会的新阶段。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(566, 3, '中国特色社会主义理论体系是马克思主义中国化的最新成果。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(567, 3, '科学发展观的第一要义是统筹兼顾。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(568, 3, '中国共产党的宗旨是全心全意为人民服务。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(569, 3, '坚持四项基本原则指坚持改革开放、坚持社会主义道路、坚持多党合作、坚持人民民主专政。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(570, 3, '党在社会主义初级阶段的基本路线的核心内容是大力发展生产力。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(571, 3, '社会主义的本质是解放生产力，发展生产力，消灭剥削，消除两极分化，最终达到共同富裕。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(572, 3, '加强思想政治建设的“三讲”是指讲学习、讲发展、讲稳定。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(573, 3, '中国共产党必须始终代表中国先进生产力的发展要求，中国先进文化的前进方向，中国最广大人民的根本利益。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(574, 3, '我国社会主义现代化事业取得了举世瞩目的巨大成就，我国已进入了发达国家的行列。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(575, 3, '现阶段我国的共同理想是把我国建设成为富强、民主、文明、和谐的社会主义现代化国家。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(576, 3, '高举中国特色社会主义伟大旗帜，最根本的就是要坚持中国特色社会主义道路、中国特色社会主义理论体系。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(577, 3, '新时期我们党坚持并丰富了党的基本理论、基本路线、基本纲领、基本经验，使中华民族大踏步赶上时代前进潮流，迎来伟大复兴的光明前景。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(578, 3, '在整个社会主义初级阶段，必须坚持公有制为主体，多种所有制经济共同发展的基本经济制度。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(579, 3, '只有社会主义才能救中国，只有中国特色社会主义才能发展中国。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(580, 3, '社会和谐是中国特色社会主义的本质属性，是国家富强、民族振兴、人民幸福的重要保证。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(581, 3, '当代中国最基本的国情是我国正处于并将长期处于社会主义初级阶段。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(582, 3, '科学发展观第一次比较系统地回答了什么是社会主义、如何建设社会主义的问题，开拓了马克思主义中国化新境界。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(583, 3, '新时期最鲜明的特点是改革开放，最显著的成就是快速发展，最突出的标志是与时俱进。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(584, 3, '党的领导主要是政治、思想和群众工作的领导。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(585, 3, '2010年我国国内生产总值跃居世界第二位，我国国际地位和影响力显著提高。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1372247469, 1, '', 0, 0, 1),
(586, 3, '科学发展观是马克思主义关于发展的世界观和方法论的集中体现。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(587, 3, '发展中国特色社会主义必须坚持和贯彻科学发展观。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(588, 3, '中国共产党在领导社会主义事业中，必须坚持以精神文明建设为中心。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(589, 3, '社会主义核心价值体系的核心是倡导社会主义荣辱观。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(590, 3, '社会主义生态文明的理念是尊重自然、顺应自然、保护自然。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(591, 3, '党的宗教工作基本方针是：全面贯彻党的宗教信仰自由政策，依法管理宗教事务，坚持独立自主自办的原则，积极引导宗教与共产主义理想相适应。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(592, 3, '党按照和平共处五项原则，发展同各国共产党和其他政党的关系。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(593, 3, '由于国内的因素和国际的影响，阶级斗争还在一定范围内长期存在，在某种条件下还有可能激化，但已经不是主要矛盾。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(594, 3, '在党的纪律面前人人平等。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(595, 3, '只要承认党的纲领和章程，执行党的决议和按期交纳党费的，就可以申请加入中国共产党。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(596, 3, '所有共产党员都不得谋求任何个人利益。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(597, 3, '党员必须执行党的决定，服从党组织负责人安排，积极完成党的任务。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(598, 3, '党员有权向党的上级组织直至中央提出请求、申诉和控告，并要求有关组织给以负责的答复。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(599, 3, '预备党员无权对党的工作提出建议和倡议。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(600, 3, '发展党员，必须经过党的支部，坚持个别吸收的原则。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(601, 3, '普通党员无权阅读党的有关文件。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(602, 3, '预备党员有权在党的会议上有根据地批评党的任何组织和任何党员。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(603, 3, '在党组织讨论决定对党员的党纪处分或作出鉴定时，本人无权参加和进行申辩，其他党员可以为他作证和辩护。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(604, 3, '党员有行使表决权、选举权，有被选举权。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(605, 3, '党的支部委员会对申请入党的人，只要征求党员的意见，进行严格的审查，认为合格后再提交支部大会讨论。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(606, 3, '党员的党龄，从预备期满转为正式党员之日算起。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(607, 3, '党员对党的决议和政策如有不同意见，可以不决执行。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(608, 3, '上级党组织在批准申请人入党以前，要派人同他谈话，作进一步的了解，并帮助他提高对党的认识。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(609, 3, '马克思主义的生命力，就是在于它在实践中能够不断创新。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(610, 3, '在组织上先入党，在思想上后入党。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(611, 3, '吸收新社会阶层中的先进分子入党，就意味着要搞全民党。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(612, 3, '党章总纲指出:改革是我们党执政兴国的第一要务。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(613, 3, '申请入党的人在年龄上必须具备年满18岁的条件。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(614, 3, '党员在留党察看期间仍享有表决权、选举权和被选举权。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(615, 3, '党的任何一级组织直至中央都无权剥夺党员的权利。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(616, 3, '中国共产党在领导社会主义事业中，必须坚持以社会建设为中心，其他各项工作都服从和服务于这个中心。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(617, 3, '党的领导主要是政治、思想和群众工作的领导。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(618, 3, '我们要毫不动摇地巩固和发展公有制经济，毫不动摇地鼓励、支持、引导非公有制经济发展。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(619, 3, '党的各级组织的报刊和其他宣传工具，必须宣传党的路线、方针、政策和决议。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(620, 3, '党员领导干部必须参加党委、党组的民主生活会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(621, 3, '选举党的各级代表大会的代表和委员会必须先采用差额选举办法进行预选，产生候选人名单，然后进行正式选举。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(622, 3, '在党的地方各级代表大会和基层代表大会闭会期间，上级党的组织认为有必要时，可以调动或者指派下级党组织的负责人。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(623, 3, '党的中央和地方各级委员会可以派出代表机关。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(624, 3, '党的各级领导机关，无权干预下级组织的工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(625, 3, '下级组织如果认为上级组织的决定不符合本地区、本部门的实际情况，可以请求改变；如果上级组织坚持原决定，下级组织必须执行，并不得公开发表不同意见，不得向再上一级组织报告。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(626, 3, '党组织讨论决定所有问题，都应当按照少数服从多数的原则，要进行表决。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(627, 3, '党组织按照少数服从多数的原则讨论决定问题，不应该考虑少数人的意见。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(628, 3, '党的最高领导机关是党的全国代表大会和它所产生的中央委员会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(629, 3, '党的全国代表大会每五年举行一次，不得提前或延期举行。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(630, 3, '党的中央委员会每届任期五年。全国代表大会可以提前或延期举行，而党的中央委员会的任期不变。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(631, 3, '中央委员会总书记负责召集中央政治局会议和中央政治局常务委员会会议，并主持中央书记处的工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(632, 3, '党的地方各级领导机关，是党的地方各级代表大会和它们所产生的委员会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(633, 3, '党的各级委员会向同级的常委会负责并报告工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(634, 3, '中国人民解放军总政治部负责管理军队中党的工作和政治工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(635, 3, '每届中央委员会产生的中央领导机构和中央领导人，在下届全国代表大会开会期间，继续主持党的经常工作，直到下届中央委员会产生新的中央领导机构和中央领导人为止。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(636, 3, '党的地方各级代表大会，在特殊情况下，经上一级委员会批准，可以提前或延期举行。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(637, 3, '党的地方各级委员会全体会议定期向常务委员会报告工作，接受监督。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(638, 3, '党的地方各级委员会的委员和候补委员的名额，由同一级常务委员会决定。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(639, 3, '党的地方各级代表大会如提前或延期举行，由它选举的委员会的任期相应地改变。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(640, 3, '总支部委员会和支部委员会由党员大会选举产生或代表大会选举产生。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(641, 3, '基层委员会由党员大会或代表大会选举产生。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(642, 3, '国有企业和集体企业中党的基层组织，发挥政治核心作用。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(643, 3, '实行行政领导人负责制的事业单位中党的基层组织，发挥政治核心作用。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(644, 3, '各级党和国家机关中党的基层组织，领导本单位的业务工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(645, 3, '各级党和国家机关中党的基层组织，不领导本单位的业务工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(646, 3, '党的各级领导干部要树立正确政绩观，做出经得起实践、人民、历史检验的实绩。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(647, 3, '党的纪律是党的领导干部和全体党员必须遵守的行为规则。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(648, 3, '严重触犯刑律的党员必须一、给予严重警告。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(649, 3, '党的各级领导干部，无论是由民主选举产生的，或是由领导机关任命的，他们的职务都不是终身的，都可以变动或解除。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(650, 3, '撤销党内职务是党内的最高处分。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(651, 3, '党内严格禁止用违反党章和国家法律的手段对待党员，严格禁止打击报复和诬告陷害。违反这些规定的组织或个人必须受到党的纪律和国家法律的追究。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(652, 3, '党的各级纪律检查委员会每届任期和同级党的委员会不同。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(653, 3, '对党员的纪律处分，必须经过支部大会讨论决定。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(654, 3, '县级和县级以上各级党的委员会和纪律检查委员会无权直接决定给党员以纪律处分。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(655, 3, '党组织如果在维护党的纪律方面失职，必须受到追究。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(656, 3, '党的中央纪律检查委员会在党的中央委员会领导下进行工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(657, 3, '党的地方各级纪律检查委员会和基层纪律检查委员会在上级纪律检查委员会双重领导下进行工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(658, 3, '党员在留党察看期间没有表决权、选举权，有被选举权。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(659, 3, '党的中央纪律检查委员会常务委员会和书记、副书记，由中央纪律检查委员会全体会议选举产生。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(660, 3, '党的地方各级纪律检查委员会常务委员会和书记、副书记，由同级党的委员会选举产生。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(661, 3, '党的基层委员会只能设立纪律检查委员会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(662, 3, '党的基层委员会可以设立纪律检查委员会，也可以设立纪律检查委员。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(663, 3, '对下属单位实行集中统一领导的国家工作部门可以建立党委。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(664, 3, '党的总支部委员会和支部委员会设纪律检查委员。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(665, 3, '党的总支部委员会和支部委员会可以设立纪律检查委员会，也可以设立纪律检查委员。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(666, 3, '各级纪律检查委员会对党员领导干部行使权力进行监督，不受理党员的控告和申诉。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(667, 3, '各级纪律检查委员可以决定或取消对党员的处分。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(668, 3, '各级纪律检查委员会发现同级党的委员会委员有违犯党的纪律的行为，可以先进行初步核实，如果需要立案检查的，必须先报同级党的委员会批准，然后报上一级纪律检查委员会批准。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(669, 3, '各级纪律检查委员会发现同级党的委员会常务委员有违犯党的纪律的行为，可以先进行初步核实，如果需要立案检查的，应当报同级党的委员会批准，然后报上一级纪律检查委员会批准。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(670, 3, '上级纪律检查委员会有权检查下级纪律检查委员会的工作，但无权批准和改变下级纪律检查委员会对于案件所作的决定。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(671, 3, '党组发挥领导核心作用。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(672, 3, '党组设书记，可以不设副书记。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(673, 3, '党组是上级党的委员会向非党组织的派出机关。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(674, 3, '新世纪新阶段，经济和社会发展的战略目标是，到建党一百年时，人均国内生产总值达到中等发达国家水平，基本实现现代化。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(675, 3, '敌我矛盾和人民内部矛盾是两类不同性质的矛盾。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(676, 3, '建设社会主义生态文明的发展道路是生产发展、生活富裕、生态良好。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(677, 3, '我国新时期最鲜明的特点是与时俱进。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(678, 3, '坚持民主集中制，必须实行正确的集中，保证全党的团结统一和行动一致，保证党的决定得到迅速有效的贯彻执行。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(679, 3, '工会，农会，作协，政协，不可以成立党组。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(680, 3, '党组的职责是代表上级党委指导本机关和直属组织内党的工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(681, 3, '每个党员，不论职务高低，都必须编入党的一个支部、小组或其他特定组织。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(682, 3, '企业事业单位的团委员会书记，可以列席同级党的委员会和常务委员会的会议。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(683, 3, '非党组织有国家机关、人民团体、经济组织、文化组织等。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(684, 3, '国有企业和集体企业中党的基层组织，围绕企业党组织建设开展工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(685, 3, '决定或批准开除党员党籍，应当采取十分慎重的态度。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(686, 3, '违反党章和国家法律的组织或个人必须受到党的纪律的追究。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(687, 3, '处分党员，应当本着惩前毖后、治病救人的精神。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(688, 3, '党的干部是党的事业的骨干，是人民的领导。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(689, 3, '党组织对党员作出处分决定，处分决定所依据的事实材料和处分决定必须同本人见面。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(690, 3, '非公有制经济组织中党的基层组织，贯彻党的方针政策，引导和监督企业遵守国家的法律法规和党章党规。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(691, 3, '党的地方各级代表大会选举同级党的委员会和同级党的纪律检查委员会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(692, 3, '党的地方各级委员会全体会议，选举同级党的委员会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(693, 3, '党的地方各级代表大会选举地方各级委员会常务委员会和书记、副书记。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(694, 3, '下级组织对上级组织的决定，不得公开发表不同意见。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(695, 3, '职务高的党员能个人决定党内重大问题。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(696, 3, '预备党员必须面向党旗进行入党宣誓。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(697, 3, '任何组织和个人不得以任何方式强迫选举人选举或不选举某个人。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(698, 3, '党的各级代表大会代表实行连任制。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(699, 3, '党员的党龄，从成为预备党员之日算起。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(700, 3, '党组织对预备党员应当认真教育和考察。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(701, 3, '党员个人不能代表党组织发表重要主张。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(702, 3, '预备党员在转为正式党员之前，可以不遵守党的纪律，不执行党的决定。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(703, 3, '在党组织讨论决定对党员作出党纪处分时，预备党员可以为他作证和辩护。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(704, 3, '党员在留党察看期间，有参加党的有关会议的权利。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(705, 3, '党员在留党察看期间，可以向群众宣传党的主张，但不能向党反映群众的意见和要求。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:6:"党章";}}', 1372247469, 1, '', 0, 0, 1),
(706, 3, '禁止党员领导干部个人经商、办企业，但对党员领导干部借他人名义经商、办企业则未作严格要求。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247469, 1, '', 0, 0, 1),
(707, 3, '禁止党员领导干部在经济实体、社会团体等单位中兼职或者兼职取酬，以及从事中介活动。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247469, 1, '', 0, 0, 1),
(708, 3, '禁止党员领导干部利用职务便利私自干预下级或者原任职地区、单位干部选拔任用工作。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247469, 1, '', 0, 0, 1),
(709, 3, '禁止党员领导干部为配偶、子女及其配偶以及其他亲属经商、办企业提供便利条件，而对党员领导干部之间利用职权相互为对方配偶、子女及其配偶以及其他亲属经商、办企业提供便利条件则并无明文限制。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247469, 1, '', 0, 0, 1),
(710, 3, '禁止党员领导干部在公务活动中提供或者接受超过规定标准的接待，或者超过规定标准报销招待费、差旅费等相关费用。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247469, 1, '', 0, 0, 1),
(711, 3, '禁止党员领导干部大办婚丧喜庆事宜，造成不良影响，或者借机敛财。其中，用私款操办的不受禁止。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247469, 1, '', 0, 0, 1),
(712, 3, '党员领导干部不准借用公款、公物或者将公款、公物借给他人。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247469, 1, '', 0, 0, 1),
(713, 3, '党员领导干部不准挪用或者拆借社会保障基金、住房公积金等公共资金或者其他财政资金。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247469, 0, '', 0, 0, 1),
(714, 3, '党员领导干部离职或者退休二年后,可以接受原任职务管辖的地区和业务范围内的民营企业、外商投资企业和中介机构的聘任。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247469, 0, '', 0, 0, 1),
(715, 3, '党员领导干部不准利用知悉的内幕信息谋取利益。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:6:"时政";}}', 1372247469, 1, '', 0, 0, 1),
(716, 3, '解放和发展社会生产力是改革开放和社会主义现代化建设的根本目的。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(717, 3, '加强社会建设，必须以保障和改善民生为重点。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(718, 3, '加强文化建设是社会和谐稳定的重要保证。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(719, 3, '2012年是全面贯彻落实党的十八大精神和实施《中原经济区规划》的开局之年，是为全面建成小康社会奠定坚实基础的重要一年。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(720, 3, '用领导方式转变加快发展方式转变学习交流和创新实践深入开展，“两转两提”扎实推进，科学发展意识和能力显著增强，务实重干作风持续弘扬，合力攻坚氛围更加浓厚，推动中原经济区发展已上升为国家战略。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(721, 3, '新型农村社区规划建设应按照“分类指导、科学规划、产城融合、群众自愿、量力而行”的指导思想,遵循发展性、相融性、多样性和共享性等原则。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(722, 3, '新型农村社区规划建设应按照“分类指导、科学规划、产城融合、群众自愿、量力而行”的指导思想,遵循发展性、相融性、多样性和共享性等原则。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(723, 3, '经济实力和竞争力是国家富强、民族振兴的重要标志。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(724, 3, '让人民享有健康丰富的精神文化生活，是全面建成小康社会的重要条件。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(725, 3, '新型农村社区建设项目(包括其配套的基础设施、公共设施建设项目和其他各类建筑工程项目)建设项目,除国家、省明文规定的收费项目外各级部门不得收取任何费用。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(726, 3, '要坚持深入人民群众的创作导向，提高文化产品质量，为人民提供更好更多精神食粮。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(727, 3, '弘扬中华传统美德是社会主义道德建设的基本任务。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(728, 3, '新型农村社区项目应按审查通过的规划方案严格实施,各级规划管理部门负责规划方案实施的监督管理,应指派村镇规划协管员,进行技术服务和技术监督。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(729, 3, '按照“共创百年社区，共建宜居城市，共享美好生活”的要求，辉县以小区建设和旧城改造为突破口，全面掀起了新一轮城市建设高潮。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(730, 3, '要坚持把经济效益放在首位，社会效益和经济效益相统一，推动文化事业全面繁荣、文化产业快速发展。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(731, 3, '中国特色社会主义的内在要求是社会和谐。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(732, 3, '中国特色社会主义的根本任务是解放和发展社会生产力。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(733, 3, '社会公平保障体系的主要内容包括权利公平、规则公平和机会公平。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(734, 3, '2020年国内产总值和城乡居民人均收入要比2010年都要翻一番。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(735, 3, '加强社会建设必须以促进公平为重点。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(736, 3, '建设美丽中国实现中华民族永续发展是社会建设的必然要求。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(737, 3, '社会主义核心价值体系是中国特色社会主义的兴国之魂。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(738, 3, '长期以来我党坚持发扬理论联系实际、密切联系群众和批评与自我批评相结合三大优良作风。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(739, 3, '十七大以来的5年，城乡基本医疗卫生制度基本建立。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(740, 3, '党惩治与预防腐败方针是标本兼治、综合治理、惩防并举、注重预防。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(741, 3, '先进性是马克思主义政党的生命所系，力量所在，要靠千千万万高素质的党员来体现。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(742, 3, '解放思想、实事求是、与时俱进、求真务实是科学发展观最鲜明的精神实质。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(743, 3, '中国特色社会主义理论体系包括毛泽东思想、邓小平理论、三个代表重要思想以及科学发展观。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(744, 3, '加强党的执政能力建设的核心是廉政建设。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(745, 3, '大会明确2030年全面建成小康社会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(746, 3, '科学发展观回答了进行什么样的发展，怎样发展的问题。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(747, 3, '三个代表重要思想回答了什么是社会主义、怎样建设社会主义的问题。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(748, 3, '我国水电、风电装机位居世界第一。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(749, 3, '过去5年，年均国内生产总值增速超过9%。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(750, 3, '国家财政性教育经费支出，2012年占国内生产总值比例首次达到4%。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(751, 3, '5年来，我国进出口总额从世界第三位提升到第二位，其中出口额跃居世界第一位。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(752, 3, '2013年是实施“十一五”规划承前启后的关键一年。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(753, 3, '五年来，国内生产总值从26、6万亿元增加到51、9万亿元，跃升到世界第二位。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(754, 3, '我们坚持在工业化、信息化、城镇化深入发展中同步推进农业规模化。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(755, 3, '义务教育学校实施绩效工资，所有大学实行师范生免费教育，加强了农村教师队伍建设。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(756, 3, '企业退休人员基本养老金从2004年人均每月700元提高到现在的1721元。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(757, 3, '国民健康水平进一步提高，人均预期寿命达到78岁。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(758, 3, '推动两岸关系实现重大转折，两岸直接双向“三通”全面实现。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(759, 3, '国民受教育程度大幅提升，15岁以上人口平均受教育年限达到10年以上。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(760, 3, '邓小平理论首要解决的问题是——什么是社会主义，怎样建设社会主义。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(761, 3, '近些年是我国农业发展最快、农村面貌变化最大、农民得到实惠最多的时期。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(762, 3, '我们要全面正确贯彻党的民族政策，坚持和完善民族区域自治制度，巩固和发展平等团结互助和谐的社会主义民族关系。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(763, 3, '坚持反对腐败，加强廉政建设，从制度上改变权力过分集中而又得不到制约的状况，做到干部清正、政府清廉、政治清明。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(764, 3, '&lt;p&gt;目前我国年度财政性教育经费支出总额已经超过3万亿元。&lt;/p&gt;', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:19:"请修改知识点2";}}', 1372247469, 1, '', 0, 0, 1),
(765, 3, '文化是民族的血脉和人民的精神家园。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(766, 3, '&lt;p&gt;推动诚信体系建设，以社会诚信带动商务诚信和政务诚信，形成良好的社会风尚。&lt;/p&gt;', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}', 1372247469, 1, '', 0, 0, 1),
(767, 3, '坚持转变政府职能，推进政企分开、政资分开、政事分开、政社分开，建设人民满意的服务型政府。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(768, 3, '坚持厉行勤俭节约，反对铺张浪费，严格贯彻中央八条规定。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(769, 3, '&lt;p&gt;收入分配制度是经济社会发展中一项根本性、基础性的制度，是社会主义市场经济体制的重要基石。&lt;/p&gt;', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:19:"请修改知识点3";}}', 1372247469, 1, '', 0, 0, 1),
(770, 3, '&lt;p&gt;健全全民医保体系，建立重特大疾病保障和救助机制，全面开展儿童白血病等30种重大疾病保障试点工作。&lt;/p&gt;', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"4";s:5:"knows";s:19:"请修改知识点4";}}', 1372247469, 1, '', 0, 0, 1),
(771, 4, '&lt;p&gt;这是一个问答题&lt;/p&gt;', 2, 'redrangon', '', '', 4, '&lt;p&gt;写什么都对&lt;/p&gt;', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:6:"党史";}}', 1373552716, 1, '', 0, 0, 1),
(772, 1, '&lt;p&gt;测试子试题&lt;/p&gt;', 54, 'peadmin', '', '', 4, 'A', '', 'a:0:{}', 1376419161, 1, '', 1, 2, 0),
(773, 4, '&lt;p&gt;描述抗战史著名战役和时间&lt;/p&gt;', 54, 'peadmin', '', '', 4, '&lt;p&gt;描述抗战史著名战役和时间&lt;/p&gt;', '', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:9:"抗战史";}}', 1376928488, 1, '', 0, 0, 3),
(8445, 1, '&lt;p&gt;asdsadsadasd&lt;/p&gt;', 54, 'peadmin', '', '&lt;p&gt;sadasd&lt;/p&gt;', 4, 'A', '&lt;p&gt;sadasdasdasd&lt;/p&gt;', 'a:0:{}', 1414127000, 1, '', 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questype`
--

CREATE TABLE IF NOT EXISTS `x2_questype` (
  `questid` int(11) NOT NULL AUTO_INCREMENT,
  `questype` varchar(60) NOT NULL,
  `questsort` int(1) NOT NULL,
  `questchoice` int(1) NOT NULL,
  PRIMARY KEY (`questid`),
  KEY `questchoice` (`questchoice`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `x2_questype`
--

INSERT INTO `x2_questype` (`questid`, `questype`, `questsort`, `questchoice`) VALUES
(1, '单选题', 0, 1),
(2, '多选题', 0, 2),
(3, '判断题', 0, 4),
(4, '问答题', 1, 1),
(5, '填空题', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_record`
--

CREATE TABLE IF NOT EXISTS `x2_record` (
  `recordid` int(11) NOT NULL AUTO_INCREMENT,
  `recordquestionid` int(11) NOT NULL,
  `recorduserid` int(11) NOT NULL,
  `recordquestion` text NOT NULL,
  `recordtime` int(11) NOT NULL,
  `recordsubjectid` int(11) NOT NULL,
  `recordknowsid` int(11) NOT NULL,
  `recordquestype` int(11) NOT NULL,
  `recordexamid` int(11) NOT NULL,
  PRIMARY KEY (`recordid`),
  KEY `recordquestionid` (`recordquestionid`,`recorduserid`,`recordtime`),
  KEY `recordsubjectid` (`recordsubjectid`,`recordknowsid`,`recordquestype`),
  KEY `recordexamid` (`recordexamid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_reply`
--

CREATE TABLE IF NOT EXISTS `x2_reply` (
  `replyid` int(11) NOT NULL AUTO_INCREMENT,
  `replyuserid` int(11) NOT NULL,
  `replyusername` varchar(120) NOT NULL,
  `replycommentid` int(11) NOT NULL,
  `replytime` int(11) NOT NULL,
  `replycontent` text NOT NULL,
  PRIMARY KEY (`replyid`),
  KEY `replyuserid` (`replyuserid`,`replycommentid`,`replytime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_sections`
--

CREATE TABLE IF NOT EXISTS `x2_sections` (
  `sectionid` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(120) NOT NULL,
  `sectionsubjectid` int(11) NOT NULL,
  `sectiondescribe` text NOT NULL,
  PRIMARY KEY (`sectionid`),
  KEY `section` (`section`),
  KEY `sectionsubjectid` (`sectionsubjectid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_sections`
--

INSERT INTO `x2_sections` (`sectionid`, `section`, `sectionsubjectid`, `sectiondescribe`) VALUES
(1, '请修改科目章节', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_seminar`
--

CREATE TABLE IF NOT EXISTS `x2_seminar` (
  `seminarid` int(11) NOT NULL AUTO_INCREMENT,
  `seminartitle` varchar(240) NOT NULL,
  `seminarcatid` int(11) NOT NULL,
  `seminarthumb` varchar(240) NOT NULL,
  `seminargallery` tinytext NOT NULL,
  `seminartpl` varchar(120) NOT NULL,
  `seminaruserid` int(11) NOT NULL,
  `seminarusername` varchar(120) NOT NULL,
  `seminardescribe` text NOT NULL,
  `seminartime` int(11) NOT NULL,
  `seminarstatus` int(1) NOT NULL,
  `seminarsequence` int(11) NOT NULL,
  PRIMARY KEY (`seminarid`),
  KEY `seminarcatid` (`seminarcatid`),
  KEY `seminarstatus` (`seminarstatus`),
  KEY `seminartime` (`seminartime`),
  KEY `seminarsequence` (`seminarsequence`),
  KEY `seminaruserid` (`seminaruserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_session`
--

CREATE TABLE IF NOT EXISTS `x2_session` (
  `sessionid` varchar(32) NOT NULL,
  `sessionuserid` int(11) NOT NULL,
  `sessionusername` varchar(120) NOT NULL,
  `sessionpassword` varchar(32) NOT NULL,
  `sessionip` varchar(24) NOT NULL,
  `sessionmanage` tinyint(1) NOT NULL DEFAULT '0',
  `sessiongroupid` tinyint(4) NOT NULL,
  `sessioncurrent` varchar(16) NOT NULL,
  `sessionrandcode` char(6) NOT NULL,
  `sessionlogintime` int(11) NOT NULL,
  `sessiontimelimit` int(11) NOT NULL,
  `sessionlasttime` int(11) NOT NULL,
  `sessionmaster` int(1) NOT NULL,
  PRIMARY KEY (`sessionid`),
  KEY `sessionlasttime` (`sessionlasttime`),
  KEY `sessioncurrent` (`sessioncurrent`),
  KEY `sessionmaster` (`sessionmaster`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_session`
--

INSERT INTO `x2_session` (`sessionid`, `sessionuserid`, `sessionusername`, `sessionpassword`, `sessionip`, `sessionmanage`, `sessiongroupid`, `sessioncurrent`, `sessionrandcode`, `sessionlogintime`, `sessiontimelimit`, `sessionlasttime`, `sessionmaster`) VALUES
('pfec2bv3nqbompgvsts67f2na5', 0, '', '', '::1', 0, 0, '', '', 0, 0, 1446278693, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_special`
--

CREATE TABLE IF NOT EXISTS `x2_special` (
  `specialid` int(11) NOT NULL AUTO_INCREMENT,
  `contentspecialid` int(11) NOT NULL,
  `contentcatid` int(11) NOT NULL,
  `contentmoduleid` int(11) NOT NULL,
  `contentuserid` int(11) NOT NULL,
  `contentusername` varchar(48) NOT NULL,
  `contenttitle` varchar(240) NOT NULL,
  `contentthumb` varchar(120) NOT NULL,
  `contentlink` varchar(240) NOT NULL,
  `contentinputtime` int(11) NOT NULL,
  `contentmodifytime` int(11) NOT NULL,
  `contentsequence` int(4) NOT NULL,
  `contentdescribe` text NOT NULL,
  `contentinfo` text NOT NULL,
  `contentstatus` int(2) NOT NULL,
  `contenttemplate` varchar(120) NOT NULL,
  `contenttext` mediumtext NOT NULL,
  PRIMARY KEY (`specialid`),
  KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`),
  KEY `contentmoduleid` (`contentmoduleid`),
  KEY `contentcatid` (`contentcatid`),
  KEY `contentstatus` (`contentstatus`),
  KEY `contentspecialid` (`contentspecialid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_specialsort`
--

CREATE TABLE IF NOT EXISTS `x2_specialsort` (
  `sortid` int(11) NOT NULL AUTO_INCREMENT,
  `sorttitle` varchar(240) NOT NULL,
  `sortthumb` varchar(120) NOT NULL,
  `sorttpl` varchar(24) NOT NULL,
  `sortseminarid` int(11) NOT NULL,
  `sortsequence` int(11) NOT NULL,
  `sortdescribe` text NOT NULL,
  PRIMARY KEY (`sortid`),
  KEY `sortseminarid` (`sortseminarid`,`sortsequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_subject`
--

CREATE TABLE IF NOT EXISTS `x2_subject` (
  `subjectid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(120) NOT NULL,
  `subjectsetting` text NOT NULL,
  PRIMARY KEY (`subjectid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `x2_subject`
--

INSERT INTO `x2_subject` (`subjectid`, `subject`, `subjectsetting`) VALUES
(1, '计算机', 'a:1:{s:9:"questypes";a:3:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";}}'),
(2, '金融', 'a:1:{s:9:"questypes";a:5:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";}}'),
(3, '高校联合模拟', 'a:1:{s:9:"questypes";a:5:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";}}'),
(4, '英语', 'a:1:{s:9:"questypes";a:5:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";}}'),
(5, '政治', 'a:1:{s:9:"questypes";a:5:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";}}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_user`
--

CREATE TABLE IF NOT EXISTS `x2_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `useremail` varchar(60) NOT NULL,
  `userpassword` char(32) NOT NULL,
  `usercoin` int(11) NOT NULL,
  `userregip` varchar(24) NOT NULL,
  `userregtime` int(11) NOT NULL,
  `userlogtime` int(11) NOT NULL,
  `usergroupid` tinyint(4) NOT NULL,
  `usermoduleid` int(11) NOT NULL,
  `manager_apps` varchar(120) NOT NULL,
  `photo` varchar(120) NOT NULL,
  `usertruename` varchar(24) NOT NULL,
  `normal_favor` varchar(250) NOT NULL,
  `teacher_subjects` text NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`),
  KEY `username` (`username`),
  KEY `module` (`usercoin`),
  KEY `userregtime` (`userregtime`),
  KEY `usermoduleid` (`usermoduleid`),
  KEY `userlogtime` (`userlogtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `x2_user`
--

INSERT INTO `x2_user` (`userid`, `username`, `useremail`, `userpassword`, `usercoin`, `userregip`, `userregtime`, `userlogtime`, `usergroupid`, `usermoduleid`, `manager_apps`, `photo`, `usertruename`, `normal_favor`, `teacher_subjects`) VALUES
(1, 'peadmin', 'pe@163.com', '244153a2599be7685c32d2281f57ae67', 761, '127.0.0.1', 1373793691, 0, 1, 0, 'content', 'localhost/kaoshi/files/attach/files/content/head/1.png', 'test', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_user_group`
--

CREATE TABLE IF NOT EXISTS `x2_user_group` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL,
  `groupmoduleid` tinyint(4) NOT NULL,
  `groupdescribe` tinytext NOT NULL,
  `groupright` text NOT NULL,
  `groupmoduledefault` int(1) NOT NULL,
  `groupdefault` int(1) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `groupname` (`groupname`,`groupmoduleid`),
  KEY `groupmoduledefault` (`groupmoduledefault`),
  KEY `groupdefault` (`groupdefault`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `x2_user_group`
--

INSERT INTO `x2_user_group` (`groupid`, `groupname`, `groupmoduleid`, `groupdescribe`, `groupright`, `groupmoduledefault`, `groupdefault`) VALUES
(1, '管理员', 1, '管理员', '', 1, 0),
(8, '普通用户', 9, '普通用户', '', 0, 1),
(9, '教师', 12, '', '', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
