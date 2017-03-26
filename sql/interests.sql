DROP TABLE IF EXISTS `interests`;
CREATE TABLE interests (           
    interestID varchar(30) NOT NULL,
    interestName varchar(30) NOT NULL,
    PRIMARY KEY (interestID)
    )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;

/*INTERST table completed */


insert into interests (interestID,interestName) 
values  ("INTLANG", "Languages"),
        ("INTPROG", "Programming"),
        ("INTCULT", "Culture"),
        ("INTMUSI", "Music"),
        ("INTMEDI", "Media"),
        ("INTBUSI", "Business"),
        ("INTCOMM", "Communication"),
        ("INTANIM", "Animation"),
        ("INTPOLI", "Politics"),
        ("INTHIST", "History"),
        ("INTLAW", "Law"),
        ("INTELEC", "Electronics"),
        ("INTSCI", "Science"),
        ("INTINV", "Investment"),
        ("INTPYSC", "Psychology"),
        ("INTECON", "Economics"),
        ("INTPHIL", "Philosophy"),
        ("INTRESE", "Research"),
        ("INTMARK", "Marketing"), 
        ("INTGEOG", "Geography");