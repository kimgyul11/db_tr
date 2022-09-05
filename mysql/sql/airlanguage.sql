use suwon;

-- 공통코드
select
	a.ccgSeq
    ,a.ccg_groupname
    ,b.seq
    ,b.cc_Name
from ccg a 
join cc b on b.ccg_seq = a.ccgSeq
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
where a.seq = 1    
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
where question_seq =1
;

-- 질문 상세.답변목록.댓글    
select
	a.seq
    ,a.user_ID
    ,a.comment
    ,a.commet_write_time
    ,a.answer_seq
from answer_comment a
where answer_seq = 1
;

-- 질문 작성일 순
select
	a.seq
    ,a.title
    ,a.content
    ,a.userID
    ,a.writetime
    ,b.answer_content
    ,b.answer_userID
from question a
join answer b on b.question_seq =  a.seq
order by a.writetime
;

-- 서브쿼리
select
	a.seq
    ,a.title
    ,a.content
    ,a.userID
    ,a.writetime
    ,b.answer_content
    ,b.answer_userID
    ,(select user_level from airLanguage_member aa where aa.seq = a.userID ) as question_user_level
from question a
join answer b on b.question_seq =  a.seq
order by a.writetime
;

-- 코드그룹 코드 묶기
select
	a.*
    ,(select count(ccg_seq) from cc aa where aa.ccg_seq = a.ccgSeq ) as countCCG
from ccg a
;
	


-- 단어로 검색
select
	a.title
    ,a.content
    ,userID
from 
	question a
where 1=1 
	and a.title like"%한국%" 
	and language_select ="1"     
;



-- union
-- 각각의 셀렉의 갯수가 같아야함,공통의 데이터만있어야한다, 공통의 데이터가 없으면 한쪽을 비워둔다.
-- 집계할때 사용한다.예6,7,8월가입자 뽑을때
-- union 과 union all 가급적이면 union all을 사용하는게 좋다. 속도가 더 빠르다...
select
	a.title
    ,a.content
    ,userID
from 
	question a
where 1=1 
	and a.content like"%한국말%" 
	and language_select ="1" 
union
select
	a.title
    ,a.content
    ,userID
from 
	question a
where 1=1 
	and a.content like"%비용%" 
	and language_select ="1"     
;



    
-- 질문 등록 
insert 	into question(
	title
    ,content
    ,language_select
)
value(
	"hello"
    ""
    "1"
)
;







