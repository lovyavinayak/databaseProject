CREATE TABLE BUILDING(
	Building_ID CHAR(4) PRIMARY KEY,
	Building_Name CHAR(200) UNIQUE NOT NULL,
	Number_of_Rooms INTEGER);

INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('AH', 'Ardian Hadiyanto School of Engineering', 75);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('LV', 'Lovya Vinayak School of Business and Management', 60);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('BO', 'Barrack Obama School of Political Science', 100);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('EC', 'Ebru Cenkaya School of Arts and Humanities', 50);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('CL', 'Chao Li School of Mathematics and Natural Sciences', 80);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('MK', 'Ming Koon School of Behavioral and Brain Sciences', 55);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('JG', 'James Gosling School of Interdisciplinary Studies', 85);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('BS', 'Bjarne Stroustrup School of Emerging Communication', 65);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('BK', 'Bryan Kernighan School of Economic Sciences', 70);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('FG', 'Frank Gehry School of Architecture', 110);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('MT', 'Margareth Thatcher School of Education', 40);
INSERT INTO BUILDING (Building_ID, Building_Name, Number_of_Rooms)
	VALUES ('GL', 'George Lazenby School of Nursing', 45);


SELECT * 
FROM BUILDING;


--DROP TABLE BUILDING

CREATE TABLE ROOM(
	Room_No CHAR(10) PRIMARY KEY,
	Building_ID CHAR(4),
	CONSTRAINT RoomBuildingFK FOREIGN KEY (Building_ID) REFERENCES BUILDING(Building_ID)
		ON UPDATE CASCADE ON DELETE CASCADE);

INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('AH-001', 'AH');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('AH-121', 'AH');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('LV-231', 'LV');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('MK-444', 'MK');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('BO-578', 'BO');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('JG-321', 'JG');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('EC-987', 'EC');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('BS-046', 'BS');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('CL-526', 'CL');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('BK-673', 'BK');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('MT-839', 'MT');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('GL-049', 'GL');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('AH-032', 'AH');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('LV-232', 'LV');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('EC-997', 'EC');
INSERT INTO ROOM (Room_No, Building_ID)
	VALUES ('CL-516', 'CL');



SELECT * 
FROM ROOM;

--DROP TABLE ROOM;


CREATE TABLE DEPARTMENT(
	Department_ID CHAR(10) PRIMARY KEY,
	Department_Name CHAR(30),
	Building_ID CHAR(4),
	CONSTRAINT DepartmentBuildingFK FOREIGN KEY (Building_ID) REFERENCES BUILDING(Building_ID)
		ON UPDATE CASCADE ON DELETE CASCADE);

INSERT INTO DEPARTMENT (Department_ID, Department_Name, Building_ID)
	VALUES ('001', 'Engineering', 'AH');
INSERT INTO DEPARTMENT (Department_ID, Department_Name, Building_ID)
	VALUES ('002', 'Mathematics', 'CL');
INSERT INTO DEPARTMENT (Department_ID, Department_Name, Building_ID)
	VALUES ('003', 'Historical Study', 'EC');
INSERT INTO DEPARTMENT (Department_ID, Department_Name, Building_ID)
	VALUES ('004', 'Literature', 'EC');
INSERT INTO DEPARTMENT (Department_ID, Department_Name, Building_ID)
	VALUES ('005', 'Business and Management', 'LV');
INSERT INTO DEPARTMENT (Department_ID, Department_Name, Building_ID)
	VALUES ('006', 'Public Communication', 'BS');
INSERT INTO DEPARTMENT (Department_ID, Department_Name, Building_ID)
	VALUES ('007', 'Science', 'CL');
INSERT INTO DEPARTMENT (Department_ID, Department_Name, Building_ID)
	VALUES ('008', 'Arts', 'EC');
INSERT INTO DEPARTMENT (Department_ID, Department_Name, Building_ID)
	VALUES ('009', 'Musics', 'EC');
INSERT INTO DEPARTMENT (Department_ID, Department_Name, Building_ID)
	VALUES ('010', 'Theology', 'EC');


SELECT *
FROM DEPARTMENT;


--DROP TABLE DEPARTMENT

CREATE TABLE MAJOR(
	Major_Name CHAR(50) PRIMARY KEY,
	Department_ID CHAR(10),
	CONSTRAINT MajorDepartmentIDFK FOREIGN KEY (Department_ID) REFERENCES DEPARTMENT(Department_ID)
		ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Computer Science', '001');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Computer Engineering', '001');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Electrical Engineering', '001');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Statistics', '002');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Applied Mathematics', '002');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Actuary Science', '002');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('US History', '003');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('World History', '003');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('European History', '003');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('English Literature', '004');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Poetry', '004');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Marketing', '005');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Accountant', '005');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Finance', '005');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Speech Therapist', '006');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Physics', '007');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Chemistry', '007');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Biology', '007');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Visual Art', '008');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Dance', '008');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Film Studies', '008')
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Music Theory and Composition', '009');
INSERT INTO MAJOR (Major_Name, Department_ID)
	VALUES ('Religious Study', '010');

SELECT *
FROM MAJOR;

--DROP TABLE MAJOR;

CREATE TABLE COURSE(
	Course_ID CHAR(20) NOT NULL,
	Section_ID CHAR(5) UNIQUE,
	Room_No CHAR(10),
	PRIMARY KEY (Course_ID),
	CONSTRAINT CourseRoomNumFK FOREIGN KEY (Room_No) REFERENCES ROOM(Room_No)
		ON DELETE NO ACTION ON UPDATE NO ACTION);

INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('CS-4347', '0U1', 'AH-001');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('CS-4375', '0W1', 'AH-121');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('HIST-1301', '5H4', 'EC-987');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('HIST-1302', '5H8', 'EC-987');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('MUSI-1306', '7Y3', 'EC-987');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('ECON-2301', '5J4', 'LV-231');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('ECON-2302', '1Z0', 'LV-231');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('MATH-2413', '3F5', 'CL-526');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('MATH-2414', '0J2', 'CL-526');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('CHEM-1411', '2U0', 'CL-526');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('SPCH-1315', '5T1', 'BS-046');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('PSYC-2301', '6K6', 'MK-444');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('PSYC-2302', '6K9', 'MK-444');
INSERT INTO COURSE (Course_ID, Section_ID, Room_No)
	VALUES ('HIST-1303', '5H5', 'EC-987');


SELECT *
FROM COURSE;

--DROP TABLE COURSE;

CREATE TABLE COURSE1(
	Course_ID CHAR(20) PRIMARY KEY,
	Course_Name CHAR(150),
	Prereq_ID CHAR(20),
	Section_Prereq_ID CHAR(5),
	Department_ID CHAR(10),
	CONSTRAINT CoursePrereqIDFK FOREIGN KEY (Course_ID) REFERENCES COURSE (Course_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT CourseDepartmentIDFK FOREIGN KEY (Department_ID) REFERENCES DEPARTMENT(Department_ID)
		ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('CS-4347', 'Database Systems', NULL, NULL, '001');
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('CS-4375', 'Introduction to Machine Learning', NULL, NULL, '001');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('HIST-1301', 'US History 1', NULL, NULL, '003');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('HIST-1302', 'US History 2', 'HIST-1302', '5H4', '003');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('MUSI-1306', 'Fundamentals of Music', NULL, NULL, '009');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('ECON-2301', 'Principles of Macroeconomics', NULL, NULL, '005');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('ECON-2302', 'Principles of Microeconomics', NULL, NULL, '005');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('MATH-2413', 'Differential Calculus', NULL, NULL, '002');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('MATH-2414', 'Integral Calculus', 'MATH-2413', '3F5', '002');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('CHEM-1411', 'General Chemistry 1', NULL, NULL, '007');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('SPCH-1315', 'Public Speaking', NULL, NULL, '006');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('PSYC-2301', 'General Physchology', NULL, NULL, '007');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('PSYC-2302', 'General Physchology', NULL, NULL, '007');	
INSERT INTO COURSE1 (Course_ID, Course_Name, Prereq_ID, Section_Prereq_ID, Department_ID)
	VALUES ('HIST-1303', 'US History 1 & 2', NULL, NULL, '003');	

SELECT *
FROM COURSE1;

--DROP TABLE COURSE1

CREATE TABLE SCHEDULE(
	Course_ID CHAR(20) NOT NULL,
	Section_ID CHAR(5) UNIQUE,
	The_Days CHAR(10),
	Start_Time TIME(0),
	End_Time TIME(0),
	PRIMARY KEY (Course_ID, Section_ID),
	CONSTRAINT ScheduleCourseIDFK FOREIGN KEY (Course_ID) REFERENCES COURSE(Course_ID)
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ScheduleSectionIDFK FOREIGN KEY (Section_ID) REFERENCES COURSE(Section_ID));

INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('CHEM-1411', '2U0', 'MW', '08:00', '09:15');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('MATH-2413', '3F5', 'TR', '08:00', '09:15');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('MATH-2414', '0J2', 'MW', '09:30', '10:45');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('CS-4347', '0U1', 'F', '08:00', '11:15');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('CS-4375', '0W1', 'MW', '15:00', '17:15');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('ECON-2301', '5J4', 'TR', '12:00', '13:15');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('ECON-2302', '1Z0', 'MW', '09:00', '10:15');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('HIST-1301', '5H4', 'M', '18:00', '21:00');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('HIST-1302', '5H8', 'W', '18:00', '21:00');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('MUSI-1306', '7Y3', 'TR', '14:45', '16:00');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('PSYC-2301', '6K6', 'MW', '08:00', '09:15');
INSERT INTO SCHEDULE (Course_ID, Section_ID, The_Days, Start_Time, End_Time)
	VALUES ('SPCH-1315', '5T1', 'TR', '11:00', '12:45');

SELECT *
FROM SCHEDULE;

--DROP TABLE SCHEDULE;

CREATE TABLE STUDENT(
	StdSSN CHAR(9) PRIMARY KEY, 
	StdFName CHAR(50) NOT NULL,
	StdMName CHAR(50), 
	StdLName CHAR(50) NOT NULL,
	StdBoD DATE NOT NULL,
	Sex CHAR(1),
	StdAddress CHAR(50),
	StdCity CHAR(50),
	StdState CHAR(5),
	StdZip CHAR(10),
	Std_ID CHAR(9) UNIQUE,
	Std_Email CHAR(50) UNIQUE,
	Std_Phone CHAR(10),
	Std_Race CHAR(50),
	StdMajor CHAR(50) NOT NULL,
	StdMinor CHAR(50),
	StdGPA DECIMAL(3,2),
	Tot_Credit_Hours INT,
	Est_Grad_Year INT,
	Degree_Cat CHAR(20),
	CONSTRAINT StudentMajorFK FOREIGN KEY (StdMajor) REFERENCES MAJOR(Major_Name)
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT StudentMinorFK FOREIGN KEY (StdMinor) REFERENCES MAJOR(Major_Name)
		ON DELETE NO ACTION ON UPDATE NO ACTION);
		
INSERT INTO STUDENT (StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (364987021, 'Timothy', 'Franklin', 'Farage', '1996-03-21', 'M', '3400 Custer Road', 'Dallas', 'TX', '75001', '849266037', 'tff@university.edu', '2147777666', 'Caucasian', 'Computer Science', NULL, 3.9, 93, 2018, 'Undergraduate');
INSERT INTO STUDENT (StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (749672398, 'Pushpa', NULL, 'Kumar', '1990-12-01', 'F', '2390 Legacy Drive', 'Dallas', 'TX', '75043', '849266038', 'pk@university.edu', '2146587987', 'Asian', 'Applied Mathematics', 'Computer Science', 3.0, 115, 2017, 'Undergraduate');
INSERT INTO STUDENT (StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (254767946, 'Anjum', NULL, 'Chida', '1991-03-21', 'F', '1111 Independent Street', 'Plano', 'TX', '75023', '849266039', 'ac@university.edu', '4695639803', 'Asian', 'Biology', NULL, 3.3, 45, 2020, 'Undergraduate');
INSERT INTO STUDENT (StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (637593748, 'Karen', 'Jenner', 'Mazidi', '1995-07-18', 'F', '9800 Parker Road', 'Arlington', 'TX', '75052', '849266040', 'kjm@university.edu', '4695275931', 'Caucasian', 'Accountant', 'Applied Mathematics', 2.7, 33, 2021, 'Undergraduate');
INSERT INTO STUDENT(StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (987598234, 'Shirley', 'Maya', 'Wilson', '1993-11-05', 'F', '6322 Coit Boulevard', 'Richardson', 'TX', '75081', '849266041', 'smw@university.edu', '8328593748', 'African American', 'Dance', 'Religious Study', 2.0, 15, 2022, 'Undegraduate');
INSERT INTO STUDENT(StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (978397847, 'Tristan', NULL, 'Whalen', '1994-04-30', 'M', '2341 Alma Drive', 'Allen', 'TX', '75002', '849266042', 'tw@university.edu', '8327597047', 'Caucasian', 'Statistics', NULL, 4.0, 156, 2018, 'Graduate');
INSERT INTO STUDENT(StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (859306328, 'Richard', 'Kim', 'Min', '1996-08-11', 'M', '3501 Preston Road', 'Dallas', 'TX', '75205', '849266043', 'rkm@university.edu', '2227677999', 'Asian', 'Speech Therapist', NULL, 3.5, 144, 2019, 'Graduate');
INSERT INTO STUDENT(StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (751027589, 'Chi', NULL, 'Gao', '1990-02-28', 'M', '321 Jefferson Drive', 'Carrolton', 'TX', '75006', '849266044', 'cg@university.edu', '8173359143', 'Asian', 'Visual Art', NULL, 3.86, 101, 2019, 'Undergraduate');
INSERT INTO STUDENT(StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (123498798, 'Linda', 'Fransesca', 'Morales', '1997-09-10', 'F', '4432 Monoalics Road', 'McKinney', 'TX', '75013', '849266045', 'lfm@university.edu', '2145125111', 'Hispanic', 'Physics', 'Biology', 2.33, 97, 2020, 'Undergraduate');
INSERT INTO STUDENT(StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (748563548, 'Peter', 'Jeremy', 'Parker', '1994-10-16', 'M', '1984 Jupiter Road', 'Plano', 'TX', '75023', '849266046', 'pjp@university.edu', '9723948778', 'Caucasian', 'Electrical Engineering', NULL, 4.0, 131, 2017, 'Undergraduate');
INSERT INTO STUDENT(StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (287643155, 'Joseph', NULL, 'Jeremiah', '1991-04-17', 'M', '281 Salbture Drive', 'Allen', 'TX', '75002', '849266047', 'jj@university.edu', '8327197047', 'Caucasian', 'Computer Science', NULL, 2.0, 126, 2018, 'Graduate');
INSERT INTO STUDENT(StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (536736145, 'William', 'Kim', 'Kwon', '1992-08-13', 'M', '350 Saint Road', 'Dallas', 'TX', '75205', '849266048', 'wkm@university.edu', '2237677999', 'Asian', 'US History', 'World History', 2.5, 111, 2019, 'Graduate');
INSERT INTO STUDENT(StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (982734580, 'Samanta', NULL, 'Sphynx', '1985-05-30', 'F', '281 Apkanamkyahe Drive', 'Allen', 'TX', '75002', '849266049', 'ss@university.edu', '8327197474', 'Caucasian', 'Finance', NULL, 3.0, 156, 2020, 'Graduate');
INSERT INTO STUDENT(StdSSN, StdFName, StdMName, StdLName, StdBoD, Sex, StdAddress, StdCity, StdState, StdZip, Std_ID, Std_Email, Std_Phone, Std_Race, StdMajor, StdMinor, StdGPA, Tot_Credit_Hours, Est_Grad_Year, Degree_Cat)
	VALUES (247865534, 'Bruce', 'Kim', 'Lee', '1982-06-29', 'M', '350 Anthem Road', 'Dallas', 'TX', '75205', '849266050', 'bl@university.edu', '2237345915', 'Asian', 'Chemistry', 'Biology', 3.2, 161, 2021, 'Graduate');


SELECT *
FROM STUDENT;

--DROP TABLE STUDENT;

CREATE TABLE TAKES(
	Student_ID CHAR(9) NOT NULL,
	Course_ID CHAR(20) NOT NULL,
	Section_ID CHAR(5) NOT NULL, 
	Grade CHAR(3),
	PRIMARY KEY (Student_ID, Course_ID, Section_ID),
	CONSTRAINT TakesStudentIDFK FOREIGN KEY (Student_ID) REFERENCES STUDENT(Std_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT TakesCourseIDFK FOREIGN KEY (Course_ID) REFERENCES COURSE(Course_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT TakesSectionIDFK FOREIGN KEY (Section_ID) REFERENCES COURSE(Section_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION);

INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266037', 'CS-4347', '0U1', 'A-');
INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266037', 'CS-4375', '0W1', 'A');
INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266037', 'HIST-1302', '5H8', 'A');
INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266037', 'CHEM-1411', '2U0', 'B+');
INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266037', 'SPCH-1315', '5T1', 'C');
INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266042', 'MATH-2414', '0J2', 'B+');
INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266042', 'HIST-1302', '5H8', 'A-');
INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266042', 'PSYC-2301', '6K6', 'C+');
INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266042', 'ECON-2302', '1Z0', 'A+');
INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266042', 'CS-4375', '0W1', 'A');
INSERT INTO TAKES (Student_ID, Course_ID, Section_ID, Grade)
	VALUES ('849266042', 'CHEM-1411', '2U0', 'D');

SELECT *
FROM TAKES;

--DROP TABLE TAKES;


CREATE TABLE PROFESSOR(
	ProfSSN CHAR(9) PRIMARY KEY, 
	ProfFName CHAR(50) NOT NULL,
	ProfMName CHAR(50),
	ProfLName CHAR(50) NOT NULL,
	ProfBoD DATE NOT NULL,
	Sex CHAR(1),
	Prof_Department CHAR(10),
	ProfAddress CHAR(50),
	ProfCity CHAR(50),
	ProfState CHAR(5),
	ProfZip CHAR(10),
	Prof_ID CHAR(9) UNIQUE,
	Prof_Email CHAR(50) UNIQUE,
	Prof_Phone CHAR(10),
	Prof_Race CHAR(50),
	Office_No CHAR(10),
	Office_Days CHAR(10),
	Office_Start_Hours TIME(0),
	Office_End_Hours TIME(0),
	Salary INT,
	Rating CHAR(20),
	CONSTRAINT ProfessorDepartmentIDFK FOREIGN KEY (Prof_Department) REFERENCES DEPARTMENT(Department_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT OfficeRoomNumFK FOREIGN KEY (Office_No) REFERENCES ROOM(Room_No)
		ON DELETE NO ACTION ON UPDATE NO ACTION);

INSERT INTO PROFESSOR VALUES ('654356234', 'Sandeep', 'Shahi', 'Thokari', '1972-09-25', 'M', '001', '210 Spring Creek Pkwy.', 'Plano' , 'TX', '75023', '451245765', 'sst@university.edu', '4693425443', 'Asian', 'AH-032', 'M', '09:30', '10:00', 120000, 'GOOD');
INSERT INTO PROFESSOR VALUES ('214987555', 'Nhut', NULL, 'Nguyen', '1970-01-30', 'M', '001', '3000 Greenvile Avenue', 'Plano' , 'TX', '75023', '451245766', 'nn@university.edu', '2149872133', 'Asian', 'LV-232', 'F', '11:30', '12:00', 150000, 'RECOMMENDED');
INSERT INTO PROFESSOR VALUES ('615819765', 'Franklin', 'Sebastian', 'Jackson', '1968-11-04', 'M', '002', '1904 Lorraine Avenue', 'Allen' , 'TX', '75002', '451245767', 'fsj@university.edu', '9723392393', 'Caucasian', 'CL-516', 'R', '09:30', '10:00', 100000, 'EXCELLENT');
INSERT INTO PROFESSOR VALUES ('189726551', 'Jennifer', 'Herrera', 'Lopez', '1969-12-31', 'F', '001', '2146 Achiles Pkwy.', 'Richardson' , 'TX', '75083', '451245768', 'jhl@university.edu', '5125552155', 'Hispanic', NULL, NULL, NULL, NULL, 80000, 'MODERATE');
INSERT INTO PROFESSOR VALUES ('578659852', 'Shaquille', NULL, 'ONeal', '1966-10-22', 'M', '003', '6253 Jesus Christ Boulevard', 'Richardson' , 'TX', '75083', '451245769', 'so@university.edu', '4692399989', 'African American', 'EC-997', 'W', '14:30', '15:00', 50000, 'MODERATE');
INSERT INTO PROFESSOR VALUES ('238786519', 'Glen', NULL, 'Grimes', '1965-04-15', 'M', '008', '1535 Belt Line Avenue', 'Plano' , 'TX', '75023', '451245770', 'gg@university.edu', '2168537365', 'Caucasian', 'EC-997', 'W', '15:00', '15:30', 70000, 'GOOD');
INSERT INTO PROFESSOR VALUES ('124976589', 'Michael', NULL, 'Jackson', '1960-02-01', 'M', '009', '1451 Beverly Hills Driveway', 'Allen' , 'TX', '75002', '451245771', 'mj@university.edu', '2142765669', 'African American', NULL, NULL, NULL, NULL, 115000, 'EXCELLENT');
INSERT INTO PROFESSOR VALUES ('248976515', 'YiBi', 'Yeung', 'Leung', '1966-11-11', 'F', '005', '2682 Chase Oaks Drive', 'Plano' , 'TX', '75023', '451245772', 'yl@university.edu', '3187264712', 'Asian', 'LV-232', 'F', '12:00', '12:30', 80000, 'MODERATE');
INSERT INTO PROFESSOR VALUES ('874565161', 'James', NULL, 'Rodriguez', '1972-06-27', 'M', '006', '2734 Lincoln Road', 'Allen' , 'TX', '75002', '451245773', 'jr@university.edu', '1251659999', 'Hispanic', NULL, NULL, NULL, NULL, 87000, 'MODERATE');
INSERT INTO PROFESSOR VALUES ('788656987', 'Bastian', NULL, 'Schweinsteiger', '1961-08-23', 'M', '010', '1514 K Avenue', 'Plano' , 'TX', '75023', '451245774', 'bs@university.edu', '4127651554', 'Caucasian', NULL, NULL, NULL, NULL, 80000, 'EXCELLENT');
INSERT INTO PROFESSOR VALUES ('XXXXXXXXX', 'TBA', 'TBA', 'TBA', '1111-11-11', NULL, NULL, NULL, NULL, NULL, NULL, '000000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SELECT *
FROM PROFESSOR;


--DROP TABLE PROFESSOR


CREATE TABLE PROFESSOR1(
	Dnumber CHAR(10),
	Dname CHAR(50),
	Dmgr_SSN CHAR(9),
	PRIMARY KEY (Dnumber, Dmgr_SSN),
	CONSTRAINT Professor1DepartmentIDFK FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Department_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT Professor1SSNFK FOREIGN KEY (Dmgr_SSN) REFERENCES PROFESSOR(ProfSSN)
		ON DELETE NO ACTION ON UPDATE NO ACTION);

INSERT INTO PROFESSOR1 VALUES ('001', 'Engineering', '654356234');
INSERT INTO PROFESSOR1 VALUES ('001', 'Engineering', '214987555');
INSERT INTO PROFESSOR1 VALUES ('002', 'Mathematics', '615819765');
INSERT INTO PROFESSOR1 VALUES ('001', 'Engineering', '189726551');
INSERT INTO PROFESSOR1 VALUES ('003', 'Historical Study', '578659852');
INSERT INTO PROFESSOR1 VALUES ('008', 'Arts', '238786519');
INSERT INTO PROFESSOR1 VALUES ('009', 'Musics', '124976589');
INSERT INTO PROFESSOR1 VALUES ('005', 'Business and Management', '248976515');
INSERT INTO PROFESSOR1 VALUES ('006', 'Public Communication', '874565161');
INSERT INTO PROFESSOR1 VALUES ('010', 'Theology', '788656987');
	 

SELECT *
FROM PROFESSOR1;


--DROP TABLE PROFESSOR1;


CREATE TABLE LECTURES(
	Prof_ID CHAR(9) NOT NULL,
	Course_ID CHAR(20) NOT NULL,
	Section_ID CHAR(5) NOT NULL,
	PRIMARY KEY (Prof_ID, Course_ID, Section_ID),
	CONSTRAINT LecturesProfIDFK FOREIGN KEY (Prof_ID) REFERENCES PROFESSOR(Prof_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT LecturesCourseIDFK FOREIGN KEY (Course_ID) REFERENCES COURSE(Course_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT LecturesSectionIDFK FOREIGN KEY (Section_ID) REFERENCES COURSE(Section_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION);

INSERT INTO LECTURES (Prof_ID, Course_ID, Section_ID)
	VALUES ('000000000', 'CHEM-1411', '2U0');
INSERT INTO LECTURES (Prof_ID, Course_ID, Section_ID)
	VALUES ('451245768', 'CS-4347', '0U1');
INSERT INTO LECTURES (Prof_ID, Course_ID, Section_ID)
	VALUES ('451245765', 'CS-4375', '0W1');
INSERT INTO LECTURES (Prof_ID, Course_ID, Section_ID)
	VALUES ('451245773', 'SPCH-1315', '5T1');
INSERT INTO LECTURES (Prof_ID, Course_ID, Section_ID)
	VALUES ('451245772', 'ECON-2302', '1Z0');
INSERT INTO LECTURES (Prof_ID, Course_ID, Section_ID)
	VALUES ('451245772', 'ECON-2301', '5J4');
INSERT INTO LECTURES (Prof_ID, Course_ID, Section_ID)
	VALUES ('451245769', 'HIST-1302', '5H8');
INSERT INTO LECTURES (Prof_ID, Course_ID, Section_ID)
	VALUES ('451245767', 'MATH-2414', '0J2');
INSERT INTO LECTURES (Prof_ID, Course_ID, Section_ID)
	VALUES ('451245767', 'PSYC-2301', '6K6');
INSERT INTO LECTURES (Prof_ID, Course_ID, Section_ID)
	VALUES ('000000000', 'MUSI-1306', '7Y3');

SELECT *
FROM LECTURES;

--DROP TABLE LECTURES;


CREATE TABLE TA(
	Student_ID CHAR(9) NOT NULL,
	Course_ID CHAR(20) NOT NULL,
	Section_ID CHAR(5) NOT NULL,
	PRIMARY KEY (Student_ID, Course_ID, Section_ID),
	CONSTRAINT TAStudentIDFK FOREIGN KEY (Student_ID) REFERENCES STUDENT(Std_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT TACourseIDFK FOREIGN KEY (Course_ID) REFERENCES COURSE(Course_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT TASectionIDFK FOREIGN KEY (Section_ID) REFERENCES COURSE(Section_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION	);

INSERT INTO TA (Student_ID, Course_ID, Section_ID)
	VALUES ('849266043', 'SPCH-1315', '5T1');
INSERT INTO TA (Student_ID, Course_ID, Section_ID)
	VALUES ('849266042', 'MATH-2414', '0J2');
INSERT INTO TA (Student_ID, Course_ID, Section_ID)
	VALUES ('849266047', 'CS-4347', '0U1');
INSERT INTO TA (Student_ID, Course_ID, Section_ID)
	VALUES ('849266047', 'CS-4375', '0W1');
INSERT INTO TA (Student_ID, Course_ID, Section_ID)
	VALUES ('849266048', 'HIST-1302', '5H8');
INSERT INTO TA (Student_ID, Course_ID, Section_ID)
	VALUES ('849266048', 'HIST-1301', '5H4');
INSERT INTO TA (Student_ID, Course_ID, Section_ID)
	VALUES ('849266042', 'MATH-2413', '3F5');
INSERT INTO TA (Student_ID, Course_ID, Section_ID)
	VALUES ('849266049', 'ECON-2301', '5J4');
INSERT INTO TA (Student_ID, Course_ID, Section_ID)
	VALUES ('849266049', 'ECON-2302', '1Z0');
INSERT INTO TA (Student_ID, Course_ID, Section_ID)
	VALUES ('849266050', 'CHEM-1411', '2U0');

SELECT *
FROM TA;

--DROP TABLE TA;

CREATE TABLE COURSE_DESCRIPTION(	
	Course_ID CHAR(20) NOT NULL,
	Section_ID CHAR(5) NOT NULL,
	PRIMARY KEY (Course_ID, Section_ID),
	CONSTRAINT DescriptionCourseIDFK FOREIGN KEY (Course_ID) REFERENCES COURSE(Course_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT DescriptionSectionIDFK FOREIGN KEY (Section_ID) REFERENCES COURSE(Section_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION	);

INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('CHEM-1411', '2U0');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('CS-4347', '0U1');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('CS-4375', '0W1');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('ECON-2301', '5J4');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('ECON-2302', '1Z0');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('HIST-1301', '5H4');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('HIST-1303', '5H5');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('HIST-1302', '5H8');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('MATH-2413', '3F5');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('MATH-2414', '0J2');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('MUSI-1306', '7Y3');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('PSYC-2301', '6K6');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('PSYC-2302', '6K9');
INSERT INTO COURSE_DESCRIPTION (Course_ID, Section_ID)
	VALUES ('SPCH-1315', '5T1');


SELECT *
FROM COURSE_DESCRIPTION;

--DROP TABLE COURSE_DESCRIPTION


CREATE TABLE COURSE_DESCRIPTION1(
	Course_ID CHAR(20) PRIMARY KEY,
	Course_Name CHAR(150) NOT NULL,
	Course_Desc CHAR(2000),
	CONSTRAINT DescriptionCourseFK FOREIGN KEY (Course_ID) REFERENCES COURSE(Course_ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION);

INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('CHEM-1411', 'General Chemistry 1', 'Basic of chemistry');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('CS-4347', 'Database Systems', 'DBMS and SQL');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('CS-4375', 'Introduction to Machine Learning', 'R and Algorithms');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('ECON-2301', 'Principles of Macroeconomics', 'Macro-economy');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('ECON-2302', 'Principles of Microeconomics', 'Micro-economy');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('HIST-1301', 'US History 1', '1870s-1900s');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('HIST-1303','US History 1 & 2', '1870s-1900s');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('HIST-1302', 'US History 2', '1900s-present');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('MATH-2413', 'Differential Calculus', 'Derivatives');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('MATH-2414', 'Integral Calculus', 'Study of the area of curved space');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('MUSI-1306', 'Fundamentals of Music', 'Basic of music');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('PSYC-2301', 'General Physchology', 'Basic of psychology');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('PSYC-2302', 'General Physchology', 'Basic of psychology');
INSERT INTO COURSE_DESCRIPTION1 (Course_ID, Course_Name, Course_Desc)
	VALUES ('SPCH-1315', 'Public Speaking', 'Fundamentals of public speaking');

SELECT *
FROM COURSE_DESCRIPTION1;

--DROP TABLE COURSE_DESCRIPTION1;

CREATE TABLE OFFER(
	Department_ID CHAR(10),
	Major_Name CHAR(50),
	PRIMARY KEY(Department_ID, Major_Name),
	CONSTRAINT OfferDepartmentIDFK FOREIGN KEY (Department_ID) REFERENCES DEPARTMENT(Department_ID),
	CONSTRAINT OfferMajorFK FOREIGN KEY (Major_Name) REFERENCES MAJOR(Major_Name));

INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Computer Science', '001');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Computer Engineering', '001');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Electrical Engineering', '001');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Statistics', '002');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Applied Mathematics', '002');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Actuary Science', '002');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('US History', '003');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('World History', '003');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('European History', '003');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('English Literature', '004');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Poetry', '004');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Marketing', '005');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Accountant', '005');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Finance', '005');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Speech Therapist', '006');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Physics', '007');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Chemistry', '007');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Biology', '007');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Dance', '008');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Film Studies', '008')
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Music Theory and Composition', '009');
INSERT INTO OFFER (Major_Name, Department_ID)
	VALUES ('Religious Study', '010');


SELECT *
FROM OFFER;

--DROP TABLE OFFER


CREATE TABLE ASSISTS(
	Std_ID CHAR(9),
	Course_ID CHAR(20) NOT NULL,
	Section_ID CHAR(5) NOT NULL,
	PRIMARY KEY( Std_ID, Course_ID, Section_ID),
	CONSTRAINT TAAssistsFK FOREIGN KEY ([Std_ID], [Course_ID], [Section_ID]) REFERENCES TA([Student_ID], [Course_ID], [Section_ID]));


INSERT INTO ASSISTS(Std_ID, Course_ID, Section_ID)
	VALUES ('849266043', 'SPCH-1315', '5T1');
INSERT INTO ASSISTS (Std_ID, Course_ID, Section_ID)
	VALUES ('849266042', 'MATH-2414', '0J2');
INSERT INTO ASSISTS (Std_ID, Course_ID, Section_ID)
	VALUES ('849266047', 'CS-4347', '0U1');
INSERT INTO ASSISTS (Std_ID, Course_ID, Section_ID)
	VALUES ('849266047', 'CS-4375', '0W1');
INSERT INTO ASSISTS (Std_ID, Course_ID, Section_ID)
	VALUES ('849266048', 'HIST-1302', '5H8');
INSERT INTO ASSISTS (Std_ID, Course_ID, Section_ID)
	VALUES ('849266048', 'HIST-1301', '5H4');
INSERT INTO ASSISTS (Std_ID, Course_ID, Section_ID)
	VALUES ('849266042', 'MATH-2413', '3F5');
INSERT INTO ASSISTS (Std_ID, Course_ID, Section_ID)
	VALUES ('849266049', 'ECON-2301', '5J4');
INSERT INTO ASSISTS (Std_ID, Course_ID, Section_ID)
	VALUES ('849266049', 'ECON-2302', '1Z0');
INSERT INTO ASSISTS (Std_ID, Course_ID, Section_ID)
	VALUES ('849266050', 'CHEM-1411', '2U0');

SELECT *
FROM ASSISTS;


--DROP TABLE ASSISTS


CREATE TABLE MAJOR_NAME(
	StdSSN CHAR(9),
	Major_Name CHAR(50),
	PRIMARY KEY (StdSSN, Major_Name),
	CONSTRAINT MajorStdSSNFK FOREIGN KEY (StdSSN) REFERENCES STUDENT(StdSSN),
	CONSTRAINT MajorRefersNameFK FOREIGN KEY (Major_Name) REFERENCES MAJOR(Major_Name));


INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (364987021, 'Computer Science');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (749672398, 'Applied Mathematics');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (254767946, 'Biology');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (637593748, 'Applied Mathematics');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (987598234, 'Dance');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (978397847, 'Statistics');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (859306328, 'Speech Therapist');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (751027589, 'Visual Art');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (123498798, 'Physics');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (748563548, 'Electrical Engineering');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (287643155, 'Computer Science');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (536736145, 'US History');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (982734580, 'Finance');
INSERT INTO MAJOR_NAME (StdSSN, Major_Name)
	VALUES (247865534, 'Chemistry');


SELECT *
FROM MAJOR_NAME;

--DROP TABLE MAJOR_NAME


CREATE VIEW REGISTRATION_VIEW
	AS SELECT COURSE.Course_ID, COURSE.Section_ID, COURSE1.Course_Name, COURSE_DESCRIPTION1.Course_Desc
		FROM COURSE, COURSE1, COURSE_DESCRIPTION1
		WHERE COURSE1.Course_ID = COURSE_DESCRIPTION1.Course_ID AND COURSE.Course_ID = COURSE1.Course_ID

SELECT*
FROM REGISTRATION_VIEW

--DROP VIEW REGISTRATION_VIEW


CREATE VIEW SCHEDULE_VIEW
	AS SELECT STUDENT.Std_ID, STUDENT.StdLName, SCHEDULE.Course_ID, SCHEDULE.Section_ID, 
		      SCHEDULE.The_Days, SCHEDULE.Start_Time, SCHEDULE.End_Time, ROOM.Room_No
		FROM STUDENT, SCHEDULE, ROOM, TAKES, COURSE
		WHERE STUDENT.Std_ID = TAKES.Student_ID AND 
			  SCHEDULE.Course_ID = TAKES.Course_ID AND 
			  TAKES.Section_ID = SCHEDULE.Section_ID AND 
			  COURSE.Room_No = ROOM.Room_No AND 
			  COURSE.Course_ID = SCHEDULE.Course_ID AND 
			  COURSE.Section_ID = SCHEDULE.Section_ID

SELECT*
FROM SCHEDULE_VIEW
WHERE StdLName='Whalen'

--DROP VIEW SCHEDULE_VIEW


CREATE VIEW PROF_TEACH_VIEW
	AS SELECT PROFESSOR.ProfLName, LECTURES.Course_ID, LECTURES.Section_ID, COURSE1.Course_Name, 
			  COURSE.Room_No, BUILDING.Building_Name, PROFESSOR.Rating
		FROM PROFESSOR, LECTURES, COURSE, BUILDING, COURSE1, DEPARTMENT
		WHERE PROFESSOR.Prof_ID = LECTURES.Prof_ID AND
			  COURSE.Course_ID = COURSE1.Course_ID AND
			  LECTURES.Course_ID = COURSE.Course_ID AND
			  LECTURES.Section_ID = COURSE.Section_ID AND
			  LECTURES.Course_ID = COURSE1.Course_ID AND
			  DEPARTMENT.Department_ID = PROFESSOR.Prof_Department AND
			  DEPARTMENT.Building_ID = BUILDING.Building_ID

			  
SELECT* 
FROM PROF_TEACH_VIEW

--DROP VIEW PROF_TEACH_VIEW