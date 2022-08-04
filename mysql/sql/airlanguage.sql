use suwon;

select
	a.seq
    ,a.ccg_groupname
    ,b.nomber
    ,b.cc_Name
from ccg a

join cc b on b.ccg_seq = a.seq
;


-- 로그인
select*from airLanguage_member where user_id = "KORKIM11" and user_pw="12341234!"
;


-- 질문목록
select
	a.seq
    ,a.title
    ,a.content
    ,a.userID
    ,b.content
    ,b.user_id
    
    
from question a
join answer b on b.question_seq = a.seq
;



-- 답변목록


-- 답변 댓글목록
