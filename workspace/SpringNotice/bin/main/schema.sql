DROP TABLE IF EXISTS MEMBER;
CREATE TABLE MEMBER
(
	NO INT AUTO_INCREMENT PRIMARY KEY,
	ID VARCHAR2(30) NOT NULL UNIQUE,	
	PW VARCHAR2(64) NOT NULL,
	NAME VARCHAR2(30)NOT NULL,
	GENDER VARCHAR2(10),
	EMAIL VARCHAR2(50),
	ROLE VARCHAR2(10),
	REGDATE DATE
);

DROP TABLE IF EXISTS NOTICE;
CREATE TABLE NOTICE
(
	NO INT AUTO_INCREMENT PRIMARY KEY,
	WRITER VARCHAR2(50) REFERENCES MEMBER (ID),	
	TITLE VARCHAR2(100) NOT NULL,
	CONTENT CLOB,
	FILENAME VARCHAR2(300),
	REGDATE DATE,
	LASTEDITED DATE
);
