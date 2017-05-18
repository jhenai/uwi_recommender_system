DROP TABLE IF EXISTS `grades`;
CREATE TABLE grades (
     courseID varchar(10) NOT NULL,
     impact_courseID varchar(10) NOT NULL,
     grade1 float NOT NULL,
     grade2 float NOT NULL,
     percentage float NOT NULL,
     PRIMARY KEY (courseID,impact_courseID,grade1,grade2,percentage)
     )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;
     
--      select min(grade1) from (select distinct grade1 from grades where grade1 >= (select grade from lettertogrades where letter = (select grade from (select grade from studentcourses where courseID = "COMP1161" and studentID = "620060003" order by grade asc) as tgrade LIMIT 1)))as grange
        -- select min(grade1) from(select distinct grade2 from grades where grade2 >= (select grade from lettertogrades where letter = "A+"))
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1126','COMP1127',2,2,0.753),
        ('COMP1126','COMP1127',2,3,0.116),
        ('COMP1126','COMP1127',2,4.3,0.131),
        ('COMP1126','COMP1127',3,2,0.222),
        ('COMP1126','COMP1127',3,3,0.291),
        ('COMP1126','COMP1127',3,4.3,0.487),
        ('COMP1126','COMP1127',4.3,2,0.045),
        ('COMP1126','COMP1127',4.3,3,0.075),
        ('COMP1126','COMP1127',4.3,4.3,0.881);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1126','COMP1161',2,2,0.512),
        ('COMP1126','COMP1161',2,3,0.293),
        ('COMP1126','COMP1161',2,4.3,0.112),
        ('COMP1126','COMP1161',3,2,0.264),
        ('COMP1126','COMP1161',3,3,0.200),
        ('COMP1126','COMP1161',3,4.3,0.145),
        ('COMP1126','COMP1161',4.3,2,0.225),
        ('COMP1126','COMP1161',4.3,3,0.507),
        ('COMP1126','COMP1161',4.3,4.3,0.743);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1127','COMP1161',2,2,0.516),
        ('COMP1127','COMP1161',2,3,0.288),
        ('COMP1127','COMP1161',2,4.3,0.128),
        ('COMP1127','COMP1161',3,2,0.226),
        ('COMP1127','COMP1161',3,3,0.298),
        ('COMP1127','COMP1161',3,4.3,0.139),
        ('COMP1127','COMP1161',4.3,2,0.258),
        ('COMP1127','COMP1161',4.3,3,0.413),
        ('COMP1127','COMP1161',4.3,4.3,0.733);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1161','COMP2130',2,2,0.571),
        ('COMP1161','COMP2130',2,3,0.381),
        ('COMP1161','COMP2130',2,4.3,0.111),
        ('COMP1161','COMP2130',3,2,0.286),
        ('COMP1161','COMP2130',3,3,0.524),
        ('COMP1161','COMP2130',3,4.3,0.478),
        ('COMP1161','COMP2130',4.3,2,0.143),
        ('COMP1161','COMP2130',4.3,3,0.095),
        ('COMP1161','COMP2130',4.3,4.3,0.411);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1161','COMP2140',2,2,0.390),
        ('COMP1161','COMP2140',2,3,0.206),
        ('COMP1161','COMP2140',2,4.3,0.086),
        ('COMP1161','COMP2140',3,2,0.244),
        ('COMP1161','COMP2140',3,3,0.159),
        ('COMP1161','COMP2140',3,4.3,0.134),
        ('COMP1161','COMP2140',4.3,2,0.366),
        ('COMP1161','COMP2140',4.3,3,0.635),
        ('COMP1161','COMP2140',4.3,4.3,0.780);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2140','COMP2170',2,2,0.467),
        ('COMP2140','COMP2170',2,3,0.175),
        ('COMP2140','COMP2170',2,4.3,0.051),
        ('COMP2140','COMP2170',3,2,0.367),
        ('COMP2140','COMP2170',3,3,0.350),
        ('COMP2140','COMP2170',3,4.3,0.189),
        ('COMP2140','COMP2170',4.3,2,0.167),
        ('COMP2140','COMP2170',4.3,3,0.475),
        ('COMP2140','COMP2170',4.3,4.3,0.760);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1126','COMP2190',2,2,0.659),
        ('COMP1126','COMP2190',2,3,0.500),
        ('COMP1126','COMP2190',2,4.3,0.305),
        ('COMP1126','COMP2190',3,2,0.273),
        ('COMP1126','COMP2190',3,3,0.280),
        ('COMP1126','COMP2190',3,4.3,0.330),
        ('COMP1126','COMP2190',4.3,2,0.068),
        ('COMP1126','COMP2190',4.3,3,0.220),
        ('COMP1126','COMP2190',4.3,4.3,0.365);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1127','COMP2190',2,2,0.676),
        ('COMP1127','COMP2190',2,3,0.568),
        ('COMP1127','COMP2190',2,4.3,0.314),
        ('COMP1127','COMP2190',3,2,0.297),
        ('COMP1127','COMP2190',3,3,0.351),
        ('COMP1127','COMP2190',3,4.3,0.309),
        ('COMP1127','COMP2190',4.3,2,0.027),
        ('COMP1127','COMP2190',4.3,3,0.081),
        ('COMP1127','COMP2190',4.3,4.3,0.377);        

insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1161','COMP2190',2,2,0.756),
        ('COMP1161','COMP2190',2,3,0.571),
        ('COMP1161','COMP2190',2,4.3,0.300),
        ('COMP1161','COMP2190',3,2,0.195),
        ('COMP1161','COMP2190',3,3,0.367),
        ('COMP1161','COMP2190',3,4.3,0.310),
        ('COMP1161','COMP2190',4.3,2,0.049),
        ('COMP1161','COMP2190',4.3,3,0.061),
        ('COMP1161','COMP2190',4.3,4.3,0.390);

insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1210','COMP2190',2,2,0.676),
        ('COMP1210','COMP2190',2,3,0.482),
        ('COMP1210','COMP2190',2,4.3,0.230),
        ('COMP1210','COMP2190',3,2,0.257),
        ('COMP1210','COMP2190',3,3,0.361),
        ('COMP1210','COMP2190',3,4.3,0.286),
        ('COMP1210','COMP2190',4.3,2,0.068),
        ('COMP1210','COMP2190',4.3,3,0.157),
        ('COMP1210','COMP2190',4.3,4.3,0.484);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2340','COMP2190',2,2,0.771),
        ('COMP2340','COMP2190',2,3,0.443),
        ('COMP2340','COMP2190',2,4.3,0.238),
        ('COMP2340','COMP2190',3,2,0.114),
        ('COMP2340','COMP2190',3,3,0.400),
        ('COMP2340','COMP2190',3,4.3,0.361),
        ('COMP2340','COMP2190',4.3,2,0.114),
        ('COMP2340','COMP2190',4.3,3,0.157),
        ('COMP2340','COMP2190',4.3,4.3,0.402);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1126','COMP2201',2,2,0.609),
        ('COMP1126','COMP2201',2,3,0.386),
        ('COMP1126','COMP2201',2,4.3,0.082),
        ('COMP1126','COMP2201',3,2,0.261),
        ('COMP1126','COMP2201',3,3,0.429),
        ('COMP1126','COMP2201',3,4.3,0.289),
        ('COMP1126','COMP2201',4.3,2,0.130),
        ('COMP1126','COMP2201',4.3,3,0.186),
        ('COMP1126','COMP2201',4.3,4.3,0.629);
        
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1126','COMP2211',2,2,0.393),
        ('COMP1126','COMP2211',2,3,0.500),
        ('COMP1126','COMP2211',2,4.3,0.288),
        ('COMP1126','COMP2211',3,2,0.464),
        ('COMP1126','COMP2211',3,3,0.350),
        ('COMP1126','COMP2211',3,4.3,0.216),
        ('COMP1126','COMP2211',4.3,2,0.143),
        ('COMP1126','COMP2211',4.3,3,0.250),
        ('COMP1126','COMP2211',4.3,4.3,0.497);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1127','COMP2211',2,2,0.484),
        ('COMP1127','COMP2211',2,3,0.462),
        ('COMP1127','COMP2211',2,4.3,0.298),
        ('COMP1127','COMP2211',3,2,0.452),
        ('COMP1127','COMP2211',3,3,0.346),
        ('COMP1127','COMP2211',3,4.3,0.202),
        ('COMP1127','COMP2211',4.3,2,0.065),
        ('COMP1127','COMP2211',4.3,3,0.192),
        ('COMP1127','COMP2211',4.3,4.3,0.500);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1161','COMP2211',2,2,0.630),
        ('COMP1161','COMP2211',2,3,0.500),
        ('COMP1161','COMP2211',2,4.3,0.268),
        ('COMP1161','COMP2211',3,2,0.529),
        ('COMP1161','COMP2211',3,3,0.324),
        ('COMP1161','COMP2211',3,4.3,0.238),
        ('COMP1161','COMP2211',4.3,2,0.111),
        ('COMP1161','COMP2211',4.3,3,0.176),
        ('COMP1161','COMP2211',4.3,4.3,0.494);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1210','COMP2211',2,2,0.627),
        ('COMP1210','COMP2211',2,3,0.540),
        ('COMP1210','COMP2211',2,4.3,0.094),
        ('COMP1210','COMP2211',3,2,0.288),
        ('COMP1210','COMP2211',3,3,0.254),
        ('COMP1210','COMP2211',3,4.3,0.212),
        ('COMP1210','COMP2211',4.3,2,0.085),
        ('COMP1210','COMP2211',4.3,3,0.206),
        ('COMP1210','COMP2211',4.3,4.3,0.694);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2201','COMP2211',2,2,0.627),
        ('COMP2201','COMP2211',2,3,0.540),
        ('COMP2201','COMP2211',2,4.3,0.094),
        ('COMP2201','COMP2211',3,2,0.288),
        ('COMP2201','COMP2211',3,3,0.254),
        ('COMP2201','COMP2211',3,4.3,0.212),
        ('COMP2201','COMP2211',4.3,2,0.085),
        ('COMP2201','COMP2211',4.3,3,0.206),
        ('COMP2201','COMP2211',4.3,4.3,0.694);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1161','COMP2340',2,2,0.286),
        ('COMP1161','COMP2340',2,3,0.238),
        ('COMP1161','COMP2340',2,4.3,0.133),
        ('COMP1161','COMP2340',3,2,0.464),
        ('COMP1161','COMP2340',3,3,0.381),
        ('COMP1161','COMP2340',3,4.3,0.267),
        ('COMP1161','COMP2340',4.3,2,0.250),
        ('COMP1161','COMP2340',4.3,3,0.381),
        ('COMP1161','COMP2340',4.3,4.3,0.600);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1210','COMP2340',2,2,0.323),
        ('COMP1210','COMP2340',2,3,0.167),
        ('COMP1210','COMP2340',2,4.3,0.060),
        ('COMP1210','COMP2340',3,2,0.415),
        ('COMP1210','COMP2340',3,3,0.361),
        ('COMP1210','COMP2340',3,4.3,0.220),
        ('COMP1210','COMP2340',4.3,2,0.262),
        ('COMP1210','COMP2340',4.3,3,0.472),
        ('COMP1210','COMP2340',4.3,4.3,0.720);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2340','COMP3101',2,2,0.062),
        ('COMP2340','COMP3101',2,3,0.048),
        ('COMP2340','COMP3101',2,4.3,0.015),
        ('COMP2340','COMP3101',3,2,0.500),
        ('COMP2340','COMP3101',3,3,0.381),
        ('COMP2340','COMP3101',3,4.3,0.323),
        ('COMP2340','COMP3101',4.3,2,0.438),
        ('COMP2340','COMP3101',4.3,3,0.571),
        ('COMP2340','COMP3101',4.3,4.3,0.662);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP1210','COMP3161',2,2,0.295),
        ('COMP1210','COMP3161',2,3,0.132),
        ('COMP1210','COMP3161',2,4.3,0.058),
        ('COMP1210','COMP3161',3,2,0.459),
        ('COMP1210','COMP3161',3,3,0.623),
        ('COMP1210','COMP3161',3,4.3,0.279),
        ('COMP1210','COMP3161',4.3,2,0.246),
        ('COMP1210','COMP3161',4.3,3,0.245),
        ('COMP1210','COMP3161',4.3,4.3,0.663);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2201','COMP3161',2,2,0.769),
        ('COMP2201','COMP3161',2,3,0.389),
        ('COMP2201','COMP3161',2,4.3,0.179),
        ('COMP2201','COMP3161',3,2,0.231),
        ('COMP2201','COMP3161',3,3,0.556),
        ('COMP2201','COMP3161',3,4.3,0.357),
        ('COMP2201','COMP3161',4.3,2,0.000),
        ('COMP2201','COMP3161',4.3,3,0.056),
        ('COMP2201','COMP3161',4.3,4.3,0.464);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2190','COMP3191',2,2,0.100),
        ('COMP2190','COMP3191',2,3,0.286),
        ('COMP2190','COMP3191',2,4.3,0.000),
        ('COMP2190','COMP3191',3,2,0.650),
        ('COMP2190','COMP3191',3,3,0.514),
        ('COMP2190','COMP3191',3,4.3,0.333),
        ('COMP2190','COMP3191',4.3,2,0.250),
        ('COMP2190','COMP31911',4.3,3,0.200),
        ('COMP2190','COMP3191',4.3,4.3,0.667);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2211','COMP3220',2,2,0.179),
        ('COMP2211','COMP3220',2,3,0.269),
        ('COMP2211','COMP3220',2,4.3,0.000),
        ('COMP2211','COMP3220',3,2,0.500),
        ('COMP2211','COMP3220',3,3,0.500),
        ('COMP2211','COMP3220',3,4.3,0.395),
        ('COMP2211','COMP3220',4.3,2,0.321),
        ('COMP2211','COMP3220',4.3,3,0.231),
        ('COMP2211','COMP3220',4.3,4.3,0.605);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2211','COMP3652',2,2,0.500),
        ('COMP2211','COMP3652',2,3,0.800),
        ('COMP2211','COMP3652',2,4.3,0.111),
        ('COMP2211','COMP3652',3,2,0.250),
        ('COMP2211','COMP3652',3,3,0.000),
        ('COMP2211','COMP3652',3,4.3,0.333),
        ('COMP2211','COMP3652',4.3,2,0.250),
        ('COMP2211','COMP3652',4.3,3,0.200),
        ('COMP2211','COMP3652',4.3,4.3,0.556);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2340','COMP3652',2,2,0.500),
        ('COMP2340','COMP3652',2,3,0.667),
        ('COMP2340','COMP3652',2,4.3,0.200),
        ('COMP2340','COMP3652',3,2,0.000),
        ('COMP2340','COMP3652',3,3,0.000),
        ('COMP2340','COMP3652',3,4.3,0.400),
        ('COMP2340','COMP3652',4.3,2,0.500),
        ('COMP2340','COMP3652',4.3,3,0.333),
        ('COMP2340','COMP3652',4.3,4.3,0.400);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2201','COMP3702',2,2,0.500),
        ('COMP2201','COMP3702',2,3,0.333),
        ('COMP2201','COMP3702',2,4.3,0.053),
        ('COMP2201','COMP3702',3,2,0.500),
        ('COMP2201','COMP3702',3,3,0.556),
        ('COMP2201','COMP3702',3,4.3,0.316),
        ('COMP2201','COMP3702',4.3,2,0.000),
        ('COMP2201','COMP3702',4.3,3,0.111),
        ('COMP2201','COMP3702',4.3,4.3,0.632);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2211','COMP3702',2,2,0.161),
        ('COMP2211','COMP3702',2,3,0.400),
        ('COMP2211','COMP3702',2,4.3,0.000),
        ('COMP2211','COMP3702',3,2,0.667),
        ('COMP2211','COMP3702',3,3,0.300),
        ('COMP2211','COMP3702',3,4.3,0.400),
        ('COMP2211','COMP3702',4.3,2,0.167),
        ('COMP2211','COMP3702',4.3,3,0.300),
        ('COMP2211','COMP3702',4.3,4.3,0.600);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2140','COMP3801',2,2,1.000),
        ('COMP2140','COMP3801',2,3,0.000),
        ('COMP2140','COMP3801',2,4.3,0.000),
        ('COMP2140','COMP3801',3,2,0.000),
        ('COMP2140','COMP3801',3,3,0.200),
        ('COMP2140','COMP3801',3,4.3,0.037),
        ('COMP2140','COMP3801',4.3,2,0.000),
        ('COMP2140','COMP3801',4.3,3,0.800),
        ('COMP2140','COMP3801',4.3,4.3,0.963);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2140','COMP3901',2,2,0.095),
        ('COMP2140','COMP3901',2,3,0.043),
        ('COMP2340','COMP3901',2,4.3,0.029),
        ('COMP2140','COMP3901',3,2,0.429),
        ('COMP2140','COMP3901',3,3,0.304),
        ('COMP2140','COMP3901',3,4.3,0.108),
        ('COMP2140','COMP3901',4.3,2,01.476),
        ('COMP2140','COMP3901',4.3,3,0.652),
        ('COMP2140','COMP3901',4.3,4.3,1.863);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('COMP2211','COMP3901',2,2,0.032),
        ('COMP2211','COMP3901',2,3,0.000),
        ('COMP2211','COMP3901',2,4.3,0.000),
        ('COMP2211','COMP3901',3,2,0.161),
        ('COMP2211','COMP3901',3,3,0.250),
        ('COMP2211','COMP3901',3,4.3,0.091),
        ('COMP2211','COMP3901',4.3,2,01.806),
        ('COMP2211','COMP3901',4.3,3,0.750),
        ('COMP2211','COMP3901',4.3,4.3,1.909);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('FOUN1014','FOUN1101',2,2,0.432),
        ('FOUN1014','FOUN1101',2,3,0.534),
        ('FOUN1014','FOUN1101',2,4.3,0.223),
        ('FOUN1014','FOUN1101',3,2,0.161),
        ('FOUN1014','FOUN1101',3,3,0.530),
        ('FOUN1014','FOUN1101',3,4.3,0.391),
        ('FOUN1014','FOUN1101',4.3,2,0.206),
        ('FOUN1014','FOUN1101',4.3,3,0.750),
        ('FOUN1014','FOUN1101',4.3,4.3,0.909);
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('FOUN1014','FOUN1301',2,2,0.548),
        ('FOUN1014','FOUN1301',2,3,0.676),
        ('FOUN1014','FOUN1301',2,4.3,0.244),
        ('FOUN1014','FOUN1301',3,2,0.261),
        ('FOUN1014','FOUN1301',3,3,0.630),
        ('FOUN1014','FOUN1301',3,4.3,0.591),
        ('FOUN1014','FOUN1301',4.3,2,0.106),
        ('FOUN1014','FOUN1301',4.3,3,0.640),
        ('FOUN1014','FOUN1301',4.3,4.3,0.769);

insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('FOUN1013','FOUN1101',2,2,0.432),
        ('FOUN1013','FOUN1101',2,3,0.534),
        ('FOUN1013','FOUN1101',2,4.3,0.223),
        ('FOUN1013','FOUN1101',3,2,0.161),
        ('FOUN1013','FOUN1101',3,3,0.530),
        ('FOUN1013','FOUN1101',3,4.3,0.391),
        ('FOUN1013','FOUN1101',4.3,2,0.206),
        ('FOUN1013','FOUN1101',4.3,3,0.750),
        ('FOUN1013','FOUN1101',4.3,4.3,0.909);        
        
insert into grades (courseID,impact_courseID,grade1,grade2,percentage)
values  ('FOUN1013','FOUN1201',2,2,0.632), 
        ('FOUN1013','FOUN1201',2,3,0.751),
        ('FOUN1013','FOUN1201',2,4.3,0.253),
        ('FOUN1013','FOUN1201',3,2,0.183),
        ('FOUN1013','FOUN1201',3,3,0.720),
        ('FOUN1013','FOUN1201',3,4.3,0.491),
        ('FOUN1013','FOUN1201',4.3,2,0.156),
        ('FOUN1013','FOUN1201',4.3,3,0.680),
        ('FOUN1013','FOUN1201',4.3,4.3,0.799); 