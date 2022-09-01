-- suwon을 사용 하겠다. 상단에서 한번만 사용해
use suwon;

-- 테이블 삭제
drop table infrMemberUploaded;
-- 전체 컬럼 조회
select * from member;

-- 컬럼 추가
ALTER TABLE question ADD COLUMN lastModTime datetime;

ALTER TABLE member2 ADD COLUMN nameEng VARCHAR(45) AFTER name;

-- 컬럼 변경
ALTER TABLE question MODIFY COLUMN writetime datetime;

-- 컬럼 이름 변경
ALTER TABLE answer CHANGE COLUMN like_hit answer_likehit varchar(45);

-- 컬럼 삭제 : 보통 삭제 전에 파일 복사해놓는다
ALTER TABLE answer_like drop COLUMN like_time;


-- row 삭제 : DELETE사용

DELETE FROM answer_comment
WHERE seq=8;

select *
from question
WHERE seq='1';

-- 7월 29일 DB수업

-- 1.LIKE
-- 검색창에 검색하는거 거의 LIKE 검색사용.
SELECT*FROM member2
WHERE 1=1
AND name like 'KI%';
-- AND name like '%ki' 앞에는 뭐가나와도 괜찮음.
-- AND name like '%ki%'중간에만 ki.
SELECT* FROM member2
where 1=1
AND nameEng like'%gi%'
;
-- 2.between 범위지정해준다..
SELECT* FROM member2
where 1=1
-- AND seq = 0
-- AND seq > 1
AND seq >= 1
-- AND seq between 0 and 1
;
-- 3.null값 조회하기
SELECT* FROM member2
where 1=1
AND name = ""
;

drop table cc;





INSERT INTO ccg(
	seq
    ,cc_Name
    ,useNY
    ,ccg_seq
)
VALUES(
	4
	,"GIRL"
    ,"1"
    ,"2"
);





	