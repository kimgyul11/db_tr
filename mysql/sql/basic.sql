-- suwon을 사용 하겠다. 상단에서 한번만 사용해
use suwon;

-- 리스트 조회
select
	count(*)
	,a.questionSeq
    ,a.content
    ,a.userID
    ,a.language_select
    ,a.writetime
FROM question a
WHERE 1=1
AND a.userID = 1;
    
-- 테이블 삭제
drop table infrMemberUploaded;
-- 전체 컬럼 조회
select * from member;

-- 컬럼 추가
ALTER TABLE ccg ADD COLUMN formdate datetime;

ALTER TABLE member2 ADD COLUMN nameEng VARCHAR(45) AFTER name;

-- 컬럼 타입변경
ALTER TABLE ccg MODIFY COLUMN writetime datetime;


-- 컬럼 이름 변경
ALTER TABLE ccg CHANGE COLUMN seq ccg_seq varchar(45);

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

select 
a.*
,b.ccg_seq
,count(ccg_seq)
from ccg a
join cc b on a.ccgSeq = b.ccg_seq
group by a.ccgSeq 
;

-- 연습9월2일
SELECT
 a.*
 ,g.cc_name
FROM airLanguage_member a
LEFT JOIN ccg  c ON c.ccgSeq = a.lean_language
Left join cc g on g.ccg_Seq = c.ccgSeq
where ccg_seq
;

SELECT -- 질문창 리스트쿼리
	a.content
    ,a.writetime
    ,b.user_id
    ,c.cc_name    
    FROM question a
    join airLanguage_member b on a.userId = b.memberSeq
    join cc c on c.ccSeq = a.language_select
    ;
    


INSERT INTO ccg(
	ccgSeq
    ,ccg_groupname
    ,useNY
    ,ccg_nomber
    ,DelNy
)
VALUES(
	5
	,"GIRL"
    ,"1"
    ,"2"
);

SELECT
	b.ccSeq
	,b.cc_name
	,b.cc_nameEng
	,b.cc_number
	,b.ccg_seq
	,b.cc_delNy
	,b.cc_useNy
	,a.ccgSeq
	,a.ccg_groupname
    ,a.delNy
from ccg a
join cc b on b.ccg_seq = a.ccg_nomber
WHERE 1=1
 
;	 

select
			a.ccSeq
			,a.cc_name
			,a.cc_nameEng
			,a.cc_number
			,a.ccg_seq
			,a.cc_delNy
			,a.cc_useNy
			,b.ccg_groupname
		from cc a
		join ccg b 
		WHERE 1=1
        group by ccg_groupname
        ;
       
		
SELECT
			a.ccSeq
			,a.cc_name
			,a.cc_nameEng
			,a.cc_number
			,a.ccg_seq
			,a.cc_useNy
			,a.cc_delNy
            ,b.ccgSeq
            ,b.ccg_groupname
		FROM cc a
		join ccg b on a.ccg_seq = ccgSeq
        ;


	