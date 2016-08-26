-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: leavedb
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminid` varchar(10) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('12345','12345'),('admin','admin123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_leave`
--

DROP TABLE IF EXISTS `emp_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_leave` (
  `leave_id` varchar(200) NOT NULL,
  `leavetype` varchar(90) DEFAULT NULL,
  `startdate` varchar(10) DEFAULT NULL,
  `enddate` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `EmpID` varchar(10) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`leave_id`),
  KEY `EmpID` (`EmpID`),
  CONSTRAINT `emp_leave_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `emp_register` (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_leave`
--

LOCK TABLES `emp_leave` WRITE;
/*!40000 ALTER TABLE `emp_leave` DISABLE KEYS */;
INSERT INTO `emp_leave` VALUES ('11Bhw-SJkD.9rkKs1C0vES','Planned Leave','2016-04-21','2016-04-25','Rejecte','60071036','Friends Marriage'),('11jBz6KikTA8V4LfWqcD7L','Sick/Casual leave','2016-04-22','2016-04-23','Pending','60071036','trying database'),('1WfSpdJkkEp86xPFg045aV','Planned Leave','22','23','Pending','12345','ss'),('1ziVsz34s385tSypp1q-b','Planned Leave','12/06/15','14/06/15','Pending','123','MCA Exams'),('2aN1f36e4OwaLokK4YIyfd','Sick/Casual leave','2016-04-22','2016-04-25','Reject','60071010','sadsa'),('2kuOJ3DmAoP9N0iG4N6lZJ','Planned Leave','asd','asd','Approve','12345','ada'),('2T6Q726k4JNb2TY7OMEUlx','Planned Leave','2016-04-22','2016-04-26','Pending',NULL,'I am planning to marry'),('2uGEO6NRk6S8hhqtV9TjsU','Sick/Casual leave','11','12','Rejecte','12345','sick'),('4LNeRddo4DJbIspBw4z14h','Sick/Casual leave','12-06-2015','13-06-2015','Pending','60071005','getting sick'),('6BkLI1O5k24apvbJZd0gYZ','Planned Leave','22','23','Approved','12345','test'),('6dw1agWm4kh9bI-XLU9cOa','Planned Leave','','','Pending',NULL,''),('70sX7rV4kDn9URr.kAGcDz','Sick/Casual leave','2016-04-22','2016-04-22','Pending','60071010','Missed my shuttle today'),('8MY.ryMwAB5aSPLvAH-zMS','Planned Leave','12','13','Reject','12345','testing approval'),('aH8Iuu2HkjJ8YIMz0jTPxV','Planned Leave','23/4/16','25/4/16','Rejected','12345','Happy Journey'),('ckLDjO32A799yAdF0mYaXU','Planned Leave','22','23','Approved','12345','Approved TEsting'),('cwrcEaw1AQe98ObWl8Siia','Sick/Casual leave','12/05/16','14/15/16','Pending','123','Getting Sick'),('fYG-JNupAb0artQIZsczIw','Planned Leave','22','23','Pending','12345','33'),('sumitsumitsumit','Planned Leave','28/04/16','30/04/16','Approved','12345','Planned Leave to learn JUNit');
/*!40000 ALTER TABLE `emp_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_register`
--

DROP TABLE IF EXISTS `emp_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_register` (
  `EmpID` varchar(10) NOT NULL,
  `EmpName` char(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_register`
--

LOCK TABLES `emp_register` WRITE;
/*!40000 ALTER TABLE `emp_register` DISABLE KEYS */;
INSERT INTO `emp_register` VALUES ('123','example','example@gmail.com','123'),('12345','sumit','12345@mail.com','12345'),('1798','JUNIT','email','pass'),('60071005','VijayBalaji','vijay-kumar@hp','asdf'),('60071010','Vijyadra Patil','patil@patya.com','12345'),('60071036','SHAILESH','timime687@gmail.com','a'),('sdas','asda','dasda','dasdsa');
/*!40000 ALTER TABLE `emp_register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-26  8:33:12
