-- create a new database
CREATE DATABASE artist_association;
USE artist_association;

/* Let's Create a database of 30 companies. 

WE will include:
a) Name of the company 
b) City 
c) Employee Strength 
d) Website (if available)  
e) HR Name/ Concerned Person Name: (Who is responsible for HR activities) 
f) Contact No. 
g) Email id 

let's divide the tast into 3 tables
	1. Companies : Which takes the information about the company name, location, website etc
    2. Departments : Which takes the information of the daprtments name, hr_name ect
    3. Employee : It contain the actual data of employee of all 30 companies
*/

-- Task 1 : Create a companies table 
CREATE TABLE companies
(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    type VARCHAR(200) NOT NULL,
    no_of_employee INT NOT NULL DEFAULT 0,
    country VARCHAR(200) NOT NULL,
    mfd VARCHAR(200),
    website VARCHAR(400)
);
 
-- Insert 30 companies data into this table
INSERT INTO companies(name, type, no_of_employee, country, mfd, website)
VALUES
('Microsoft', 'IT', 0, 'USA', '1975-01-01', 'https://www.microsoft.com/en-in'),
    ('NASA', 'space agencies', 0, 'USA', '1958-05-06', 'https://www.nasa.gov/'),
    ('TechnipFMC', 'Construction', 0, 'United Kingdom', '2017-09-04', 'https://www.technipfmc.com/'),
    ('HCL Enterprise', 'IT', 0, 'INDIA', '1976-09-07', 'https://www.hcltech.com/'),
    ('Infosys', 'IT', 0, 'INDIA', '1981-07-02', 'https://www.infosys.com/'),
    ('Oracle', 'IT', 0, 'USA', '1977-03-02','https://www.oracle.com/index.html'),
    ('RFSA', 'space agencies', 0, 'Russia', '1922-09-06', 'https://www.rfsa.org.au/'),
    ('Strabag', 'Construction', 0, 'France', '1952-08-06', 'https://www.strabag-international.com/'),
    ('ISRO', 'space agencies', 0, 'INDIA', '1969-06-07', 'https://www.isro.gov.in/'),
    ('SAP', 'IT', 0, 'Germany', '1972-04-04','https://store.sap.com/dcp/en/news-blogs/blogs/round-trip-to-profitability-solutions-for-travel-transportation-on-sap-store?campaigncode=CRM-YD21-SOC-0TRAVLZ&source=socialad-TRAVLTRAN-GL-2021128&gclid=CjwKCAiAlfqOBhAeEiwAYi43F-6BabEJ2TwLaU6-G0ZZ3X0egmo7wGJTrHpcgSf_QUqTNw6Ecd-2QBoCtz0QAvD_BwE'),
    ('China State Construction Engineering Corp. Ltd.', 'Construction', 0, 'China', '1957-08-07', 'https://www.chinaconstruction.ae/'),
    ('ESA', 'space agencies', 0, 'France', '1975-09-08','https://www.esa.int/'),
    ('Intuit', 'IT', 0, 'USA', '1983-03-08','https://www.intuit.com/'),
    ('Skanska AB', 'Construction', 0, 'Sweden', '1887-08-07','https://www.skanska.com/'),
    ('Salesforce', 'IT', 0, 'USA', '1999-03-28','https://www.salesmate.io/salesforce-crm-alternative/?utm_source=googleads&utm_medium=cpc&utm_campaign=salesfore-alternative-india&utm_term=googleads-salesforce&gclid=CjwKCAiAlfqOBhAeEiwAYi43FxkOj48aItKO6M0ArbkayFRrAWJgAUT13r8lpEWR8UPli7OY3-FMXhoCdnIQAvD_BwE'),
    ('Power Construction Corp. of China', 'Construction', 0, 'China', '2011-08-06','https://www.bloomberg.com/profile/company/601669:CH'),
    ('CNSA', 'space agencies', 0, 'China', '2003-08-08','http://www.cnsa.gov.cn/english/'),
    ('Broadcom', 'IT', 0, 'USA', '1961-08-04','https://www.lrsoutputmanagement.com/info/lrs-alternative-for-broadcom-ca-archives-view-deliver-bundl-dispatch/?gclid=CjwKCAiAlfqOBhAeEiwAYi43F08xafF3MlAIhvcuxQmm0WMfbH2n1p-AO41kx5-aJPq255MRkk4wEhoCASoQAvD_BwE'),
    ('Bouygues', 'Construction', 0, 'France', '1952-08-06','https://www.bouygues.com/en/'),
    ('Google', 'IT', 0, 'United Kingdom', '1998-03-06','https://workspace.google.com'),
    ('VINCI', 'Construction', 0, 'France', '1899-03-08','https://www.vinci.com/vinci.nsf/en/index.htm'),
    ('Adobe Systems', 'IT', 0, 'USA', '1982-03-01','adobe.com/in/creativecloud.html?sdid=SL4KMHQ2&mv=search&ef_id=CjwKCAiAlfqOBhAeEiwAYi43FzXNtTqG7IEEgks1GvyXhcXj_yHblBY-ffh3BvvEKlNPDnP3rxdjNBoC06EQAvD_BwE:G:s&s_kwcid=AL!3085!3!473191825380!e!!g!!adobe%20systems!221174468!93801899243&gclid=CjwKCAiAlfqOBhAeEiwAYi43FzXNtTqG7IEEgks1GvyXhcXj_yHblBY-ffh3BvvEKlNPDnP3rxdjNBoC06EQAvD_BwE'),
    ('JAXA', 'space agencies', 0, 'Japan', '2003-08-05','https://global.jaxa.jp/'),
    ('Walmart', 'IT', 0, 'INDIA', '1962-08-05','https://www.walmart.com/'),
    ('SSI', 'space agencies', 0, 'California', '1977-06-05','http://www.spacescience.org/about.php'),
    ('Dropbox', 'IT', 0, 'USA', '2008-09-06','https://www.dropbox.com/business/landing-t61fl?_tk=paid_sem_goog_biz_b&_camp=1018334849&_kw=dropbox|e&_ad=474822620832||c&gclid=CjwKCAiAlfqOBhAeEiwAYi43FyJ-hKp0pWN7QFMQauz_pDGJ8HotC5x27arCq4l85fJ9ThaJF4fgdhoCR_AQAvD_BwE'),
    ('Hochtief Aktiengesellschaft', 'Construction', 0, 'Germany', '1874-08-01','https://www.hochtief.de/'),
    ('China Communications Construction Group Ltd', 'Construction', 0, 'China', '2005-07-05','http://en.ccccltd.cn/'),
    ('ACS', 'Construction', 0, 'Spain', '1997-08-05','https://en.wikipedia.org/wiki/ACS_Group'),
    ('Dell Technologies', 'IT', 0, 'USA', '2016-03-11','https://celebratedellse.in/makarsankranti/?gacd=10415953-9019-5761040-286092744-0&dgc=BA&gclsrc=aw.ds&gclid=CjwKCAiAlfqOBhAeEiwAYi43F89afZX6sYShVYrfEIIPHDzeV8P-ti0EORpt785vlrOWY8We9Y-_fRoC0mAQAvD_BwE');

-- Task 2 : Create department table
CREATE TABLE departments
(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    department_name VARCHAR(200) NOT NULL,
    no_of_employee INT NOT NULL DEFAULT 0,
    salary DECIMAL(10, 2),
    hr_name VARCHAR(200)
);
              
-- Insert data into department table
INSERT INTO departments(department_name, salary, hr_name)
VALUES
	('Developer', 20.50, 'Aaron Finch'),
	('Tester', 16.45, 'Quinton De Kock'),
	('Manager', 25.00, 'KL Rahul'),
	('HR', 22.00, 'Abraham Benjamin de Villiars'),
	('Maintenance', 12.95, 'Mahendra Singh Dhoni'),
	('Designing', 12.55, 'Mithali Raj'),
	('Production', 18.65, 'Virat Kohli'),
	('Finance', 78.00, 'Rahul Dravid'),
	('Quality', 11.70, 'Kapil Dev'),
	('Sales', 8.50, 'Faf Du Plessis');

-- Task 3 : Create a employee table
CREATE TABLE employees
(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    birth_date DATE,
    sex CHAR(1),
    employee_strength VARCHAR(200),
    contact_no VARCHAR(15),
    email_id VARCHAR(200),
    company_id INT,
    dept_id INT NOT NULL,
    FOREIGN KEY(company_id)
		REFERENCES companies(id)
        ON DELETE CASCADE,
	FOREIGN KEY(dept_id)
		REFERENCES departments(id)
        ON DELETE CASCADE
);

-- CREATE A TRIGGER TO INCREASE THE NO OF EMPLOYEE IN DEPARTMENT AND COMPANIES TABLE AS ANY NEW RECORD INSERT INTO EMPOYEES TABLE
delimiter |
CREATE TRIGGER emp BEFORE INSERT ON employees
  FOR EACH ROW
  BEGIN
    UPDATE companies SET no_of_employee = no_of_employee + 1 WHERE id=NEW.company_id;
    UPDATE departments SET no_of_employee = no_of_employee + 1 WHERE id=NEW.dept_id;
  END;
|
delimiter ;

-- Insert the HR data into the employee table
INSERT INTO employees(first_name, last_name, birth_date, sex, employee_strength, contact_no, email_id, company_id, dept_id)
VALUES
    ('Aaron', 'Finch', '1995-03-02', 'M', 'problem-solving skills', '+27 6427646879', 'aaronfinch409@hello.hi.in', 1, 1),
    ('Quinton', 'De Kock', '1993-09-08', 'M', 'work ethic', '+12 3690768979', 'quintondekock487@nothing.com', 8, 2),
    ('KL', 'Rahul', '1992-01-08', 'M', 'technological proficiency', '+33 1760347679', 'klrahul898@gmail.in', 30, 3),
    ('Abraham', 'Benjamin de Villiars', '1999-01-23', 'M', 'work ethic', '+96 1176348379', 'abrahambenjamindevilliars700@nothing.com', 4, 4),
    ('Mahendra', 'Singh Dhoni', '1993-02-23', 'M', 'communication skills', '+15 3449760079', 'mahendrasinghdhoni777@hotmail.com', 22, 5),
    ('Mithali', 'Raj', '1987-03-28', 'M', 'technological proficiency', '+95 4276496279', 'mithaliraj257@gmail.in', 21, 6),
    ('Virat', 'Kohli', '1999-11-23', 'M', 'problem-solving skills', '+2 3376347579', 'viratkohli598@hello.hi.in', 12, 7),
    ('Rahul', 'Dravid', '1992-08-03', 'M', 'work ethic', '+99 1676423879', 'rahuldravid863@nothing.com', 17, 8),
    ('Kapil', 'Dev', '1993-06-21', 'M', 'technological proficiency', '+81 4647655579', 'kapildev891@gmail.in', 9, 9),
    ('Faf', 'Du Plessis', '1991-03-02', 'M', 'communication skills', '+6 6287643179', 'fafduplessis963@hotmail.com', 18, 10);

-- INSERT THE employee data into the employee table
INSERT INTO employees(first_name, last_name, birth_date, sex, employee_strength, contact_no, email_id, company_id, dept_id)
VALUES
    ('Mark', 'Burgess', '1995-03-02', 'M', 'problem-solving skills', '+27 6425616822', 'markburgess409@hello.hi.in', 1, 10),
    ('Richard', 'Collinge', '1993-09-08', 'M', 'work ethic', '+12 3690648948', 'richardcollinge487@nothing.com', 2, 9),
    ('Peter', 'Coman', '1992-01-08', 'M', 'technological proficiency', '+33 1760277675', 'petercoman898@gmail.in', 3, 8),
    ('Bevan', 'Congdon', '1999-01-23', 'M', 'work ethic', '+96 1174708392', 'bevancongdon700@nothing.com', 4, 7),
    ('Dayle', 'Hadlee', '1993-02-23', 'M', 'communication skills', '+15 6449190086', 'daylehadlee777@hotmail.com', 5, 6),
    ('Richard', 'Hadlee', '1987-03-28', 'M', 'technological proficiency', '+95 4218096299', 'richardhadlee257@gmail.in', 6, 5),
    ('Norman', 'Parker', '1999-11-23', 'M', 'problem-solving skills', '+21 3319587599', 'normanparker598@hello.hi.in', 7, 4),
    ('Dean', 'Elgar', '1992-08-03', 'M', 'work ethic', '+99 1678423809', 'deanelgar863@nothing.com', 8, 3),
    ('Aiden', 'Markram', '1993-06-21', 'M', 'technological proficiency', '+81 4645055500', 'aidenmarkram891@gmail.in', 9, 2),
    ('Keegan', 'Petersen', '1991-03-02', 'M', 'communication skills', '+61 6287013112', 'keeganpetersen963@hotmail.com', 10, 1),
    ('Rassie', 'Van Der Dussen', '1992-01-18', 'M', 'problem-solving skills', '+93 7544566446', 'rassievan der dussen986@hello.hi.in', 11, 10),
    ('Temba', 'Bavuma', '1987-02-14', 'M', 'technological proficiency', '+67 3815977679', 'tembabavuma904@gmail.in', 12, 9),
    ('Kyle', 'Verreyne', '2000-02-02', 'M', 'problem-solving skills', '+37 1574936278', 'kyleverreyne666@hello.hi.in', 13, 8),
    ('Macro', 'Jansen', '2001-08-04', 'M', 'work ethic', '+86 2963520859', 'macrojansen905@nothing.com', 14, 7),
    ('Kagiso', 'Rabada', '1979-03-09', 'M', 'communication skills', '+63 4558405228', 'kagisorabada377@hotmail.com', 15, 6),
    ('Keshav', 'Maharaj', '1989-04-03', 'M', 'work ethic', '+52 4657371058', 'keshavmaharaj770@nothing.com', 16, 5),
    ('Duanne', 'Olivier', '1997-02-04', 'M', 'problem-solving skills', '+45 9512759437', 'duanneolivier400@hello.hi.in', 17, 4),
    ('Lungi', 'Ngidi', '1993-02-16', 'M', 'technological proficiency', '+15 5271752407', 'lungingidi200@gmail.in', 18, 3),
    ('Prenelan', 'Subrayen', '1992-04-27', 'M', 'problem-solving skills', '+42 4895703741', 'prenelansubrayen194@hello.hi.in', 19, 2),
    ('Beuran', 'Hendricks', '1999-03-14', 'M', 'communication skills', '+50 9319000290', 'beuranhendricks151@hotmail.com', 20, 1),
    ('Sisnada', 'Magala', '1989-03-23', 'M', 'technological proficiency', '+96 3336038173', 'sisnadamagala797@gmail.in', 21, 10),
    ('George', 'Linde', '1994-08-24', 'M', 'work ethic', '+98 5270062029', 'georgelinde684@nothing.com', 22, 9),
    ('Wiaan', 'Mulder', '1993-12-04', 'M', 'problem-solving skills', '+84 1531947592', 'wiaanmulder242@hello.hi.in', 23, 8),
    ('Sarel', 'Erwee', '1992-11-02', 'M', 'technological proficiency', '+75 264148554', 'sarelerwee881@gmail.in', 24, 7),
    ('Ryan', 'Rickelton', '1991-10-17', 'M', 'communication skills', '+32 9769315328', 'ryanrickelton913@hotmail.com', 25, 6),
    ('Glenton', 'Stuurman', '1993-01-01', 'M', 'work ethic', '+64 4413231280', 'glentonstuurman298@nothing.com', 26, 5),
    ('Sunil', 'Narine', '1992-03-01', 'M', 'technological proficiency', '+16 9287004526', 'klrahul150@gmail.in', 27, 4),
    ('Mayank', 'Agrawal', '1994-01-03', 'M', 'work ethic', '+97 3803133502', 'mayankagrawal2@nothing.com', 28, 3),
    ('Cheteshwar', 'Pujara', '1995-05-30', 'M', 'problem-solving skills', '+87 3501573972', 'cheteshwarpujara136@hello.hi.in', 29, 2),
    ('Shikhar', 'Dhawan', '1997-09-16', 'M', 'communication skills', '+63 7441329171', 'viratkohli829@hotmail.com', 30, 1),
    ('Ajinkya', 'Rahane', '1995-03-02', 'M', 'problem-solving skills', '+91 763852448', 'ajinkyarahane644@hello.hi.in', 1, 10),
    ('Rishabh', 'Pant', '1993-09-08', 'M', 'work ethic', '+99 192324193', 'rishabhpant126@nothing.com', 2, 9),
    ('Ravichandra', 'Ashwin', '1992-01-08', 'M', 'technological proficiency', '+57 4761935356', 'ravichandraashwin669@gmail.in', 3, 8),
    ('Shardul', 'Thakur', '1999-01-23', 'M', 'work ethic', '+92 5762091229', 'shardulthakur131@nothing.com', 4, 7),
    ('Mohammed', 'Shammi', '1993-02-23', 'M', 'communication skills', '+93 2395059655', 'mohammedshammi418@hotmail.com', 5, 6),
    ('Jasprit', 'Bumrah', '1987-03-28', 'M', 'technological proficiency', '+37 6028325200', 'jaspritbumrah900@gmail.in', 6, 5),
    ('Umesh', 'Yadav', '1999-11-23', 'M', 'problem-solving skills', '+69 7599421309', 'umeshyadav724@hello.hi.in', 7, 4),
    ('Ravindra', 'Jadeja', '1992-08-03', 'M', 'work ethic', '+34 5188940293', 'ravindrajadeja581@nothing.com', 8, 3),
    ('Jyant', 'Yadav', '1993-06-21', 'M', 'technological proficiency', '+35 9930864107', 'jyantyadav924@gmail.in', 9, 2),
    ('Priyank', 'Panchal', '1991-03-02', 'M', 'communication skills', '+64 4367756605', 'priyankpanchal258@hotmail.com', 10, 1),
    ('Shreyas', 'Yadav', '1992-01-18', 'M', 'problem-solving skills', '+98 1287213537', 'shreyasyadav702@hello.hi.in', 11, 10),
    ('Hanuma', 'Vihari', '1987-02-14', 'M', 'technological proficiency', '+12 5047670607', 'hanumavihari158@gmail.in', 12, 9),
    ('Mohammed', 'Siraj', '2000-02-02', 'M', 'problem-solving skills', '+28 9058899078', 'mohammedsiraj701@hello.hi.in', 13, 8),
    ('Wriddhiman', 'Saha', '2001-08-04', 'M', 'work ethic', '+79 8424835790', 'wriddhimansaha844@nothing.com', 14, 7),
    ('Ishant', 'Sharma', '1979-03-09', 'M', 'communication skills', '+69 9396604113', 'ishantsharma615@hotmail.com', 15, 6),
    ('Karun', 'Nair', '1989-04-03', 'M', 'work ethic', '+25 4257778660', 'karunnair367@nothing.com', 16, 5),
    ('Deepak', 'Chahar', '1997-02-04', 'M', 'problem-solving skills', '+56 6913997714', 'deepakchahar781@hello.hi.in', 17, 4),
    ('Hardik', 'Pandya', '1993-02-16', 'M', 'technological proficiency', '+83 8159809316', 'hardikpandya584@gmail.in', 18, 3),
    ('Dale', 'Steyn', '1992-04-27', 'M', 'problem-solving skills', '+47 6106822953', 'mahendrasingh dhoni636@hello.hi.in', 19, 2),
    ('Yuvraj', 'Singh', '1999-03-14', 'M', 'communication skills', '+35 8231000675', 'yuvrajsingh78@hotmail.com', 20, 1),
    ('Venkatesh', 'Iyyer', '1989-03-23', 'M', 'technological proficiency', '+92 3595850266', 'venkateshiyyer43@gmail.in', 21, 10),
    ('Rituraj', 'Gaikbad', '1994-08-24', 'M', 'work ethic', '+13 5431019045', 'riturajgaikbad313@nothing.com', 22, 9),
    ('Sachin', 'Tendulkar', '1993-12-04', 'M', 'problem-solving skills', '+94 7393582386', 'sachintendulkar890@hello.hi.in', 23, 8),
    ('Suryakumar', 'Yadav', '1992-11-02', 'M', 'technological proficiency', '+23 4849092676', 'suryakumaryadav732@gmail.in', 24, 7),
    ('Ishan', 'Kissan', '1991-10-17', 'M', 'communication skills', '+21 8300705644', 'ishankissan535@hotmail.com', 25, 6),
    ('Rahul', 'Chahar', '1993-01-01', 'M', 'work ethic', '+18 3130965217', 'rahulchahar15@nothing.com', 26, 5),
    ('Rohit', 'Sharma', '1992-03-01', 'M', 'technological proficiency', '+14 6358180974', 'rohitsharma770@gmail.in', 27, 4),
    ('Shubhman', 'Gill', '1994-01-03', 'M', 'work ethic', '+94 4118433040', 'shubhmangill225@nothing.com', 28, 3),
    ('Nitish', 'Rana', '1995-05-30', 'M', 'problem-solving skills', '+89 7803772863', 'nitishrana228@hello.hi.in', 29, 2),
    ('Gautam', 'Gambhir', '1997-09-16', 'M', 'communication skills', '+80 3104152934', 'gautamgambhir155@hotmail.com', 30, 1),
    ('Heather', 'Knight', '1995-03-02', 'F', 'problem-solving skills', '+85 7630383389', 'heatherknight278@hello.hi.in', 1, 10),
    ('Tammy', 'Boucher', '1993-09-08', 'F', 'work ethic', '+10 6618557867', 'tammyboucher12@nothing.com', 2, 9),
    ('Katherine', 'Brunt', '1992-01-08', 'F', 'technological proficiency', '+8 3464293865', 'katherinebrunt502@gmail.in', 3, 8),
    ('Kate', 'Cross', '1999-01-23', 'F', 'work ethic', '+47 8442462765', 'katecross811@nothing.com', 4, 7),
    ('Freya', 'Davish', '1983-02-23', 'F', 'communication skills', '+52 1861102834', 'freyadavish358@hotmail.com', 5, 6),
    ('Sophia', 'Dunkley', '1987-03-28', 'F', 'technological proficiency', '+23 941748061', 'sophiadunkley769@gmail.in', 6, 5),
    ('Sophia', 'Ecclestone', '1999-11-23', 'F', 'problem-solving skills', '+56 5090084351', 'sophiaecclestone855@hello.hi.in', 7, 4),
    ('Natasha', 'Farrant', '1992-08-03', 'F', 'work ethic', '+75 1779566390', 'natashafarrant644@nothing.com', 8, 3),
    ('Sarah', 'Glenn', '1993-06-21', 'F', 'technological proficiency', '+68 4933049730', 'sarahglenn412@gmail.in', 9, 2),
    ('Amy', 'Ellen Jones', '1991-03-02', 'F', 'communication skills', '+58 6595701842', 'amyellen jones561@hotmail.com', 10, 1),
    ('Natalia', 'Sciver', '1992-01-18', 'F', 'problem-solving skills', '+83 4463820648', 'nataliasciver754@hello.hi.in', 11, 10),
    ('Anya', 'Shrubsole', '1987-02-14', 'F', 'technological proficiency', '+43 9021718073', 'anyashrubsole212@gmail.in', 12, 9),
    ('MAddy', 'Villiers', '2000-02-02', 'F', 'problem-solving skills', '+35 1214304307', 'maddyvilliers554@hello.hi.in', 13, 8),
    ('Lauren', 'Winfield Hill', '2001-08-04', 'F', 'work ethic', '+40 3557972557', 'laurenwinfield hill569@nothing.com', 14, 7),
    ('Danielle', 'Wyatt', '1979-03-09', 'F', 'communication skills', '+78 1851604294', 'daniellewyatt590@hotmail.com', 15, 6),
    ('Charlotte', 'Dean', '1989-04-03', 'F', 'work ethic', '+40 2063100442', 'charlottedean845@nothing.com', 16, 5),
    ('Lizelle', 'Lee', '1997-02-04', 'F', 'problem-solving skills', '+61 5054735434', 'lizellelee702@hello.hi.in', 17, 4),
    ('Alyssa', 'Healy', '1993-02-16', 'F', 'technological proficiency', '+99 8675138781', 'alyssahealy353@gmail.in', 18, 3),
    ('Anil', 'Kumble', '1992-04-27', 'F', 'problem-solving skills', '+16 7533261774', 'mithaliraj279@hello.hi.in', 19, 2),
    ('Tammy', 'Beaumout', '1999-03-14', 'F', 'communication skills', '+14 8432210775', 'tammybeaumout808@hotmail.com', 20, 1),
    ('Smriti', 'Mandhana', '1989-03-23', 'F', 'technological proficiency', '+51 1178810132', 'smritimandhana65@gmail.in', 21, 10),
    ('Deepti', 'Sharma', '1994-08-24', 'F', 'work ethic', '+97 6635135595', 'deeptisharma402@nothing.com', 22, 9),
    ('Dan', 'Van Niekerk', '1993-12-04', 'F', 'problem-solving skills', '+2 8982990048', 'danvan niekerk428@hello.hi.in', 23, 8),
    ('Hayley', 'Matthews', '1992-11-02', 'F', 'technological proficiency', '+45 9490558737', 'hayleymatthews405@gmail.in', 24, 7),
    ('Jess', 'Jonessen', '1991-10-17', 'F', 'communication skills', '+18 6703983682', 'jessjonessen821@hotmail.com', 25, 6),
    ('Megan', 'Schutt', '1993-01-01', 'F', 'work ethic', '+9 73624626', 'meganschutt754@nothing.com', 26, 5),
    ('Shabnim', 'Ismail', '1992-03-01', 'F', 'technological proficiency', '+75 4882426639', 'shabnimismail190@gmail.in', 27, 4),
    ('Sophie', 'Ecclestone', '1994-01-03', 'F', 'work ethic', '+49 8606282201', 'sophieecclestone844@nothing.com', 28,3),
    ('Sarah', 'Glenn', '1995-05-30', 'F', 'problem-solving skills', '+64 6677072827', 'sarahglenn418@hello.hi.in', 29, 2),
    ('Anam', 'Amin', '1997-09-16', 'F', 'communication skills', '+9 1796222741', 'anamamin638@hotmail.com', 30, 1),
    ('Pat', 'Cummins', '1995-03-02', 'M', 'problem-solving skills', '+65 3416868889', 'patcummins755@hello.hi.in', 1, 10),
    ('Cameron', 'Green', '1993-09-08', 'M', 'work ethic', '+75 4851513118', 'camerongreen176@nothing.com', 2, 9),
    ('Josh', 'Hazlewood', '1992-01-08', 'M', 'technological proficiency', '+42 5865605442', 'joshhazlewood665@gmail.in', 3, 8),
    ('Marcus', 'Harrish', '1999-01-23', 'M', 'work ethic', '+56 8257597124', 'marcusharrish437@nothing.com', 4, 7),
    ('Travish', 'Head', '1993-02-23', 'M', 'communication skills', '+71 2236439010', 'travishhead998@hotmail.com', 5, 6),
    ('Usman', 'Khawaja', '1987-03-28', 'M', 'technological proficiency', '+32 5960014449', 'usmankhawaja26@gmail.in', 6, 5),
    ('Marcus', 'Labushagne', '1999-11-23', 'M', 'problem-solving skills', '+34 6417318654', 'marcuslabushagne176@hello.hi.in', 7, 4),
    ('Nathan', 'Lyon', '1992-08-03', 'M', 'work ethic', '+95 2465118144', 'nathanlyon368@nothing.com', 8, 3),
    ('Michael', 'Nesser', '1993-06-21', 'M', 'technological proficiency', '+10 3941863863', 'michaelnesser672@gmail.in', 9, 2),
    ('Jhye', 'Richardson', '1991-03-02', 'M', 'communication skills', '+18 8790935109', 'jhyerichardson858@hotmail.com', 10, 1),
    ('Steven', 'Smith', '1992-01-18', 'M', 'problem-solving skills', '+65 6844500421', 'stevensmith468@hello.hi.in', 11, 10),
    ('Mitchell', 'Starc', '1987-02-14', 'M', 'technological proficiency', '+28 204801746', 'mitchellstarc248@gmail.in', 12, 9),
    ('Mitchell', 'Swepson', '2000-02-02', 'M', 'problem-solving skills', '+18 1582644276', 'mitchellswepson249@hello.hi.in', 13, 8),
    ('David', 'Warner', '2001-08-04', 'M', 'work ethic', '+77 1081910917', 'davidwarner228@nothing.com', 14, 7),
    ('Alex', 'Carey', '1979-03-09', 'M', 'communication skills', '+81 3821493866', 'alexcarey472@hotmail.com', 15, 6),
    ('Joe', 'Root', '1989-04-03', 'M', 'work ethic', '+21 6507930492', 'joeroot614@nothing.com', 16, 5),
    ('James', 'Anderson', '1997-02-04', 'M', 'problem-solving skills', '+12 7454120934', 'jamesanderson375@hello.hi.in', 17, 4),
    ('Jonny', 'Bairstow', '1993-02-16', 'M', 'technological proficiency', '+64 615567389', 'jonnybairstow396@gmail.in', 18, 3),
    ('Dominic', 'Bess', '1992-04-27', 'M', 'problem-solving skills', '+80 7984141864', 'dominicbess599@hello.hi.in', 19, 2),
    ('Stuart', 'Broad', '1999-03-14', 'M', 'communication skills', '+60 2111045599', 'stuartbroad250@hotmail.com', 20, 1),
    ('Rorry', 'Burns', '1989-03-23', 'M', 'technological proficiency', '+62 3311833584', 'rorryburns807@gmail.in', 21, 10),
    ('Josh', 'Buttler', '1994-08-24', 'M', 'work ethic', '+4 7948471529', 'joshbuttler844@nothing.com', 22, 9),
    ('Zak', 'Crawley', '1993-12-04', 'M', 'problem-solving skills', '+84 6458231561', 'zakcrawley722@hello.hi.in', 23, 8),
    ('Haseeb', 'Hameed', '1992-11-02', 'M', 'technological proficiency', '+67 2049809594', 'haseebhameed2@gmail.in', 24, 7),
    ('Daniel', 'Lawrence', '1991-10-17', 'M', 'communication skills', '+39 9612531326', 'daniellawrence627@hotmail.com', 25, 6),
    ('Jack', 'Leach', '1993-01-01', 'M', 'work ethic', '+25 3657663058', 'jackleach82@nothing.com', 26, 5),
    ('Dawid', 'Malan', '1992-03-01', 'M', 'technological proficiency', '+31 3074714824', 'dawidmalan606@gmail.in', 27, 4),
    ('Craig', 'Overton', '1994-01-03', 'M', 'work ethic', '+11 7220299307', 'craigoverton286@nothing.com', 28, 3),
    ('Ollie', 'Pope', '1995-05-30', 'M', 'problem-solving skills', '+26 4606660264', 'olliepope512@hello.hi.in', 29, 2),
    ('Ollie', 'Robinson', '1997-09-16', 'M', 'communication skills', '+18 3584755839', 'ollierobinson255@hotmail.com', 30, 1),
    ('Chris', 'Woakes', '1995-03-02', 'M', 'problem-solving skills', '+20 2400656000', 'chriswoakes597@hello.hi.in', 1, 10),
    ('Mark', 'Wood', '1993-09-08', 'M', 'work ethic', '+26 5264088330', 'markwood842@nothing.com', 2, 9),
    ('Kieron', 'Pollard', '1992-01-08', 'M', 'technological proficiency', '+63 6309370386', 'kieronpollard260@gmail.in', 3, 8),
    ('Shai', 'Hope', '1999-01-23', 'M', 'work ethic', '+41 2619261930', 'shaihope84@nothing.com', 4, 7),
    ('Shamarh', 'Brooks', '1993-02-23', 'M', 'communication skills', '+63 9187969993', 'shamarhbrooks692@hotmail.com', 5, 6),
    ('Rostam', 'Chase', '1987-03-28', 'M', 'technological proficiency', '+70 4317543306', 'rostamchase55@gmail.in', 6, 5),
    ('Justin', 'Greaves', '1999-11-23', 'M', 'problem-solving skills', '+98 7328290630', 'justingreaves726@hello.hi.in', 7, 4),
    ('Jason', 'Holder', '1992-08-03', 'M', 'work ethic', '+43 9689597087', 'jasonholder557@nothing.com', 8, 3),
    ('Akeal', 'Hosein', '1993-06-21', 'M', 'technological proficiency', '+88 7303935920', 'akealhosein10@gmail.in', 9, 2),
    ('Alzarri', 'Joseph', '1991-03-02', 'M', 'communication skills', '+86 2695768255', 'alzarrijoseph768@hotmail.com', 10, 1),
    ('Gudakesh', 'Motie', '1992-01-18', 'M', 'problem-solving skills', '+3 8455206499', 'gudakeshmotie138@hello.hi.in', 11, 10),
    ('Jayden', 'Seales', '1987-02-14', 'M', 'technological proficiency', '+16 3630793024', 'jaydenseales348@gmail.in', 12, 9),
    ('Nicholas', 'Pooran', '2000-02-02', 'M', 'problem-solving skills', '+65 2172882391', 'nicholaspooran129@hello.hi.in', 13, 8),
    ('Romario', 'Shepherd', '2001-08-04', 'M', 'work ethic', '+99 5799195651', 'romarioshepherd919@nothing.com', 14, 7),
    ('Odean', 'Smith', '1979-03-09', 'M', 'communication skills', '+86 5267843479', 'odeansmith63@hotmail.com', 15, 6),
    ('Devon', 'Thomas', '1989-04-03', 'M', 'work ethic', '+73 4849211699', 'devonthomas220@nothing.com', 16, 5),
    ('Andrew', 'Balbirnie', '1997-02-04', 'M', 'problem-solving skills', '+65 5705177994', 'andrewbalbirnie914@hello.hi.in', 17, 4),
    ('Mark', 'Adair', '1993-02-16', 'M', 'technological proficiency', '+86 5485539637', 'markadair169@gmail.in', 18, 3),
    ('Curtis', 'Campher', '1992-04-27', 'M', 'problem-solving skills', '+20 4803381101', 'curtiscampher810@hello.hi.in', 19, 2),
    ('George', 'Dockrell', '1999-03-14', 'M', 'communication skills', '+61 6160933865', 'georgedockrell253@hotmail.com', 20, 1),
    ('Joshua', 'Little', '1989-03-23', 'M', 'technological proficiency', '+42 3183435484', 'joshualittle346@gmail.in', 21, 10),
    ('Andy', 'McBrine', '1994-08-24', 'M', 'work ethic', '+77 8329640337', 'andymcbrine843@nothing.com', 22, 10),
    ('Barry', 'McCarthy', '1993-12-04', 'M', 'problem-solving skills', '+71 418484845', 'barrymccarthy68@hello.hi.in', 23, 9),
    ('William', 'Porterfield', '1992-11-02', 'M', 'technological proficiency', '+21 8578514465', 'williamporterfield653@gmail.in', 24, 8),
    ('Neil', 'Rock', '1991-10-17', 'M', 'communication skills', '+69 4982082355', 'neilrock417@hotmail.com', 25, 7),
    ('Simi', 'Singh', '1993-01-01', 'M', 'work ethic', '+59 6946713819', 'simisingh706@nothing.com', 26, 6),
    ('Paul', 'Stirling', '1992-03-01', 'M', 'technological proficiency', '+45 1220897931', 'paulstirling266@gmail.in', 27, 5),
    ('Harry', 'Tector', '1994-01-03', 'M', 'work ethic', '+96 110577336', 'harrytector171@nothing.com', 28, 4),
    ('Lorcan', 'Tucker', '1995-05-30', 'M', 'problem-solving skills', '+82 5881958702', 'lorcantucker481@hello.hi.in', 29, 3),
    ('Benjamin', 'White', '1997-09-16', 'M', 'communication skills', '+64 7571124116', 'benjaminwhite866@hotmail.com', 30, 2),
    ('Craig', 'Young', '1995-05-30', 'M', 'problem-solving skills', '+6 6877060260', 'craigyoung268@hello.hi.in', 12, 1),
    ('Gareth', 'Delany', '1997-09-16', 'M', 'work ethic', '+28 5744485628', 'garethdelany46@nothing.com', 27, 7);
    
-- SELECT SUM(no_of_employee) FROM companies;
-- SELECT SUM(no_of_employee) FROM departments;
-- SELECT COUNt(*) FROM employees;

-- Let's DO some data analysis on our data
-- 1. No of employee in each field
SELECT type 'Field', SUM(no_of_employee) AS no_of_employee 
FROM companies
GROUP BY type 
ORDER BY no_of_employee;

-- 2. No of employee belongs to which country
SELECT country, SUM(no_of_employee) AS no_of_employee 
FROM companies
GROUP BY country 
ORDER BY no_of_employee DESC;

-- 3. Print employees name with mobile no and email id which belongs to space agencies
SELECT CONCAT(first_name, ' ', last_name) AS name, contact_no, email_id FROM employees
INNER JOIN companies ON employees.company_id = companies.id
WHERE type='space agencies'
ORDER BY name;

-- 4. Print country name, average salary of employee belong to that country
SELECT country, AVG(salary) AS avg_salary FROM companies
INNER JOIN employees ON employees.company_id = companies.id
INNER JOIN departments ON employees.dept_id = departments.id
GROUP BY country
ORDER BY avg_salary DESC;

-- 5. Print name of the employee which has highest salary in that coutry
SELECT country, AVG(salary) AS avg_salary FROM companies
INNER JOIN employees ON employees.company_id = companies.id
INNER JOIN departments ON employees.dept_id = departments.id
GROUP BY country
ORDER BY avg_salary DESC;