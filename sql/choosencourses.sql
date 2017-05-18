DROP TABLE IF EXISTS `chosen_courses`;
CREATE TABLE chosen_courses (           /* TABLE FOR CHOOSEN COURSES  */
    studentID varchar(30) NOT NULL,
    courseID varchar(10) NOT NULL, 
   
    primary key ( studentID,courseID)
    )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;