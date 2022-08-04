use suwon;
-- 08-04일 수업 JOIN 

select * from airLanguage_member;

select count(*) from question; 


select
	a.seq
    ,a.title
    ,a.content
    ,b.user_id
from question a
left join answer b on b.question_seq = a.seq
;

-- db시간에 로그인,회원가입 쿼리만들기