DROP TABLE IF EXISTS `Major`;
CREATE TABLE Major(
    Major varchar(255) NOT NULL,
    Credits_Needed int NOT NULL,
    PRIMARY KEY (Major)
    )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;
    
insert into Major (Major, Credits_Needed) values ('Computer Science', 39);
insert into Major (Major, Credits_Needed) values ('Software Engineering', 39);
insert into Major (Major, Credits_Needed) values ('Psychology', 30);
insert into Major (Major, Credits_Needed) values ('Social Anthropology', 30);
insert into Major (Major, Credits_Needed) values ('Sociology', 30);
insert into Major (Major, Credits_Needed) values ('Social Work', 51);
insert into Major (Major, Credits_Needed) values ('Demography', 30);