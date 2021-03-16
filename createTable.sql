CREATE TABLE department(
	D_NAME varchar(20),
	BUILDING varchar(20),
	BUDGET numeric(12,2)
	);
	


CREATE TABLE course(
	C_ID VARCHAR(7),
	TITLE VARCHAR(50),
	D_NAME VARCHAR(20),
	CRED NUMERIC(2,0)
	
	);

CREATE TABLE instructor(
	INST_ID VARCHAR(5),
	INST_NAME VARCHAR(20),
	D_NAME VARCHAR(20),
	SAL NUMERIC(8,2)	
);

CREATE TABLE section(
	C_ID VARCHAR(7),
	SEC_ID INT,
	SEM VARCHAR(10),
	YEAR NUMERIC(4,0)	
);

CREATE TABLE student(
	S_ID VARCHAR(5),
	S_NAME VARCHAR(20) NOT NULL,
	D_NAME VARCHAR(20),
	TOT_CRED INT	
);

CREATE TABLE takes(
	S_ID VARCHAR(5),
	C_ID VARCHAR(7),
	SEC_ID INT,
	SEM VARCHAR(10),
	YEAR NUMERIC(4,0),
	GRADE INT
);

CREATE TABLE teaches(
	INST_ID VARCHAR(5),
	C_ID VARCHAR(7),
	SEC_ID INT,
	SEM VARCHAR(10),
	YEAR NUMERIC(4,0)	
);



INSERT INTO department VALUES
	('Biology', 'Watson', 90000),
	('Comp. Sci.', 'Taylor', 100000),
	('Elec. Eng.', 'Taylor', 85000),
	('Finance', 'Painter', 120000),
	('History', 'Painter', 50000),
	('Music', 'Packard', 80000),
	('Physics', 'Watson', 70000);




INSERT INTO course VALUES
	('BIO-101', 'Intro. to Biology', 'Biology', 4),
	('BIO-301', 'Genetics', 'Biology', 4),
	('BIO-399', 'Computational Biology', 'Biology', 3),
	('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4),
	('CS-190', 'Game Design', 'Comp. Sci.', 4),
	('CS-315', 'Robotics', 'Comp. Sci.', 3),
	('CS-319', 'Image Processing', 'Comp. Sci.', 3),
	('CS-347', 'Database System Concepts', 'Comp. Sci.', 3),
	('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', 3),
	('FIN-201', 'Investment Banking', 'Finance', 3),
	('HIS-351', 'World History', 'History', 3),
	('MU-199', 'Music Video Production', 'Music', 3),
	('PHY-101', 'Physical Principles', 'Physics', 4);



INSERT INTO instructor VALUES
	('22222', 'Einstein', 'Physics', 95000),
	('12121', 'Wu', 'Finance', 90000),
	('32343', 'El Said', 'History', 60000),
	('45565', 'Katz', 'Comp. Sci.', 75000),
	('98345', 'Kim', 'Elec. Eng.', 80000),
	('76766', 'Crick', 'Biology', 72000),
	('10101', 'Srinivasan', 'Comp. Sci.', 65000),
	('58583', 'Califieri', 'History', 62000),
	('83821', 'Brandt', 'Comp. Sci.', 92000),
	('15151', 'Mozart', 'Music', 40000),
	('33456', 'Gold', 'Physics', 87000),
	('76543', 'Singh', 'Finance', 80000);






INSERT INTO section VALUES
	('BIO-101', 1, 'Summer', 2009),
	('BIO-301', 1, 'Summer', 2010),
	('CS-101', 1, 'Fall', 2009),
	('CS-101', 1, 'Spring', 2010),
	('CS-190', 1, 'Spring', 2009),
	('CS-190', 2, 'Spring', 2009),
	('CS-315', 1, 'Spring', 2010),
	('CS-319', 1, 'Spring', 2010),
	('CS-319', 2, 'Spring', 2010),
	('CS-347', 1, 'Fall', 2009),
	('EE-181', 1, 'Spring', 2009),
	('FIN-201', 1, 'Spring', 2010),
	('HIS-351', 1, 'Spring', 2010),
	('MU-199', 1, 'Spring', 2010),
	('PHY-101', 1, 'Fall', 2009);


INSERT INTO student VALUES
	('00128', 'Zhang', 'Comp. Sci.', 102),
	('12345', 'Shankar', 'Comp. Sci.', 32),
	('19991', 'Brandt', 'History', 80),
	('23121', 'Chavez', 'Finance', 110),
	('44553', 'Peltier', 'Physics', 56),
	('45678', 'Levy', 'Physics', 46),
	('54321', 'Williams', 'Comp. Sci.', 54),
	('55739', 'Sanchez', 'Music', 38),
	('70557', 'Snow', 'Physics', 0),
	('76543', 'Brown', 'Comp. Sci.', 58),
	('76653', 'Aoi', 'Elec. Eng.', 60),
	('98765', 'Bourikas', 'Elec. Eng.', 98),
	('98988', 'Tanaka', 'Biology', 120);



INSERT INTO takes VALUES
	('00128', 'CS-101', 1, 'Fall', 2009, 10),
	('00128', 'CS-347', 1, 'Fall', 2009, 9),
	('12345', 'CS-101', 1, 'Fall', 2009, 5),
	('12345', 'CS-190', 2, 'Spring', 2009, 10),
	('12345', 'CS-315', 1, 'Spring', 2010, 10),
	('12345', 'CS-347', 1, 'Fall', 2009, 10),
	('19991', 'HIS-351', 1, 'Spring', 2010, 7),
	('23121', 'FIN-201', 1, 'Spring', 2010, 6),
	('44553', 'PHY-101', 1, 'Fall', 2009, 6),
	('45678', 'CS-101', 1, 'Fall', 2009, 3),
	('45678', 'CS-101', 1, 'Spring', 2010, 8),
	('45678', 'CS-319', 1, 'Spring', 2010, 7),
	('54321', 'CS-101', 1, 'Fall', 2009, 9),
	('54321', 'CS-190', 2, 'Spring', 2009, 8),
	('55739', 'MU-199', 1, 'Spring', 2010, 9),
	('76543', 'CS-101', 1, 'Fall', 2009, 10),
	('76543', 'CS-319', 2, 'Spring', 2010, 10),
	('76653', 'EE-181', 1, 'Spring', 2009, 5),
	('98765', 'CS-101', 1, 'Fall', 2009, 4),
	('98765', 'CS-315', 1, 'Spring', 2010, 7),
	('98988', 'BIO-101', 1, 'Summer', 2009, 9),
	('98988', 'BIO-301', 1, 'Summer', 2010, null);








INSERT INTO teaches VALUES
	('10101', 'CS-101', 1, 'Fall', 2009),
	('10101', 'CS-315', 1, 'Spring', 2010),
	('10101', 'CS-347', 1, 'Fall', 2009),
	('12121', 'FIN-201', 1, 'Spring', 2010),
	('15151', 'MU-199', 1, 'Spring', 2010),
	('22222', 'PHY-101', 1, 'Fall', 2009),
	('32343', 'HIS-351', 1, 'Spring', 2010),
	('45565', 'CS-101', 1, 'Spring', 2010),
	('45565', 'CS-319', 1, 'Spring', 2010),
	('76766', 'BIO-101', 1, 'Summer', 2009),
	('76766', 'BIO-301', 1, 'Summer', 2010),
	('83821', 'CS-190', 1, 'Spring', 2009),
	('83821', 'CS-190', 2, 'Spring', 2009),
	('83821', 'CS-319', 2, 'Spring', 2010),
	('98345', 'EE-181', 1, 'Spring', 2009);


alter table section add BUILDING varchar(20);
