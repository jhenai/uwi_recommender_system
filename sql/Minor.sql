DROP TABLE IF EXISTS `Minor`;
CREATE TABLE Minor(
    Minor varchar(255) NOT NULL,
    Credits_Needed int NOT NULL,
    PRIMARY KEY (Minor)
    )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;
    
insert into Minor (Minor, Credits_Needed) values ('Computer Science', 15);
insert into Minor (Minor, Credits_Needed) values ('Information Technology', 15);
insert into Minor (Minor, Credits_Needed) values ('Software Engineering', 15);
insert into Minor (Minor, Credits_Needed) values ('Psychology', 15);
insert into Minor (Minor, Credits_Needed) values ('Social Psychology', 15);
insert into Minor (Minor, Credits_Needed) values ('Criminology', 15);

