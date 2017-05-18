DROP TABLE IF EXISTS `lettertogrades`;
CREATE TABLE lettertogrades (
     letter varchar(2) NOT NULL,
     grade_from varchar(10) NOT NULL,
     PRIMARY KEY (letter)
     )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;
     
     insert into lettertogrades (letter,grade)
     values ('A+', 4.3),
          ('A', 4.0),
          ('A-', 3.7),
          ('B+', 3.3),
          ('B', 3),
          ('B-', 2.7),
          ('C+', 2.3),
          ('C', 2);
     