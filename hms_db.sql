/*
	-- Dumping data for table `doctor`
*/
DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor`(
	`DoctorID` int(10) NOT NULL,
    `FirstName` varchar(20) default null,
	`LastName` varchar(20) default null,
    `Gender` varchar(1) default null,
    `Address` varchar(100) default null,
    `Email` varchar(30) default null,
    `Department` varchar(50) default null,
    `Specialization` varchar(50) default null,
    primary key(`DoctorID`)
    );
    
    
       

/*
	-- Dumping data for table `patientregistration`
*/

DROP TABLE IF EXISTS `patientregistration`;
CREATE TABLE `patientregistration` (
  `PatientID` int(10) NOT NULL,
  `FirstName` varchar(20) default null,
  `LastName` varchar(20) default null,
  `Email` varchar(30) default null,
  `PhoneNo` varchar(20) default null,
  `Address` varchar(100) default null,
  `Gender` varchar(1) default null,
  `Birthday` varchar(30) default null,
  primary key(`PatientID`)
  ) ;
  
  
  /*
	-- Dumping data for table `userregistration`
*/

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `name` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` int(20) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
);

  LOCK TABLES `users` WRITE;
  INSERT INTO `users` VALUES ('kris', '12345');
  UNLOCK TABLES;