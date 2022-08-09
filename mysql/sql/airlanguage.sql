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
select
	user_id
    ,user_name
    ,user_level
from airLanguage_member 
where user_id = "KORKIM11" and user_pw="12341234!"
;

-- 질문 목록(언어별)
select
	a.seq
    ,a.title
    ,a.content
    ,a.userID
    ,a.writetime
    ,a.language_select
from question a
where language_select = "1"
;

-- 질문 상세
select
	a.seq
    ,a.title
    ,a.content
    ,a.userID
from question a
where a.seq = "1"    
;


-- 질문 상세.답변목록
select
	a.seq
    ,a.answer_wtime
    ,a.answer_userID
    ,a.answer_content
    ,a.like_hit
    ,a.question_seq
from answer a
where question_seq ="1"
;

-- 답변목록.댓글    
select
	a.seq
    ,a.user_ID
    ,a.comment
    ,a.commet_write_time
from answer_comment a
where answer_seq = "1"
;

-- 단어로 검색
select
	a.title
    ,a.content
    ,userID
from question a
where a.title like"%한국%" and language_select ="1"     
;

    
-- 질문 등록 
-- insert 를 사용합니다..	







