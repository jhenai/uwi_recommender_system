DROP TABLE IF EXISTS `courseinterest`;
CREATE TABLE courseinterest (           
    interestID varchar(30) NOT NULL,
    courseID varchar(30) NOT NULL,
    PRIMARY KEY (interestID,courseID)
    )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;

       
/*INTEREST FOR COURSES table*/
insert into courseinterest (interestID,courseID) 
values  ("INTSCI", "BIOL1017"),
        ("INTINV", "null" ),
        
        ("INTPYSC","PSYC1000" ),
        ("INTPYSC","PSYC1001" ),
        ("INTPYSC","PSYC1002" ),
        ("INTPYSC","PSYC1005" ),
        ("INTPYSC","PSYC1006" ),
        ("INTPYSC","PSYC2000" ),
        ("INTPYSC","PSYC2002" ),
        ("INTPYSC","PSYC2003" ),
        ("INTPYSC","PSYC2004" ),
        ("INTPYSC","PSYC2005" ),
        ("INTPYSC","PSYC2006" ),
        ("INTPYSC","PSYC2007" ),
        ("INTPYSC","PSYC2008" ),
        ("INTPYSC","PSYC2012" ),
        ("INTPYSC","PSYC2017" ),
        ("INTPYSC","PSYC2019" ),
        ("INTPYSC","PSYC3001" ),
        ("INTPYSC","PSYC3007" ),
        ("INTPYSC","PSYC3009" ),
        ("INTPYSC","PSYC3008" ),
        
        
        ("INTECON","ECON1000"),
        ("INTECON","ECON1003"),
        ("INTECON","ECON1004"),
        ("INTECON","ECON1005"),
        ("INTECON","ECON1012"),
        ("INTECON","ECON2000"),
        ("INTECON","ECON2001"),
        ("INTECON","ECON2002"),
        ("INTECON","ECON2003"),
        ("INTECON","ECON2005"),
        ("INTECON","ECON2008"),
        ("INTECON","ECON2009"),
        ("INTECON","ECON2010"),
        ("INTECON","ECON2014"),
        ("INTECON","ECON2015"),
        ("INTECON","ECON2016"),
        ("INTECON","ECON2020"),
        ("INTECON","ECON2023"),
        ("INTECON","ECON2024"),
        ("INTECON","ECON2025"),
        ("INTECON","ECON3003"),
        ("INTECON","ECON3005"),
        ("INTECON","ECON3006"),
        ("INTECON","ECON3007"),
        ("INTECON","ECON3008"),
        ("INTECON","ECON3010"),
        ("INTECON","ECON3011"),
        ("INTECON","ECON3016"),
        ("INTECON","ECON3031"),
        ("INTECON","ECON3032"),
        ("INTECON","ECON3034"),
        ("INTECON","ECON3037"),
        ("INTECON","ECON3040"),
        ("INTECON","ECON3049"),
        ("INTECON","ECON3050"),
        ("INTECON","ECON3051"),
        ("INTECON","ECON3069"),
        ("INTECON","ECON3072"),
        ("INTECON","ECON3073"),
        ("INTECON","MGMT2020"),
        
        
        ("INTPOLI","GOVT1000" ),
        ("INTPOLI","GOVT1001" ),
        ("INTPOLI","GOVT1012" ),
        ("INTPOLI","GOVT1013" ),
        ("INTPOLI","GOVT2004" ),
        ("INTPOLI","GOVT2005" ),
        ("INTPOLI","GOVT2006" ),
        ("INTPOLI","GOVT2007" ),
        ("INTPOLI","GOVT2011" ),
        ("INTPOLI","GOVT2049" ),
        ("INTPOLI","GOVT2070" ),
        ("INTPOLI","GOVT2177" ),
        ("INTPOLI","GOVT2267" ),
        ("INTPOLI","GOVT3009" ),
        ("INTPOLI","GOVT3012" ),
        ("INTPOLI","GOVT3016" ),
        ("INTPOLI","GOVT3039" ),
        ("INTPOLI","GOVT3176" ),
        ("INTPOLI","GOVT3178" ),
        
        
        
        ("INTPHIL","GOVT2001" ),
        ("INTPHIL","GOVT1001" ),
   
        
        
        ("INTRESE", "SOWK3000"),
        ("INTRESE", "SOCI3011"),
        ("INTRESE", "SOCI2006"),
        ("INTRESE", "PSYC1006"),
        ("INTRESE", "GOVT2054"),
        ("INTRESE", "ECON3037"),
        ("INTRESE", "MKTG3002"),
   
        
        
        ("INTMARK", "MKTG2001"),
        ("INTMARK", "MKTG3001"),
        ("INTMARK", "MKTG3002"),
        ("INTMARK", "MKTG3003"),
        ("INTMARK", "MKTG3010"),
        ("INTMARK", "MKTG3070"),
        ("INTMARK", "SOCI3041"),
        ("INTMARK", "TOUR3004"),
        ("INTMARK", "GOVT3202"),
        
        ("INTLANG","" ),
        
        ("INTCULT", "SOCI3025"),
        ("INTCULT", "SOCI2017"),
        ("INTCULT", "SOCI2020"),
        ("INTCULT", "SOCI3034"),
        ("INTCULT", "SOCI2018"),
        
      
        
        ("INTMUSI", "GOVT2012"),
        
        
        ("INTMEDI","null" ),
        
        
        ("INTBUSI", "null" ),
        
        ("INTCOMM", "MGMT1002"),
        ("INTCOMM", "GOVT3202"),
        ("INTCOMM", "MKTG3010"),
        
        
        ("INTANIM","null"  ),
        
        ("INTHIST","null"  ),
        
        ("INTLAW", "MGMT2021"),
        ("INTLAW", "GOVT2047"),
        ("INTLAW", "GOVT2050"),
        ("INTLAW", "MGMT3046"),
        ("INTLAW", "MGMT3063"),
        ("INTLAW", "SOWK2001"),
        ("INTLAW", "GOVT3051"),
        ("INTLAW", "FOUN1301"),
      
        
        
        
        ("INTPROG",  "COMP1126"),
        ("INTPROG",  "COMP1127"),
        ("INTPROG",  "COMP1161"),
        ("INTPROG",  "INFO3180"),
        ("INTPROG",  "COMP1220"),
        ("INTPROG",  "COMP2130"),
        ("INTPROG",  "INFO2180"),
        ("INTPROG",  "COMP3161"),
        ("INTPROG",  "COMP2340"), 
        ("INTPROG",  "COMP3801"), 
        ("INTPROG",  "INFO3155"), 
        ("INTPROG",  "INFO3435"), 
        ("INTPROG",  "INFO3170"), 
        
        
        
        
        ("INTELEC",  "ECNG1012"),
        ("INTELEC",  "ELET1400"),
        ("INTELEC",  "ELET1405"),
        ("INTELEC",  "ELNG1101"),
        ("INTELEC",  "ELET2405"),
        ("INTELEC",  "ELET2430"),
        ("INTELEC",  "ELET2450"),
        ("INTELEC",  "ELET2460"),
        ("INTELEC",  "ECNG3021"),
        ("INTELEC",  "ELET3485"),
        ("INTELEC",  "ECNG3016"),
        
        
        
        ("INTGEOG",  "GEOG1131"),
        ("INTGEOG",  "GEOG1132"),
        ("INTGEOG",  "GEOG1231"),
        ("INTGEOG",  "GEOG1232"),
        ("INTGEOG",  "GEOG2131"),
        ("INTGEOG",  "GEOG2132"),
        ("INTGEOG",  "GEOG2231"),
        ("INTGEOG",  "GEOG2232"),
        ("INTGEOG",  "GEOG2331"),
        ("INTGEOG",  "GGEO2233"),
        ("INTGEOG",  "GGEO2332"),
        ("INTGEOG",  "GEOG3131"),
        ("INTGEOG",  "GEOG3132"),
        ("INTGEOG",  "GEOG3331"),
        ("INTGEOG",  "GEOG3333"),
        ("INTGEOG",  "GEOG3334"),
        ("INTGEOG",  "GEOG3430"),
        ("INTGEOG",  "GGEO3231"),
        ("INTGEOG",  "GGEO3232"),
        ("INTGEOG",  "GGEO3233"),
        ("INTGEOG",  "GGEO3332"),
        ("INTGEOG",  "GGEO3401");
