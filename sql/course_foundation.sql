DROP TABLE IF EXISTS `course_foundation`;
CREATE TABLE course_foundation (
     courseID varchar(10) NOT NULL,
     faculty varchar(255) NOT NULL,
     PRIMARY KEY (courseID,faculty)
     )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;
     
insert into course_foundation values ('FOUN1014','Science and Technology');
insert into course_foundation values ('FOUN1101','Science and Technology');
insert into course_foundation values ('FOUN1301','Science and Technology');
insert into course_foundation values ('FOUN1013','Social Sciences');
insert into course_foundation values ('FOUN1101','Social Sciences');
insert into course_foundation values ('FOUN1201','Social Sciences');

