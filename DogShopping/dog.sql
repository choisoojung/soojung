CREATE TABLE dog(
	dogId NUMBER PRIMARY KEY,
	dogKind VARCHAR2(20),
	dogPrice NUMBER,
	dogImage VARCHAR2(20),
	dogCountry VARCHAR2(20),
	dogHeight NUMBER,
	dogWeight NUMBER,
	dogContent VARCHAR2(400),
	dogReadCount NUMBER
)

CREATE SEQUENCE dog_seq;

INSERT INTO dog VALUES(dog_seq.nextval, 'Çªµé', 1000, 'pu', 'ÇÁ¶û½º', 1, 20, '±Í¿±´Ù' ,0);
INSERT INTO dog VALUES(dog_seq.nextval, '°ñµç¸®Æ®¸®¹ö', 2000, 'gold', '¿µ±¹', 1, 20, 'ºÎÆ¼³­´Ù' ,0);
INSERT INTO dog VALUES(dog_seq.nextval, 'Áøµ¾°³', 3000, 'jin', '´ëÇÑ¹Î±¹', 1, 20, '¿ë¸ÍÇÏ´Ù' ,0);
INSERT INTO dog VALUES(dog_seq.nextval, '½Ã¹Ù°ß', 4000, 'si', 'ÀÏº»', 1, 20, '±Í¿±´Ù' ,0);
COMMIT