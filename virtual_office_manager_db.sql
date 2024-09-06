/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - office_manager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`office_manager` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `office_manager`;

/*Table structure for table `emp_attendance` */

DROP TABLE IF EXISTS `emp_attendance`;

CREATE TABLE `emp_attendance` (
  `ecode` int(4) DEFAULT NULL,
  `atnd_date` date DEFAULT NULL,
  `time_in` varchar(30) DEFAULT NULL,
  `time_out` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_attendance` */

insert  into `emp_attendance`(`ecode`,`atnd_date`,`time_in`,`time_out`) values (8869,'2024-08-30','5:8:18','5:11:58'),(9876,'2024-08-31','4:17:53','4:46:16'),(9876,'2024-08-31','4:45:53','4:46:16');

/*Table structure for table `emp_mstr` */

DROP TABLE IF EXISTS `emp_mstr`;

CREATE TABLE `emp_mstr` (
  `ecode` int(4) NOT NULL,
  `ename` varchar(30) DEFAULT NULL,
  `edob` date DEFAULT NULL,
  `egender` varchar(10) DEFAULT NULL,
  `epost` varchar(30) DEFAULT NULL,
  `eaddr` varchar(100) DEFAULT NULL,
  `ecity` varchar(40) DEFAULT NULL,
  `econt` decimal(10,0) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `idname` varchar(30) DEFAULT NULL,
  `idno` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ecode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_mstr` */

insert  into `emp_mstr`(`ecode`,`ename`,`edob`,`egender`,`epost`,`eaddr`,`ecity`,`econt`,`email`,`idname`,`idno`) values (1234,'Ayush Gupta','2004-07-13','Male','Software Engineer','Munshi Pulia','Lucknow','9580943947','ayushguptagola3@gmail.com','ayush321','9580'),(8869,'Tanu Tripathi','2003-11-12','female','Software Engineer','BKT','Lucknow','7809654567','tanu5@gmail.com','tanu8869','8869'),(9876,'Sachin','2005-05-11','Male','Manager','Basti','lucknow','9839238252','sachin3@gmail.com','Sachin321','9876');

/*Table structure for table `emp_status` */

DROP TABLE IF EXISTS `emp_status`;

CREATE TABLE `emp_status` (
  `ecode` int(4) NOT NULL,
  `join_date` date DEFAULT NULL,
  `last_work_date` date DEFAULT NULL,
  `emp_status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ecode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_status` */

insert  into `emp_status`(`ecode`,`join_date`,`last_work_date`,`emp_status`) values (123,'2024-08-30',NULL,'working'),(1234,'2024-08-24',NULL,'working'),(8081,'2024-08-25',NULL,'working'),(8869,'2024-08-27',NULL,'working'),(9876,'2024-08-26',NULL,'working');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user` varchar(30) NOT NULL,
  `pswd` varchar(20) DEFAULT NULL,
  `utype` varchar(20) DEFAULT NULL,
  `ac_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`user`,`pswd`,`utype`,`ac_status`) values ('admin','Ayush123','Admin',1),('amanverma@gmail.com','aman8081','Employee',1),('Analyze','lko','Comapny',1),('Ayush','9580','Admin',1),('ayushguptagola3@gmail.com','ayush@321','Employee',1),('jbxjacu@gmail.com','9580','Employee',1),('pragyasingh3@gmail.com','pragya321','Employee',0),('sachin3@gmail.com','sachin@322','Employee',1),('tanu5@gmail.com','Lucknow','Employee',1),('tim@gmail.com','567','Employee',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
