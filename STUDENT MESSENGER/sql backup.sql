-- MySQL dump 10.9
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	4.1.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `a310`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `a310` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `a310`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL default '',
  `password` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`username`),
  UNIQUE KEY `id` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Dumping data for table `admin`
--


/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
LOCK TABLES `admin` WRITE;
INSERT INTO `admin` VALUES ('admin','admin');
UNLOCK TABLES;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `sender_id` varchar(15) NOT NULL default '',
  `receiver_id` varchar(15) NOT NULL default '',
  `msg` varchar(200) default NULL,
  `msgtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--


/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
LOCK TABLES `chat` WRITE;
INSERT INTO `chat` VALUES ('Dhanush','Beeresh','well','2019-03-27 18:08:40'),('Dhanush','Beeresh','hw r u','2019-03-27 18:08:29'),('Beeresh','rajendra','What are you doing??','2019-03-27 19:12:08'),('Dhanush','Beeresh','hai','2019-03-27 18:08:05'),('Dhanush','Beeresh','what images??','2019-03-27 18:09:21'),('Beeresh','rajendra','hi i got your msg','2019-03-27 19:12:01'),('Dhanush','Beeresh','k.....bye i will do that.','2019-03-27 18:11:31'),('Beeresh','haribabu','of course!!','2019-03-27 19:27:12'),('Beeresh','haribabu','hi','2019-03-27 19:26:22'),('Beeresh','sumo','doing..','2019-03-27 19:28:36'),('Beeresh','sumo','take the screen shots','2019-03-27 19:29:18');
UNLOCK TABLES;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `user_id` varchar(15) default NULL,
  `contact_id` varchar(15) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--


/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
LOCK TABLES `contacts` WRITE;
INSERT INTO `contacts` VALUES ('sumo','Beeresh'),('Dhanush','Beeresh'),('rajendra','Beeresh'),('haribabu','Beeresh'),('haribabu','sumo'),('sumo','haribabu'),('harirocks','Beeresh'),('harirocks','hemanth_kona'),('Beeresh','sumo'),('Beeresh','haribabu'),('Beeresh','Dhanush'),('Beeresh','rajendra'),('rajendra','sumo'),('rajendra','rajendra'),('rajendra','haribabu');
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;



-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  'id' int(10) NOT NULL auto_increment,
  `user_id` varchar(15) NOT NULL default '',
  'action' varchar(15) NOT NULL default '',
  `last_login_time` datetime default NULL,
  
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--


/*!40000 ALTER TABLE `history` DISABLE KEYS */;
LOCK TABLES `history` WRITE;
INSERT INTO `history` VALUES();

UNLOCK TABLES;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL auto_increment,
  `receiver_id` varchar(15) NOT NULL default '',
  `sender_id` varchar(15) NOT NULL default '',
  `msg_read` tinyint(1) default '0',
  `msg_sub` varchar(100) default NULL,
  `msg_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `msg_body` blob,
  PRIMARY KEY  (`msg_id`),
  KEY `receiver_id` (`receiver_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--


/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
LOCK TABLES `messages` WRITE;
INSERT INTO `messages` VALUES (38,'Beeresh','sumo',0,'hai','2019-03-27 17:36:51','shajsj'),(28,'harirocks','hemanth_kona',0,'hai','2019-03-26 16:01:51','hello i love mit'),(29,'harirocks','harirocks',0,'wwww','2019-03-26 16:03:56','werrewerretfer'),(30,'hemanth_kona','haribabu',0,'asdsdfds','2019-03-26 16:13:31','dsfsdfsdf'),(39,'Dhanush','Beeresh',0,'come to online','2019-03-27 17:49:58','come to online........'),(35,'sumo','haribabu',0,'jj','2019-03-27 14:41:50','ksdl'),(36,'Beeresh','sumo',0,'hai','2019-03-27 15:04:23','today is the day'),(37,'sumo','haribabu',0,'gggfd','2019-03-27 16:18:39','fgfd'),(33,'Beeresh','rrrrr',0,'hai','2019-03-27 13:05:19','where is the replay'),(34,'sumo','Beeresh',0,'subject','2019-03-27 13:11:20','ssssssssssssss'),(40,'Beeresh','rajendra',0,'hai','2019-03-27 19:07:29','\r\nour project very well congratulations to our developers');
UNLOCK TABLES;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `student_id` varchar(15) default NULL,
  `reason_text` text,
  `reporter_id` varchar(15) default NULL,
  `rid` int(11) NOT NULL auto_increment,
  `subject` varchar(50) default NULL,
  PRIMARY KEY  (`rid`),
  KEY `student_id` (`student_id`),
  KEY `reporter_id` (`reporter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--


/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
LOCK TABLES `reports` WRITE;
INSERT INTO `reports` VALUES ('haribabu','aasaaa','sumo',17,'sss'),('Beeresh','d','sumo',18,'d'),('haribabu','wreewe3232323','sumo',22,'asa'),('Beeresh','asasaasasaaaaaa','sumo',21,'assas'),('sumo','ssssssssssssssssss','Beeresh',23,'sdfss');
UNLOCK TABLES;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;

-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` varchar(15) NOT NULL default '',
  `password` varchar(20) NOT NULL default '',
  `fname` varchar(15) NOT NULL default '',
  `lname` varchar(15) NOT NULL default '',
  `address` varchar(30) default NULL,
  `state` varchar(20) default NULL,
  `country` varchar(20) default NULL,
  `zipcode` int(11) NOT NULL default '0',
  `s_branch` varchar(5) NOT NULL default '',
  `sex` varchar(6) NOT NULL default '',
  `dob` date NOT NULL default '0000-00-00',
  `status` int(11) default '0',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--


/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES ('haribabu','12345','hari','babu','mandya','karnataka','ind',56465,'cse','','0000-00-00',0),('sumo','2345','sumanth','gowda','mysore','karnataka','india',56465,'cse','','0000-00-00',0),('Dhanush','Dhanush','Dhanush','kumar','hd kote','karnataka','india',12,'it','male','1989-12-07',1),('chaitu','123456','chaitu','kumar','2134564y dfcds','karnataka','india',3546745,'ew454','male','1990-03-27',1),('nani','nani','nani','babu','madhur','karnataka','india',123,'cse','male','1990-05-06',1),('rajendra','raju0030','rajendra prasad','banavathu','pothana pallichatrai(md), kr','karnataka','india',12,'cse','male','1987-05-20',0),('hemanth_kona','123','hemanth','kona','sdsd','Assam','india',2222,'cs','male','1990-02-28',1),('Beeresh','123','Beeresh','gowda','Moleyur','karnataka','india',234,'cse','male','2342-01-03',1),('govind_rocks','143','govind','b','bannuru','karnataka','india',9999,'cse','male','1990-07-21',1);
UNLOCK TABLES;

