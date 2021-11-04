DROP TABLE member PURGE;

CREATE TABLE member(
	memberId VARCHAR2(16) PRIMARY KEY,
	memberName VARCHAR2(15) NOT NULL,
	memberAge NUMBER NOT NULL,
	memberEmail VARCHAR2(30) NOT NULL,
	zipCode VARCHAR2(5) NOT NULL,
	memberAddr1 VARCHAR2(50) NOT NULL,
	memberAddr2 VARCHAR2(50) NOT NULL,
	memberTel VARCHAR2(15) NOT NULL,
	memberGender CHAR(1) NOT NULL,
	memberCountry VARCHAR2(15) NOT NULL,
	memberPassword VARCHAR2(16)
)

CREATE TABLE zipCodeTable(
	zipCodeId NUMBER PRIMARY KEY,
	zipCode VARCHAR2(5) UNIQUE NOT NULL,
	do VARCHAR2(21) NOT NULL,
	si VARCHAR2(21) NOT NULL,
	gu VARCHAR2(15) NOT NULL,
	ro VARCHAR2(20) NOT NULL,
	bunzi VARCHAR2(21) NOT NULL
)


ALTER TABLE member
ADD CONSTRAINT member_zipCode_fk
FOREIGN KEY (zipCode)
REFERENCES zipCodeTable(zipCode);

CREATE SEQUENCE zipCodeTable_seq;

INSERT INTO zipCodeTable VALUES(zipCodeTable_seq.nextval, '11111', '경상북도', '경산시', ' ', '하양로', '13-13');
INSERT INTO zipCodeTable VALUES(zipCodeTable_seq.nextval, '11112', '경상북도', '경산시', ' ', '하양로', '13-13');
INSERT INTO zipCodeTable VALUES(zipCodeTable_seq.nextval, '11113', '경상북도', '경산시', ' ', '하양로', '13-13');
INSERT INTO zipCodeTable VALUES(zipCodeTable_seq.nextval, '11114', '경상북도', '경산시', ' ', '하양로', '13-13');
COMMIT