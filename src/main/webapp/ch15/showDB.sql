show databases;

CREATE TABLE member;(
id int NOT NULL AUTO_INCREMENT,
nama VARCHAR(100) NOT NULL,
passwd VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

TABLE member;  --SELECT * FROM member;
DESC member; --테이블 설명(구조 확인)

--열을 추가하기
ALTER TABLE member ADD phone VARCHAR(20);
ALTER TABLE member ADD nickbame VARCHAR(50); --별명이 왜 필요해요????

--열을 삭제하기
ALTER TABLE member DROP COLUMN nickname;

--열의 이름을 수정하기
ALTER TABLE member CHANGE COLUMN passwd password varchar(60);

--테이블의 이름을 수정하기
RENAME TABLE member TO student;
TABLE student;

--테이블에서 데이터 삽입하기
INSERT INTO student VALUES('1','홍길순','1235','01055556666');
INSERT INTO student VALUES('2','수여인','1236','01077778888');
INSERT INTO student VALUES('3','수여남','1237','01099991111');
INSERT INTO student VALUES('4','홍길동','1238','01022223333');

--조회 할 때
SELECT id, name, phone FROM student;
SELECT * FROM student ORDER BY id DESC LIMIT 2;
SELECT * FROM student WHERE id-2;

INSERT INTO student VALUES('99','Aaron','0000',null);

--열의 값을 수정할 때
UPDATE student SET phone="01055554444" WHERE name'Aaron';
SELECT * FROM student;

INSERT INTO student VALUES('15','Tracy','abcd',null);
TABLE student;

--행을 삭제하려면 
DELETE FROM student WHERE id='15';

-- CRUD 기능
--기능:    |의미   |행에서  |테이블에서
-- C(Create)생성: INSERT...
--R(Read)조회/읽기:SELECT...
--U(Update)수정/변경: UPDATE.../ ALTER...
--D(DElete)삭제: DELETE.../ DROP...

