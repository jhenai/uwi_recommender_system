DROP TABLE IF EXISTS `studentcourses`;
CREATE TABLE studentcourses (           /* TABLE FOR COMPLETED COURSES  */
    studentID varchar(30) NOT NULL,
    courseID varchar(10) NOT NULL, 
    grades varchar(10) NOT NULL,
    primary key ( studentID,courseID,grades)
    )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;
    
/* STUDENT COURSES table*/

insert into studentcourses (studentID, courseID, grades) values (620060001, "COMP1126", "C");
insert into studentcourses (studentID, courseID, grades) values (620060001, "COMP1127", "B");
insert into studentcourses (studentID, courseID, grades) values (620060001, "COMP1210", "A");
insert into studentcourses (studentID, courseID, grades) values (620060001, "COMP1220", "B");
insert into studentcourses (studentID, courseID, grades) values (620060001, "FOUN1101", "P");
insert into studentcourses (studentID, courseID, grades) values (620060001, "CHIN1001", "A+");

insert into studentcourses (studentID, courseID, grades) values ( 620060002, "COMP1127", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620060002, "COMP1161", "F");
insert into studentcourses (studentID, courseID, grades) values ( 620060002, "COMP1126", "C");
insert into studentcourses (studentID, courseID, grades) values ( 620060002, "COMP1210", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620060002, "COMP1220", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620060002, "FOUN1101", "C");
insert into studentcourses (studentID, courseID, grades) values ( 620060002, "INFO2180", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620060002, "INFO3180", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620060002, 'ECON1000', 'A');
insert into studentcourses (studentID, courseID, grades) values ( 620060002, 'COMP2130', 'C');
insert into studentcourses (studentID, courseID, grades) values ( 620060002, 'COMP1126', 'B-');
insert into studentcourses (studentID, courseID, grades) values ( 620060002, 'INFO2110', 'C+');

insert into studentcourses (studentID, courseID, grades) values ( 620060003, "COMP1127", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "COMP1161", "F");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "COMP1210", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "COMP1220", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "COMP1161", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "COMP2140", "F");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "COMP2211", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "COMP2201", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "COMP2190", "C");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "FOUN1101", "F");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "PSYC1000", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "PSYC1001", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, 'PSYC1005', 'A');
insert into studentcourses (studentID, courseID, grades) values ( 620060003, 'COMP2130', 'C');
insert into studentcourses (studentID, courseID, grades) values ( 620060003, 'PSYC1006', 'C+');
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "SOCI1002", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "SOCI1005", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620060003, 'PSYC2000', 'A');
insert into studentcourses (studentID, courseID, grades) values ( 620060003, 'COMP2130', 'C');
insert into studentcourses (studentID, courseID, grades) values ( 620060003, 'COMP1126', 'B-');
insert into studentcourses (studentID, courseID, grades) values ( 620060003, 'PSYC2008', 'C+');
insert into studentcourses (studentID, courseID, grades) values ( 620060003, "FOUN1014", "C");   

insert into studentcourses (studentID, courseID, grades) values (620075670, "ECON1000", "B");
insert into studentcourses (studentID, courseID, grades) values (620075670, "GOVT1000", "B");
insert into studentcourses (studentID, courseID, grades) values (620075670, "PSYC1000", "A-");
insert into studentcourses (studentID, courseID, grades) values (620075670, "SOCI1001", "A");
insert into studentcourses (studentID, courseID, grades) values (620075670, "SOCI1002", "B+");
insert into studentcourses (studentID, courseID, grades) values (620075670, "SOCI1005", "B");
insert into studentcourses (studentID, courseID, grades) values (620075670, "SOCI1003", "B-");
insert into studentcourses (studentID, courseID, grades) values (620075670, "SOCI2000", "B");
insert into studentcourses (studentID, courseID, grades) values (620075670, "SOCI2001", "B");
insert into studentcourses (studentID, courseID, grades) values (620075670, "FOUN1013", "C");
insert into studentcourses (studentID, courseID, grades) values (620075670, "COMP1210", "C+");
insert into studentcourses (studentID, courseID, grades) values (620075670, "COMP2140", "B-");
insert into studentcourses (studentID, courseID, grades) values (620075670, "COMP1161", "A+");
insert into studentcourses (studentID, courseID, grades) values (620075670, "COMP1127", "A");
insert into studentcourses (studentID, courseID, grades) values (620075670, "COMP1126", "B");
insert into studentcourses (studentID, courseID, grades) values (620075670, "COMP1220", "A");
insert into studentcourses (studentID, courseID, grades) values (620075670, "COMP2190", "B+");
insert into studentcourses (studentID, courseID, grades) values (620075670, "COMP2201", "B+");
insert into studentcourses (studentID, courseID, grades) values (620075670, "SOCI2007", "B+");


insert into studentcourses (studentID, courseID, grades) values ( 620071593, "PSYC1000", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "SOCI1002", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "SOCI1001", "A+");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "SOCI1006", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "SOCI1005", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "SOCI2001", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "PSYC2000", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "SOCI3025", "A+");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "SOCI2000", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "FOUN1013", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "FOUN1101", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "MKTG2001", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "SOCI2018", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "SOCI2111", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620071593, "FOUN1201", "C+");


insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC1000", "A"); 
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "SOCI1002", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "SOCI2018", "A+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "SOCI1006", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "SOCI1005", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "COMP1126", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC2000", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC1001", "A+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC1005", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "FOUN1013", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "FOUN1101", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC1006", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "COMP1127", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "COMP1161", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "COMP2140", "C+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "COMP1210", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "COMP1220", "A+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "INFO2110", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "INFO2180", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "INFO2100", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "COMP2190", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC2002", "A+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC2003", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC2008", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC2019", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC2004", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "PSYC2007", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620082073, "SOCI3025", "A+");


insert into studentcourses (studentID, courseID, grades) values ( 620084801, "COMP1126", "A-"); 
insert into studentcourses (studentID, courseID, grades) values ( 620084801, "COMP1127", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620084801, "COMP1210", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620084801, "SOCI1002", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620084801, "SOCI1005", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620084801, "SOCI1001", "A+");


insert into studentcourses (studentID, courseID, grades) values ( 620062900, "PSYC1000", "A"); 
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "SOCI1002", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "PSYC2000", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "PSYC2004", "b-");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "SOCI1001", "A+");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "FOUN1101", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "PSYC2006", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "FOUN1014", "C+");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "COMP1126", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "COMP1127", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "COMP1161", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "COMP1210", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "COMP1220", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "COMP2140", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "COMP2201", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "COMP2190", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620062900, "INFO2180", "B");

insert into studentcourses (studentID, courseID, grades) values ( 620067290, "COMP1126", "A"); 
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "COMP1210", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "COMP1127", "A+");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "COMP1161", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "COMP1220", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "FOUN1014", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "INFO2180", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "COMP2140", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "COMP2190", "A-");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "COMP2201", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "GOVT1000", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "SOCI1002", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "SOCI3036", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "SOCI3032", "B");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "PSYC1000", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "MKTG2001", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "PSYC2000", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "FOUN1101", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620067290, "FOUN1301", "B");


insert into studentcourses (studentID, courseID, grades) values ( 620077611, "SOWK1003", "B-"); 
insert into studentcourses (studentID, courseID, grades) values ( 620077611, "SOCI1005", "C+");
insert into studentcourses (studentID, courseID, grades) values ( 620077611, "SOWK1001", "B+");
insert into studentcourses (studentID, courseID, grades) values ( 620077611, "SOCI1002", "A");
insert into studentcourses (studentID, courseID, grades) values ( 620077611, "PSYC1000", "B-");
insert into studentcourses (studentID, courseID, grades) values ( 620077611, "SOCI1001", "A+");




