DROP DATABASE IF exists records;
CREATE DATABASE records;
USE records;

DROP TABLE IF EXISTS `Studentrecords`;
CREATE TABLE Studentrecords (
    studentID varchar(255) NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Password varchar(255) NOT NULL,
    Faculty varchar(255) NOT NULL,
    Major varchar(255) NOT NULL,
    Minor varchar(255),
    YearOfStudy int NOT NULL,
    PRIMARY KEY (studentID)
    )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;
  

insert into Studentrecords ( studentID, LastName, FirstName, Password, Faculty, Major, Minor, YearOfStudy) values (620060001, 'Alexander', 'Julia', '12345', 'Science and Technology', 'Computer Science', null, 1);
insert into Studentrecords ( studentID, LastName, FirstName, Password, Faculty, Major, Minor, YearOfStudy) values (620060002, 'Wilson', 'Jose', '12345', 'Science and Technology', 'Software Engineering', null, 2);
insert into Studentrecords ( studentID, LastName, FirstName, Password, Faculty, Major, Minor, YearOfStudy) values (620060003, 'Darwin', 'Jerika', '12345', 'Science and Technology', 'Computer Science', 'Psychology', 4);

insert into Studentrecords ( studentID, LastName, FirstName, Password, Faculty, Major, Minor, YearOfStudy) values (620077611, 'Gonzalez', 'Brenda', 'Rdo1RQ', 'Social Sciences', 'Social Work', null, 1);
insert into Studentrecords ( studentID, LastName, FirstName, Password, Faculty, Major, Minor, YearOfStudy) values (620075670, 'Dixon', 'Brandon', 'RyUv6dRJ', 'Social Sciences', 'Sociology', 'Software Engineering', 2);
insert into Studentrecords ( studentID, LastName, FirstName, Password, Faculty, Major, Minor, YearOfStudy) values (620071593, 'Willis', 'Eugene', '1PbCWtGLFl7o', 'Social Sciences', 'Social Anthropology', null, 2);

insert into Studentrecords ( studentID, LastName, FirstName, Password, Faculty, Major, Minor, YearOfStudy) values (620082073, 'Brown', 'Mary', 'hdmct67v', 'Social Sciences', 'Psychology','Information Technology', 3);
insert into Studentrecords ( studentID, LastName, FirstName, Password, Faculty, Major, Minor, YearOfStudy) values (620084801, 'Baker', 'Rodger', 'wxmfyx987', 'Social Sciences', 'Demography','Computer Science', 1);

insert into Studentrecords ( studentID, LastName, FirstName, Password, Faculty, Major, Minor, YearOfStudy) values (620062900, 'Clarke', 'Maxwell', 'pledn509', 'Science and Technology', 'Computer Science','Social Psychology', 2);
insert into Studentrecords ( studentID, LastName, FirstName, Password, Faculty, Major, Minor, YearOfStudy) values (620067290, 'Williams', 'Emily', 'nsmarw234', 'Science and Technology', 'Software Engineering','Criminology', 2);



