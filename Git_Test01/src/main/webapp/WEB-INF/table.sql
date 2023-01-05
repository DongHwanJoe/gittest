-- 사용자(회원) 정보를 저장할 테이블
CREATE TABLE users(
	id VARCHAR2(100) PRIMARY KEY,
	pwd VARCHAR2(100) NOT NULL,
	email VARCHAR2(100),
	profile VARCHAR2(100), --프로필 이미지 경로를 저장할 칼럼
	regdate DATE
);

-- 가게 리스트 테이블
CREATE TABLE board_food( -- 테이블명 추후 변경 예정
	num NUMBER PRIMARY KEY, -- 가게 고유 번호
	title VARCHAR2(100), -- 가게이름
	content CLOB, -- 소개 내용
	imagePath VARCHAR2(100), -- 섬네일 또는 가게 대표이미지
	categorie VARCHAR2(100), -- 음식 분류
	reviewCount NUMBER, -- 리뷰/댓글 개수
	reviewGrade NUMBER -- 평점 필요하면 타입 변경
);

-- 게시들의 번호를 얻어낼 시퀀스
CREATE SEQUENCE board_food_seq;

-- 댓글을 지정할 테이블
CREATE TABLE board_food_review( -- 테이블명 추후 변경 예정
    num NUMBER PRIMARY KEY, -- 리뷰의 글 번호
    writer VARCHAR2(100), -- 리뷰의 작성자 아이디
    content VARCHAR2(500), -- 리뷰 내용
    target_num VARCHAR2(100), -- 리뷰 대상(글) 번호
    target_id VARCHAR2(100), -- 댓글의 대상자 아이디(리뷰의 댓글 필요하면 테이블 따로 관리)
    ref_group NUMBER, 
    review_group NUMBER,
    deleted CHAR(3) DEFAULT 'no', --  리뷰 삭제여부
    grade CHAR(3) DEFAULT 'no', -- 평점 작성 여부
    regdate DATE
);
-- 댓글의 글번호를 얻어낼 시퀀스
CREATE SEQUENCE board_food_review_seq;

