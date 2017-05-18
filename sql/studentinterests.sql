DROP TABLE IF EXISTS `studentsinterests`;
CREATE TABLE studentsinterests (   
    studentID varchar(255) NOT NULL,
    interest varchar(30) NOT NULL,
    rating int,
    PRIMARY KEY (studentID, interest)
    )