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

INSERT INTO dog VALUES(dog_seq.nextval, 'Ǫ��', 1000, 'pu', '������', 1, 20, '�Ϳ���' ,0);
INSERT INTO dog VALUES(dog_seq.nextval, '��縮Ʈ����', 2000, 'gold', '����', 1, 20, '��Ƽ����' ,0);
INSERT INTO dog VALUES(dog_seq.nextval, '������', 3000, 'jin', '���ѹα�', 1, 20, '����ϴ�' ,0);
INSERT INTO dog VALUES(dog_seq.nextval, '�ùٰ�', 4000, 'si', '�Ϻ�', 1, 20, '�Ϳ���' ,0);
COMMIT