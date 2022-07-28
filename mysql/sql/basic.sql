-- suwon을 사용 하겠다. 상단에서 한번만 사용해
use suwon;


-- 전체 컬럼 조회
select * from member;

-- 컬럼 추가
ALTER TABLE member2 ADD COLUMN nickname VARCHAR(45);

ALTER TABLE member2 ADD COLUMN nameEng VARCHAR(45) AFTER name;

-- 컬럼 변경
ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);

-- 컬럼 이름 변경
ALTER TABLE member2 CHANGE COLUMN nickname nick varchar(45);

-- 컬럼 삭제 : 보통 삭제 전에 파일 복사해놓는다
ALTER TABLE member2 drop COLUMN nick;

-- row 삭제 : DELETE사용

select *
from question;


	