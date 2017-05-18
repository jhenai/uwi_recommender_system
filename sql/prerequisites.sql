DROP TABLE IF EXISTS `prerequisites`;
CREATE TABLE prerequisites(
    prerequisiteID varchar(30) NOT NULL,
    courseID varchar(10) NOT NULL, 
    PRIMARY KEY (prerequisiteID, courseID)
    )ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;

insert into prerequisites (prerequisiteID, courseID) values ('none', 'ECON1000');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1000', 'ECON1012');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'ECON1003');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1003', 'ECON1004');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'ECON1005');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1012', 'ECON2000');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2000', 'ECON2001');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1012', 'ECON2002');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2002', 'ECON2003');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1012', 'ECON2005');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1004', 'ECON2008');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2008', 'ECON2009');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2009', 'ECON2010');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2008', 'ECON2014');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1003', 'ECON2015');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1004', 'ECON2016');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1000', 'ECON2020');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1000', 'ECON2023');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1000', 'ECON2024');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1012', 'ECON2025');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2008', 'ECON3003');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2000', 'ECON3005');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2002', 'ECON3006');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2002', 'ECON3007');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2002', 'ECON3008');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2002', 'ECON3010');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2002', 'ECON3011');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2000', 'ECON3016');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2008', 'ECON3031');
insert into prerequisites (prerequisiteID, courseID) values ('ECON3031', 'ECON3032');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1000', 'ECON3034');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2015', 'ECON3037');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2016', 'ECON3040');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2008', 'ECON3049');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2015', 'ECON3050');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2002', 'ECON3051');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2002', 'ECON3069');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2003', 'ECON3072');
insert into prerequisites (prerequisiteID, courseID) values ('ECON2002', 'ECON3073');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'FOUN1301');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT1000');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT1001');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT1008');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT1012');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT1013');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT2001');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2001');
insert into prerequisites (prerequisiteID, courseID) values ('HIST1004', 'GOVT2001');
insert into prerequisites (prerequisiteID, courseID) values ('HIST2006', 'GOVT2001');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'GOVT2003');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT2003');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2003');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1008', 'GOVT2003');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2004');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT2004');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT2005');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2005');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT2006');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2006');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2006', 'GOVT2007');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT2009');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2009');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT2110');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'GOVT2011');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2011');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2012');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT2012');
insert into prerequisites (prerequisiteID, courseID) values ('HIST1004', 'GOVT2012');
insert into prerequisites (prerequisiteID, courseID) values ('HIST2006', 'GOVT2012');
insert into prerequisites (prerequisiteID, courseID) values ('LITS1002', 'GOVT2012');
insert into prerequisites (prerequisiteID, courseID) values ('PHIL1001', 'GOVT2012');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2009', 'GOVT2017');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2036');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1012', 'GOVT2036');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2037');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1012', 'GOVT2037');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2037', 'GOVT2038');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2044');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT2044');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1008', 'GOVT2044');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1012', 'GOVT2044');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1001', 'GOVT2044');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1005', 'GOVT2044');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1005', 'GOVT2044');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2046');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1008', 'GOVT2046');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1008', 'GOVT2047');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2047');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1008', 'GOVT2048');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2048');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1008', 'GOVT2049');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2049');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1012', 'GOVT2050');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2050');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2044', 'GOVT2054');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT2070');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT2177');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2177');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT2260');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT2267');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT2268');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT2269');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT3009');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT3009');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2011', 'GOVT3010');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2011', 'GOVT3011');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT3009', 'GOVT3012');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1008', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('SPAN0118', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('FREN0118', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('SPAN0101', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('FREN0101', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('SPAN1001', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('FREN1001', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('SPAN0102', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('FREN1002', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('SPAN1002', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('FREN0102', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('SPAN2199', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('FREN2001', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('FREN2002', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('SPAN3119', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('FREN3001', 'GOVT3016');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT3022');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT3022');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2037', 'GOVT3033');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT3033', 'GOVT3035');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1012', 'GOVT3039');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT3039');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2038', 'GOVT3038');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2037', 'GOVT3038');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2046', 'GOVT3048');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2048', 'GOVT3048');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT3050');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1001', 'GOVT3050');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1008', 'GOVT3050');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1012', 'GOVT3050');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2047', 'GOVT3051');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2046', 'GOVT3052');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2048', 'GOVT3052');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2048', 'GOVT3055');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2046', 'GOVT3055');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT3070');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'GOVT3114');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT3036', 'GOVT3115');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2037', 'GOVT3115');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT3034', 'GOVT3115');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT3031', 'GOVT3118');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2050', 'GOVT3118');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2037', 'GOVT3118');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT3033', 'GOVT3118');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT3170');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2044', 'GOVT3176');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2054', 'GOVT3176');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT2054', 'GOVT3178');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT3201');
insert into prerequisites (prerequisiteID, courseID) values ('GOVT1000', 'GOVT3202');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'ACCT1003');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'ACCT1005');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT1005', 'ACCT2014');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT1003', 'ACCT2014');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT2014', 'ACCT2015');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT1005', 'ACCT2017');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT1003', 'ACCT2017');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT1005', 'ACCT2019');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT1003', 'ACCT2019');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT2017', 'ACCT3039');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT2015', 'ACCT3041');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT2015', 'ACCT3043');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT3043', 'ACCT3044');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT2015', 'ACCT3064');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2023', 'ACCT3064');
insert into prerequisites (prerequisiteID, courseID) values ('TOUR1000', 'HOSP3106');
insert into prerequisites (prerequisiteID, courseID) values ('TOUR1000', 'HOTL3001');
insert into prerequisites (prerequisiteID, courseID) values ('FOUN1301', 'MGMT1002');
insert into prerequisites (prerequisiteID, courseID) values ('FOUN1019', 'MGMT1002');
insert into prerequisites (prerequisiteID, courseID) values ('FOUN1401', 'MGMT1002');
insert into prerequisites (prerequisiteID, courseID) values ('FOUN1001', 'MGMT1002');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT1005', 'MGMT2004');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1001', 'MGMT2008');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'MGMT2008');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1005', 'MGMT2012');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2012', 'MGMT2020');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MGMT2021');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT1003', 'MGMT2023');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT1005', 'MGMT2023');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1005', 'MGMT2023');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1005', 'MGMT2026');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2023', 'MGMT2068');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MGMT2224');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2004', 'MGMT3012');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2008', 'MGMT3017');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2008', 'MGMT3018');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2008', 'MGMT3019');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2008', 'MGMT3021');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2008', 'MGMT3022');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MGMT3031');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MGMT3033');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MGMT3037');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2021', 'MGMT3046');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2023', 'MGMT3048');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2021', 'MGMT3051');
insert into prerequisites (prerequisiteID, courseID) values ('ACCT2014', 'MGMT3051');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT3051', 'MGMT3052');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2026', 'MGMT3056');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2026', 'MGMT3057');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2008', 'MGMT3058');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2026', 'MGMT3060');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2008', 'MGMT3061');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT3017', 'MGMT3062');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MGMT3063');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2008', 'MGMT3065');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MGMT3066');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MGMT3067');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2008', 'MGMT3069');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2224', 'MGMT3089');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2224', 'MGMT3090');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2023', 'MGMT3090');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2224', 'MGMT3101');
insert into prerequisites (prerequisiteID, courseID) values ('MGMT2224', 'MGMT3102');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MGMT3230');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MGMT3231');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MKTG2001');
insert into prerequisites (prerequisiteID, courseID) values ('MKTG2001', 'MKTG3001');
insert into prerequisites (prerequisiteID, courseID) values ('MKTG2001', 'MKTG3002');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1005', 'MKTG3002');
insert into prerequisites (prerequisiteID, courseID) values ('MKTG2001', 'MKTG3003');
insert into prerequisites (prerequisiteID, courseID) values ('MKTG3070', 'MKTG3010');
insert into prerequisites (prerequisiteID, courseID) values ('MKTG3002', 'MKTG3010');
insert into prerequisites (prerequisiteID, courseID) values ('MKTG2001', 'MKTG3070');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'TOUR1000');
insert into prerequisites (prerequisiteID, courseID) values ('TOUR1000', 'TOUR2002');
insert into prerequisites (prerequisiteID, courseID) values ('TOUR1000', 'TOUR3000');
insert into prerequisites (prerequisiteID, courseID) values ('TOUR3000', 'TOUR3001');
insert into prerequisites (prerequisiteID, courseID) values ('MKTG2001', 'TOUR3004');
insert into prerequisites (prerequisiteID, courseID) values ('TOUR3000', 'TOUR3005');
insert into prerequisites (prerequisiteID, courseID) values ('TOUR3000', 'TOUR3007');
insert into prerequisites (prerequisiteID, courseID) values ('TOUR3000', 'TOUR3009');
insert into prerequisites (prerequisiteID, courseID) values ('TOUR3000', 'TOUR3010');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'PSYC1000');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'PSYC1001');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'PSYC1002');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'PSYC1005');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1005', 'PSYC1006');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1000', 'PSYC2000');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'PSYC2000');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1000', 'PSYC2002');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1001', 'PSYC2003');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1000', 'PSYC2004');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1000', 'PSYC2005');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1001', 'PSYC2005');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1005', 'PSYC2005');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1000', 'PSYC2006');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1006', 'PSYC2007');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1000', 'PSYC2007');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1001', 'PSYC2007');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1005', 'PSYC2007');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1001', 'PSYC2008');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1000', 'PSYC2012');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'PSYC2017');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1006', 'PSYC2019');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1005', 'PSYC2019');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1005', 'PSYC2019');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC2000', 'PSYC3001');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC2000', 'PSYC3007');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC2004', 'PSYC3008');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC2005', 'PSYC3008');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC2002', 'PSYC3008');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC3008', 'PSYC3009');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC2006', 'PSYC3010');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC2019', 'PSYC3011');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2006', 'PSYC3011');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2007', 'PSYC3011');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2008', 'PSYC3011');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC2002', 'PSYC3027');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC2005', 'PSYC3027');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOCI1001');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOCI1002');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOCI1003');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOCI1005');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI2000');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2000', 'SOCI2001');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOCI2004');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2004', 'SOCI2005');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI2006');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1001', 'SOCI2006');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1001', 'SOCI2007');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI2007');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1005', 'SOCI2007');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1005', 'SOCI2007');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1001', 'SOCI2008');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI2008');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1005', 'SOCI2008');
insert into prerequisites (prerequisiteID, courseID) values ('ECON1005', 'SOCI2008');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2008', 'SOCI2009');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2007', 'SOCI2009');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI2011');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1006', 'SOCI2011');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI2017');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI2018');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1006', 'SOCI2018');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOCI2020');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI2111');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1006', 'SOCI2111');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI3001');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1001', 'SOCI3004');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI3004');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1005', 'SOCI3004');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1006', 'SOCI3004');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI3008');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2009', 'SOCI3011');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2008', 'SOCI3011');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2007', 'SOCI3011');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI3015');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1001', 'SOCI3015');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1005', 'SOCI3015');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1006', 'SOCI3015');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1005', 'SOCI3015');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2004', 'SOCI3018');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI3018', 'SOCI3021');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2004', 'SOCI3022');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOCI3025');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI3026');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1003', 'SOCI3026');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOCI3027');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI3026', 'SOCI3030');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI3031');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI3032');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2011', 'SOCI3034');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI3032', 'SOCI3036');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOCI3041');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOCI3042');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI3043');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1006', 'SOCI3043');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1003', 'SOCI3044');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOCI3044');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI3026', 'SOCI3045');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2004', 'SOCI3045');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI3032', 'SOCI3046');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI3046', 'SOCI3047');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOWK1001');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1001', 'SOWK1003');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1001', 'SOWK1010');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOWK2001');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1001', 'SOWK2002');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1003', 'SOWK2002');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1010', 'SOWK2002');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2002', 'SOWK2003');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOWK2004');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1001', 'SOWK2005');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1003', 'SOWK2005');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2001', 'SOWK2005');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2004', 'SOWK2005');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2002', 'SOWK2005');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOWK2006');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1001', 'SOWK2007');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOWK2007');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1005', 'SOWK2007');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1006', 'SOWK2007');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1001', 'SOWK2008');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1010', 'SOWK2008');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2002', 'SOWK2008');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2003', 'SOWK2008');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1001', 'SOWK2009');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK1010', 'SOWK2009');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOWK2021');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC1000', 'SOWK2021');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOWK2022');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOWK2107');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1001', 'SOWK3000');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2004', 'SOWK3000');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI2008', 'SOWK3000');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1001', 'SOWK3009');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2003', 'SOWK3009');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOWK3009');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2004', 'SOWK3010');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2003', 'SOWK3010');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOWK3028');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2005', 'SOWK3014');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'SOWK3015');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2002', 'SOWK3017');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2003', 'SOWK3017');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2008', 'SOWK3017');
insert into prerequisites (prerequisiteID, courseID) values ('SOCI1002', 'SOWK3020');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2004', 'SOWK3020');
insert into prerequisites (prerequisiteID, courseID) values ('PSYC2000', 'SOWK3020');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2002', 'SOWK3030');
insert into prerequisites (prerequisiteID, courseID) values ('SOWK2003', 'SOWK3030');


insert into prerequisites (prerequisiteID, courseID) 
values
        ('ANIM1011', 'ANIM1002'), ('ANIM1001', 'ANIM1020'), ('ANIM1001', 'ANIM2003'), ('ANIM1002', 'ANIM2003'), ('ANIM1011', 'ANIM2012'),
('ANIM1002', 'ANIM2012'), ('ANIM2012', 'ANIM2013'), ('ANIM1020', 'ANIM2030'), ('ANIM1020', 'ANIM2021'), ('ANIM2030', 'ANIM3031'), 
('COMM2201', 'COMM2202'), ('COMM1001', 'COMM3000'), ('CLTR1001', 'COMM3000'), ('JOUR2004', 'COMM3301'), ('JOUR2401', 'COMM3301'),
('COMM2201', 'COMM3399'), ('FILM1810', 'FILM1820'), ('COMP1234', 'FILM1820'), ('FILM1820', 'FILM2812'), ('FILM1820', 'FILM2824'),
('FILM2812', 'FILM2824'), ('FILM2812', 'FILM2826'), ('FILM2824', 'FILM2826'), ('FILM1820', 'FILM3815'), ('FILM2812', 'FILM3815'), 
('FILM1820', 'FILM3901'), ('FILM2812', 'FILM3901'), ('FILM2824', 'FILM3901'), ('MDIA1003', 'MDIA2003'), ('MDIA1004', 'MDIA2003'),
('MDIA1001', 'MDIA2004'), ('MDIA1004', 'MDIA2004'), ('MDIA1004', 'MDIA2005'), ('MDIA2003', 'MDIA3002'), ('MDIA2005', 'MDIA3002'), 
('COMP2201', 'MDIA3003'), ('MDIA1004', 'MDIA3004'), ('MDIA2004', 'MDIA3005'), ('JOUR1004', 'JOUR1001'), ('JOUR1004', 'JOUR2004'), 
('JOUR1004', 'JOUR2301'), ('JOUR2004', 'JOUR2401'), ('JOUR2004', 'JOUR2801'), ('JOUR2301', 'JOUR3301'), ('JOUR2801', 'JOUR3801'), 
('IMCC1010', 'IMCC2601'), ('IMCC1010', 'IMCC2701'), ('IMCC1010', 'IMCC2801'), ('IMCC1268', 'IMCC2900'), ('IMCC2601', 'IMCC3601'), 
('IMCC2900', 'IMCC3601'), ('IMCC2701', 'IMCC3701'), ('IMCC2900', 'IMCC3701'), ('IMCC2801', 'IMCC3801'), ('IMCC2900', 'IMCC3801'), 
('IMCC2900', 'IMCC3900'), ('IMCC3900', 'IMCC3199'), ('IMCC3601', 'IMCC3199'), ('IMCC3701', 'IMCC3199'), ('IMCC3801', 'IMCC3199'), 
('HIST1801', 'HIST2801'), ('HIST1801', 'HIST2804'), ('CLTR1001', 'CLTR2501'), ('CLTR1001', 'CLTR2505'), ('CLTR2505', 'CLTR2605'),
('CLTR1001', 'CLTR2705'), ('CLTR1001', 'CLTR2803'), ('CLTR1803', 'CLTR2803'), ('CLTR2501', 'CLTR3501'), 
('CLTR2505', 'CLTR3505'), ('CLTR1001', 'CLTR3507'), ('CLTR1001', 'CLTR3510'), ('CLTR2501', 'CLTR3510'), ('GEND2400', 'CLTR3510'),
('CLTR1001', 'CLTR3516'), ('CLTR2518', 'CLTR3518'), ('CLTR2505', 'CLRT3605'), ('CLTR2605', 'CLRT3605'), ('CLTR2505', 'CLTR3803'),
('CLTR2803', 'CLTR3803'), ('CLTR2505', 'CLTR3903'), ('CLTR2803', 'CLTR3903'), ('CLTR1001', 'CLTR3905'), ('PHIL1001', 'PHIL2001'),
('PHIL1001', 'PHIL3099'), ('PHIL1002', 'PHIL3099'), ('PHIL1003', 'PHIL3099'), ('PHIL2002', 'PHIL3099'), ('PHIL2003', 'PHIL3099'),
('PHIL2006', 'PHIL3099'), ('PHIL3601', 'PHIL3602'), ('LING1002', 'LING2002'), ('LING1001', 'LING2001'), ('LING1402', 'LING2004'),
('LING2101', 'LING2102'), ('LING2104', 'LING1401'), ('LING2104', 'LING2104'), ('LING2204', 'LING2301'), ('LING1001', 'LING2301'),
('LING1001', 'LING2302'), ('LING1001', 'LING2402'), ('LING1001', 'LING2501'), ('LING1801', 'LING2802'), ('LING2810', 'LING2811'),
('LING1819', 'LING2820'), ('LING2819', 'LING1819'), ('LING2001', 'LING3001'), ('LING2002', 'LING3002'), ('LING2810', 'LING3201'),
('LING2001', 'LING3202'), ('LING2002', 'LING3202'), ('LING2301', 'LING3303'), ('LING2301', 'LING3304'), ('LING2302', 'LING3399'),
('FOUN1012', 'LING2001'), ('FOUN1012', 'LANG2003'), ('FOUN1012', 'LANG3001'), ('FOUN1012', 'LANG3003'), ('FOUN1012', 'LANG3101'),
('LIBS1003', 'LIBS2103'), ('LIBS2103', 'LIBS2104'), ('LIBS1003', 'LIBS2301'), ('LIBS1003', 'LIBS3007'), ('LIBS2502', 'LIBS3502'),
('LIBS2301', 'LIBS3901'), ('CHIN1001', 'CHIN1002'), ('CHIN1002', 'CHIN2001'), ('CHIN2001', 'CHIN2002'), ('CHIN2002', 'CHIN3001'),
('CHIN3001', 'CHIN3002'), ('FREN0101', 'FREN1000'), ('FREN1000', 'FREN1001'), ('FREN1001', 'FREN1002'), ('FREN1000', 'FREN1305'),
('FREN1000', 'FREN1304'), ('FREN1199', 'FREN2214'), ('FREN1002', 'FREN2001'), ('FREN2001', 'FREN2002'), ('FREN2001', 'FREN3003'),
('FREN2001', 'FREN3502'), ('FREN2001', 'FREN3118'), ('FREN1199', 'FREN3001'), ('FREN3001', 'FREN3002'), ('FREN1002', 'FREN3507'),
('JAPA1001', 'JAPA1002'), ('JAPA1002', 'JAPA2001'), ('JAPA2001', 'JAPA2002'), ('JAPA2002', 'JAPA3001'), ('JAPA3001', 'JAPA3002'),
('PORT0101', 'PORT0102'), ('SPAN0101', 'SPAN0102'), ('SPAN1010', 'SPAN1000'), ('SPAN1000', 'SPAN1001'), ('SPAN1001', 'SPAN1002'),
('SPAN1000', 'SPAN1401'), ('SPAN1000', 'SPAN1402'), ('SPAN1000', 'SPAN2008'), ('SPAN2008', 'SPAN2108'), ('SPAN1199', 'SPAN2302'),
('LITS1001', 'SPAN2302'), ('SPAN1002', 'SPAN2501'), ('SPAN2501', 'SPAN2502'), ('SPAN2501', 'SPAN2503'), ('SPAN1002', 'SPAN2705'),
('SPAN2502', 'SPAN3501'), ('SPAN2502', 'SPAN3502'), ('SPAN3501', 'SPAN3002'), ('SPAN1002', 'SPAN3702'), ('SPAN1001', 'SPAN3702'),
('SPAN2501', 'SPAN3714'), ('SPAN1401', 'SPAN3714'), 
('LITS1001', 'LITS2004'), ('LITS1002', 'LITS2103'), ('LITS1002', 'LITS2107'), ('LITS1001', 'LITS2111'), ('LITS1003', 'LITS2201'),
('LITS1003', 'LITS2201'), ('HUMN1101', 'LITS2304'), ('HUMN1102', 'LITS2304'), ('LITS1001', 'LITS2503'), ('LITS2004', 'LITS3001'), 
('LITS1002', 'LITS3103'), ('LITS1001', 'HUMN2201'), ('LITS1002', 'LITS2504'), ('LITS1002', 'LITS2511'), ('LITS1002', 'LITS2906'), 
('LITS1002', 'LITS3111'), ('LITS2108', 'LITS3113'), ('LITS1002', 'LITS3203'), ('LITS2207', 'LITS3205'), ('LITS2201', 'LITS3205'), 
('LITS1002', 'LITS3402'), ('LITS2504', 'LITS3504'), ('LITS2103', 'LITS3701');

insert into prerequisites (prerequisiteID, courseID) values ('none', 'BIOC1020');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'BIOC1021');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MICR1010');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'MICR1011');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC1020', 'BIOC2020');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC1021', 'BIOC2020');
insert into prerequisites (prerequisiteID, courseID) values ('MICR1010', 'BIOC2020');
insert into prerequisites (prerequisiteID, courseID) values ('MICR1011', 'BIOC2020');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'BIOC2020');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'BIOC2020');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC1020', 'BIOC2021');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC1021', 'BIOC2021');
insert into prerequisites (prerequisiteID, courseID) values ('MICR1010', 'BIOC2021');
insert into prerequisites (prerequisiteID, courseID) values ('MICR1011', 'BIOC2021');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'BIOC2021');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'BIOC2021');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC1020', 'BIOC2022');
insert into prerequisites (prerequisiteID, courseID) values ('MICR1010', 'BIOC2022');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC1020', 'BIOL2312');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC1021', 'BIOL2312');
insert into prerequisites (prerequisiteID, courseID) values ('MICR1010', 'BIOL2312');
insert into prerequisites (prerequisiteID, courseID) values ('MICR1011', 'BIOL2312');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'BIOL2312');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'BIOL2312');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC1020', 'MICR2211');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC1021', 'MICR2211');
insert into prerequisites (prerequisiteID, courseID) values ('MICR1010', 'MICR2211');
insert into prerequisites (prerequisiteID, courseID) values ('MICR1011', 'MICR2211');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'MICR2211');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'MICR2211');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'BIOC3011');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'BIOC3011');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'BIOC3011');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'BIOC3013');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'BIOC3013');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'BIOC3013');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2312', 'BIOC3013');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'BIOC3014');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'BIOC3014');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'BIOC3014');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'BIOC3413');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'BIOC3413');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'BIOC3413');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2312', 'BIOC3413');
insert into prerequisites (prerequisiteID, courseID) values ('MICR2211', 'BIOC3413');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'BIOL3312');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'BIOL3312');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'BIOL3312');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2312', 'BIOL3312');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'BIOL3313');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'BIOL3313');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'BIOL3313');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2312', 'BIOL3313');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'BIOT3113');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'BIOT3113');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'BIOT3113');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2312', 'BIOT3113');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'BIOT3114');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'BIOT3114');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'BIOT3114');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2312', 'BIOT3114');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'BIOT3116');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'BIOT3116');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'BIOT3116');
insert into prerequisites (prerequisiteID, courseID) values ('MICR2211', 'BIOT3116');
insert into prerequisites (prerequisiteID, courseID) values ('MICR2211', 'MICR3213');
insert into prerequisites (prerequisiteID, courseID) values ('MICR2211', 'MICR3214');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2312', 'MICR3214');
insert into prerequisites (prerequisiteID, courseID) values ('MICR2211', 'MICR3215');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'MICR3215');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'MICR3215');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'MICR3215');
insert into prerequisites (prerequisiteID, courseID) values ('MICR2211', 'MICR3216');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2020', 'MICR3216');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2021', 'MICR3216');
insert into prerequisites (prerequisiteID, courseID) values ('BIOC2022', 'MICR3216');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'CHEM1901');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'CHEM1902');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2010');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2010');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2011');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2011');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2110');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2110');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2111');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2111');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2210');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2210');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2310');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2310');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2311');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2311');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2402');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2402');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2410');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2410');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2510');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2510');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2511');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2511');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1901', 'CHEM2512');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM1902', 'CHEM2512');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2010', 'CHEM3010');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2010', 'CHEM3011');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2011', 'CHEM3011');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2110', 'CHEM3110');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2111', 'CHEM3111');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2110', 'CHEM3112');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2111', 'CHEM3112');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3110', 'CHEM3112');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2210', 'CHEM3210');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2210', 'CHEM3211');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2211', 'CHEM3211');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3210', 'CHEM3211');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2210', 'CHEM3212');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2211', 'CHEM3212');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3210', 'CHEM3212');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2210', 'CHEM3213');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2211', 'CHEM3213');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3210', 'CHEM3213');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2310', 'CHEM3310');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2311', 'CHEM3311');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2310', 'CHEM3312');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2110', 'CHEM3312');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2310', 'CHEM3313');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3310', 'CHEM3313');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2510', 'CHEM3401');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2511', 'CHEM3401');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3402', 'CHEM3401');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2010', 'CHEM3402');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2011', 'CHEM3402');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2110', 'CHEM3402');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2210', 'CHEM3402');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2211', 'CHEM3402');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2310', 'CHEM3402');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2310', 'CHEM3403');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2311', 'CHEM3403');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2010', 'CHEM3510');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2011', 'CHEM3510');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2210', 'CHEM3510');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2211', 'CHEM3510');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3510', 'CHEM3511');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3512', 'CHEM3511');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2010', 'CHEM3512');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2011', 'CHEM3512');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2210', 'CHEM3512');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2211', 'CHEM3512');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2510', 'CHEM3513');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2512', 'CHEM3513');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2010', 'CHEM3610');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2011', 'CHEM3610');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2110', 'CHEM3610');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2210', 'CHEM3610');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM2310', 'CHEM3610');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3010', 'CHEM3610');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3610', 'CHEM3611');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3610', 'CHEM3612');
insert into prerequisites (prerequisiteID, courseID) values ('CHEM3610', 'CHEM3621');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'CHEM3711');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'BIOL1017');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'BIOL1018');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'BIOL1262');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'BIOL1263');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1017', 'BOTN2401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1018', 'BOTN2401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1262', 'BOTN2401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1263', 'BOTN2401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1017', 'BIOL2401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1018', 'BIOL2401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1262', 'BIOL2401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1263', 'BIOL2401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1017', 'BIOL2407');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1018', 'BIOL2407');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1262', 'BIOL2407');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1263', 'BIOL2407');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1017', 'BIOL2406');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1018', 'BIOL2406');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1262', 'BIOL2406');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1263', 'BIOL2406');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1017', 'BIOL2402');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1018', 'BIOL2402');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1262', 'BIOL2402');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1263', 'BIOL2402');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1017', 'BIOL2404');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1018', 'BIOL2404');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1262', 'BIOL2404');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1263', 'BIOL2404');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1017', 'BIOL2403');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1018', 'BIOL2403');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1262', 'BIOL2403');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1263', 'BIOL2403');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1017', 'BOTN2402');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1018', 'BOTN2402');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1262', 'BOTN2402');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1263', 'BOTN2402');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1017', 'ZOOL2403');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1018', 'ZOOL2403');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1262', 'ZOOL2403');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1263', 'ZOOL2403');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1017', 'ZOOL2404');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1018', 'ZOOL2404');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1262', 'ZOOL2403');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL1263', 'ZOOL2403');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'AGBU3012');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'AGBU3008');
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2402', 'AGCP3405');
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2402', 'AGCP3406');
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2401', 'AGCP3406');
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2402', 'AGCP3407');
insert into prerequisites (prerequisiteID, courseID) values ('AGCP2001', 'AGSL3001');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2402', 'BIOL3018');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2015', 'BIOL3018');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2403', 'BIOL3400');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2407', 'BIOL3400');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2406', 'BIOL3401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2406', 'BIOL3402');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2403', 'BIOL3403');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2404', 'BIOL3404');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2312', 'BIOL3404');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2401', 'BIOL3405');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2403', 'BIOL3405');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2403', 'BIOL3406');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2403', 'BIOL3407');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2403', 'BIOL3408');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2403', 'BIOL3409');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2401', 'BIOL3410');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2403', 'BIOL3410');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2402', 'BIOL3410');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2404', 'BIOL3410');
insert into prerequisites (prerequisiteID, courseID) values ('none', 'BIOL3411');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2401', 'BIOL3412');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2402', 'BIOL3412');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2402', 'BIOL3413');
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2402', 'BOTN3401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2312', 'BOTN3401');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2404', 'BOTN3402'); 
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2402', 'BOTN3403');
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2401', 'BOTN3403');
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2402', 'BOTN3404');
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2401', 'BOTN3404');
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2402', 'BOTN3405');
insert into prerequisites (prerequisiteID, courseID) values ('BOTN2401', 'BOTN3405');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2403', 'BOTN3406');
insert into prerequisites (prerequisiteID, courseID) values ('BIOL2401', 'ZOOL3403');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2401', 'ZOOL3404');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2402', 'ZOOL3404');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2403', 'ZOOL3404');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2404', 'ZOOL3404');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2401', 'ZOOL3405');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2402', 'ZOOL3405');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2403', 'ZOOL3405');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2404', 'ZOOL3405');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2401', 'ZOOL3406');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2402', 'ZOOL3406');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2403', 'ZOOL3406');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2404', 'ZOOL3406');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2401', 'ZOOL3407');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2402', 'ZOOL3407');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2403', 'ZOOL3407');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2404', 'ZOOL3407');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2401', 'ZOOL3408');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2402', 'ZOOL3408');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2403', 'ZOOL3408');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2404', 'ZOOL3408');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2401', 'ZOOL3409');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2402', 'ZOOL3409');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2403', 'ZOOL3409');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2404', 'ZOOL3409');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2401', 'ZOOL3410');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2402', 'ZOOL3410');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2403', 'ZOOL3410');
insert into prerequisites (prerequisiteID, courseID) values ('ZOOL2404', 'ZOOL3410');


insert into prerequisites (courseID,prerequisiteID)
values
       ('MATH2401', 'MATH1141'),('MATH2401', 'MATH1142'),('MATH2401', 'MATH1151'),('MATH2401', 'MATH1152'),
       ('MATH2230', 'MATH1180'),('MATH2403', 'MATH1142'),('MATH2403', 'MATH1141'),
       ('MATH2403', "['MATH1151','MATH1185']"),
       ('MATH2404', 'MATH1141'),('MATH2404', 'MATH1142'),('MATH2404', 'MATH1151'),('MATH2404', 'MATH1152'),
       ('MATH2407', 'MATH2404'),('MATH2410', 'MATH1141'),('MATH2410', 'MATH1152'),
       ('MATH2411', 'MATH1141'),
       ('MATH2411', 'MATH1152'),
       ('MATH2420', 'MATH1141'),
       ('MATH2420', 'MATH1142'),
       ('MATH2420', 'MATH1152'),
       ('MATH2421', 'MATH1141'),
       ('MATH2421', 'MATH1142'),
       ('MATH2421', 'MATH1152'),
       ('MATH2430', 'MATH1141'),
       ('MATH2430', 'MATH1152'),
       ('MATH2431', 'MATH1141'),
       ('MATH2431', 'MATH1142'),
       ('MATH2701', 'MATH1141'),
       ('MATH2701', 'MATH1142'),
       ('MATH2701', 'MATH1152'),
       ('MATH2702', 'MATH2701'),
       ('MATH2702', 'MATH2404'),
       ('STAT2001', 'STAT1001'),
       ('STAT2002', 'STAT1001'),
       ('STAT2002', 'MATH1142'),
       ('STAT2003', 'STAT1001'),
       ('STAT2003', 'STAT2001'),
       ('STAT2004', 'STAT1001'),
       ('STAT2004', 'MATH1141'),
       ('STAT2004', 'MATH2401'),
       ('MATH3155', 'MATH2401'),
       ('MATH3401', 'MATH2401'),
       ('MATH3402', 'MATH2401'),
       ('MATH3403', 'MATH2401'),
       ('MATH3404', 'MATH2410'),
       ('MATH3404', 'MATH2403'),
       ('MATH3405', 'MATH2410'),
       ('MATH3405', 'MATH2411'),
       ('MATH3411', 'MATH2411'),
       ('MATH3412', 'MATH2410'),
       ('MATH3414', 'MATH2404'),
       ('MATH3421', 'MATH2420'),
       ('MATH3422', 'MATH2401'),
       ('MATH3422', 'MATH2410'),
       ('MATH3422', 'MATH2420'),
       ('MATH3423', 'MATH2401'),
       ('MATH3423', 'MATH2420'),
       ('MATH3424', 'MATH2401'),
       ('MATH3425', 'MATH2401'),
       ('MATH3425', 'MATH2410'),
       ('MATH3801', 'MATH2701'),
       ('MATH3801', 'MATH2023'),
       ('MATH3801', 'MATH3048'),
       ('MATH3801', 'MATH2404'),
       ('MATH3802', 'MATH2702'),
       ('MATH3802', 'MATH2404'),
       ('MATH3802', 'STAT2001'), ('MATH3803', 'MATH3801'), ('MATH3804', 'MATH2701'),
       ('MATH3804', 'MATH2702'), ('MATH3805', 'MATH2701'), ('MATH3805', 'MATH2702'),('MATH3805', 'MATH3804'), ('MATH3806', 'MATH2701'),
       ('MATH3806', 'MATH2404'), ('STAT3001', 'STAT2001'), ('STAT3001', 'MATH2401'), ('STAT3002', 'MATH2404'), ('STAT3002', 'STAT2001'),
       ('STAT3003', 'STAT2001'),
       
       ('COMP1127', 'none'),('COMP1126', 'none'),('COMP1161', 'COMP1126'), ('COMP1161', 'COMP1127'), ('COMP2130', 'COMP1127'),('COMP2130', 'COMP1126'),('COMP2130', 'COMP1161'),
       ('COMP2140', 'COMP1126'), ('COMP2140', 'COMP1127'),('COMP2140', 'COMP1161'), 
       ('COMP2170', 'COMP2140'),('COMP2190', 'COMP1126'),('COMP2190', 'COMP1127'),('COMP2190', 'COMP1161'),
       ('COMP2201', 'COMP1210'),('COMP2201', 'MATH1152'),('COMP2211', 'COMP1126'),('COMP2211', 'COMP1127'),('COMP2211', 'COMP1161'), ('COMP2211', 'COMP1210'),
       ('COMP2340', 'COMP1126'),('COMP2340', 'COMP1127'),('COMP2340', 'COMP1161'),('COMP2340', 'COMP12106'),
       ('INFO2100', 'COMP1210'),('INFO2110', 'COMP1126'),('INFO2110', 'COMP1127'),('INFO2110', 'COMP1161'),
       ('INFO2180', 'COMP1126'),('INFO2180', 'COMP1127'),('INFO2180', 'COMP1161'),('COMP3101', 'COMP2340'),
       ('COMP3161', 'COMP2201'),('COMP3191', 'COMP2190'),('COMP3192', 'COMP3191'),('COMP3220', 'COMP2211'),('COMP3220', 'COMP2201'),
       ('COMP3652', 'COMP2211'),('COMP3702', 'COMP2201'),('COMP3801', 'COMP2340'),('COMP3801', 'COMP2140'),('COMP3901', 'COMP2140'),
       ('COMP3901', 'COMP2211'),('INFO3105', 'COMP2340'),('INFO3105', 'COMP2190'),('INFO3110', 'COMP2140'),('INFO3110', 'COMP2190'),
       ('INFO3155', 'COMP2190'),('INFO3170', 'COMP2140'),('INFO3180', 'INFO2180'),('INFO3435', 'COMP2140'),('INFO3435', 'COMP2180'),
       ('SWEN3130', 'COMP2140'),('SWEN3145', 'COMP2140'),('SWEN3145', 'COMP2170'),('SWEN3165', 'COMP2140'),('SWEN3165', 'COMP2170'),
       ('SWEN3185', 'COMP2210'),('SWEN3920', 'COMP2140'),('SWEN3920', 'COMP3130'),('SWEN3920', 'COMP3145'),
       
       
       ("ELET2405","ELET1400"),("ELET2405","ELET1405"),("ELET2415","ELET1400"),("ELET2415","ELET1405"),("ELET2410","ELET1400"),("ELET2410","PHYS1411"),
       ("ELET2410","PHYS1412"),("ELET2410","PHYS1421"),("ELET2410","PHYS1422"),("ELET2420","ELET1400"),("ELET2420","PHYS1411"),
       ("ELET2420","PHYS1412"),("ELET2420","PHYS1421"),("ELET2420","PHYS1422"),("ELET2430","ELET1400"),("ELET2430","PHYS1411"),
       ("ELET2430","PHYS1412"),("ELET2430","PHYS1421"),("ELET2430","PHYS1422"),("ELET2450","ELET1400"),("ELET2450","PHYS1411"),
       ("ELET2450","PHYS1412"),("ELET2450","PHYS1421"),("ELET2450","PHYS1422"),("ELET2460","ELET1400"),("ELET2460","PHYS1411"),
       ("ELET2460","PHYS1412"),("ELET2460","PHYS1421"),("ELET2460","PHYS1422"),("ELET2470","ELET1400"),("ELET2470","PHYS1411"),
       ("ELET2470","PHYS1412"),("ELET2470","PHYS1421"),("ELET2470","PHYS1422"),("ELET2480","ELET1400"),("ELET2480","PHYS1411"),
       ("ELET2480","PHYS1412"),("ELET2480","PHYS1421"),("ELET2480","PHYS1422"),
       ("PHYS2200","PHYS1411"),("PHYS2200","PHYS1412"),("PHYS2200","PHYS1421"),("PHYS2200","PHYS1422"),
       ("PHYS2296","PHYS1411"),("PHYS2296","PHYS1412"),("PHYS2296","PHYS1421"),("PHYS2296","PHYS1422"),
       ("PHYS2300","PHYS1411"),("PHYS2300","PHYS1412"),("PHYS2300","PHYS1421"),("PHYS2300","PHYS1422"),
       ("PHYS2351","PHYS1411"),("PHYS2351","PHYS1412"),("PHYS2351","PHYS1421"),("PHYS2351","PHYS1422"),
       ("PHYS2386","PHYS1411"),("PHYS2386","PHYS1412"),("PHYS2386","PHYS1421"),("PHYS2386","PHYS1422"),
       ("PHYS2396","PHYS1411"),("PHYS2396","PHYS1412"),("PHYS2396","PHYS1421"),("PHYS2396","PHYS1422"),
       ("PHYS2500","PHYS1411"),("PHYS2500","PHYS1412"),("PHYS2500","PHYS1421"),("PHYS2500","PHYS1422"),
       ("PHYS2561","PHYS1411"),("PHYS2561","PHYS1412"),("PHYS2561","PHYS1421"),("PHYS2561","PHYS1422"),
       ("PHYS2600","PHYS1411"),("PHYS2600","PHYS1412"),("PHYS2600","PHYS1421"),("PHYS2600","PHYS1422"),
       ("PHYS2671","PHYS1411"),("PHYS2671","PHYS1412"),("PHYS2671","PHYS1421"),("PHYS2671","PHYS1422"),
       ("ELET3405","ELET2405"),("ELET3405","ELET2415"),("ELET3430","ELET2410"),("ELET3430","ELET2430"),
       ("ELET3440","ELET2430"),("ELET3440","ELET2450"),("ELET3450","ELET2480"),("ELET3460","ELET2460"),
       ("ELET3470","ELET2480"),("ELET3480","ELET2480"),
       ("ELET3490","['ELET2410','ELET2450']"),
       ("ELET3600","PHYS3671"),("ELET3600","PHYS3681"),("ELET3611","ELET2420"),("PHYS3200","PHYS2300"),
       ("PHYS3300","PHYS2200"),("PHYS3341","PHYS2296"),("PHYS3351","PHYS2351"),
       ("PHYS3386","['ELET2480'],['PHYS2386']"),
       ("PHYS3389","PHYS2296"),("PHYS3395","PHYS1411"),("PHYS3395","PHYS1412"),("PHYS3395","PHYS1421"),
       ("PHYS3395","PHYS1422"),("PHYS3500","PHYS2500"),("PHYS3561","PHYS2561"),("PHYS3562","PHYS2561"),
       ("PHYS3565","PHYS2561"),("PHYS3661","PHYS1411"),("PHYS3661","PHYS1412"),("PHYS3661","PHYS1421"),("PHYS3661","PHYS1422"),
       ("PHYS3671","PHYS3661"),("PHYS3681","PHYS2671"),("PHYS3681","PHYS3661"),("MATH2230","MATH1185"),("MATH2230","MATH1141"),
        
       ("GEOG2131","GEOG1131"),("GEOG2131","GEOG1132"),("GEOG2132","GEOG1131"),("GEOG2132","GEOG1132"),
       ("GEOG2231","GEOG1231"),("GEOG2231","GEOG1232"),("GEOG2232","GEOG1231"),("GEOG2232","GEOG1232"),
       ("GEOG2331","GEOG1131"),("GEOG2331","GEOG1132"),("GEOG2331","GEOG1231"),("GEOG2331","GEOG1232"),
       ("GEOG2233","GEOG1231"),("GEOG2233","GEOG1232"),("GEOG3131","GEOG2132"),
       ("GEOG3132","['GEOG1232','GEOG2132']"),("GEOG3333","GEOG2131"),("GEOG3334","GEOG2231"),("GEOG3334","GEOG2232"),("GEOG3334","GEOG2132"),
       ("GEOG3430","GEOG2231"),("GEOG3231","['GEOG2231','GEOL2202']"),("GGEO3233","GGEO2233"),
       
       ("GEOL2201","GEOL1101"),("GEOL2201","GEOL1102"),("GEOL2202","GEOL1101"),("GEOL2202","GEOL1102"),
       ("GEOL2203","GEOL1103"),("GEOL2203","GEOL1101"),("GEOL2204","GEOL1101"),("GEOL2204","GEOL1102"),
       ("GEOL2204","GEOL1104"),("GEOL2205","GEOL1101"),("GEOL2205","GEOL1102"),("GEOL2205","GEOL1104"),
       ("GGEO2233","GEOL1102"),("GGEO2233","GEOL1104"),("GEOL3100","GEOL2204"),("GEOL3002","GEOL2205"),
       ("GEOL3104","GEOL2202"),("GEOL3105","GEOL2204"),("GEOL3107","GEOL2204"),("GEOL3108","GEOL2203"),
       ("GGEO3231","GEOG2231"),("GGEO3231","GEOL2202"),("GGEO3232","GEOG2232"),("GGEO3332","GEOG2231"),
       ("GGEO3332","GEOG2232"),("GGEO3401","GEOL2204"),("GGEO3401","GGEO2332");
       
  