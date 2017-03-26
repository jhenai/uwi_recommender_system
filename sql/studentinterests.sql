DROP TABLE IF EXISTS `studentinterests`;
CREATE TABLE studentinterests (
    studentID varchar(10) NOT NULL,
    rating int NOT NULL,
    interestID varchar(20) NOT NULL,
    PRIMARY KEY (studentID, interestID)
    )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;