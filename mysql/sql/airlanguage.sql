use suwon;
-- 공통코드
select
	a.seq
    ,a.ccg_groupname
    ,b.seq
    ,b.cc_Name
from ccg a 
join cc b on b.ccg_seq = a.seq
;


-- 로그인
select*from airLanguage_member where user_id = "KORKIM11" and user_pw="12341234!"
;


-- 질문등록
select
	seq
    ,title
    ,content
    ,userID
    ,writetime
    ,language_select
from question 
;



-- 답변목록




-- 게시글 조회



