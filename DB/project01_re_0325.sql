drop table or_detail;
drop sequence or_detail_key_seq;

DROP table orders;
drop sequence or_key_seq;

DROP table wish;
drop sequence wish_key_seq;

DROP table board;
drop sequence bd_key_seq;

DROP table cart;
drop sequence cart_key_seq;

DROP table delivery_address;
drop sequence del_key_seq;

DROP table product;
drop sequence pr_key_seq;

DROP table category;
drop sequence cate_key_seq;

DROP table member;

-- 회원정보
CREATE TABLE member
(   id           VARCHAR2(20) PRIMARY KEY,
    nick_name    VARCHAR2(50) NOT NULL UNIQUE,
    user_pass    VARCHAR2(100) NOT NULL,
    user_name    VARCHAR2(20) NOT NULL,
    email        VARCHAR2(50) NOT NULL UNIQUE, 
    phone        VARCHAR2(20) NOT NULL,
    address      VARCHAR2(200) NULL,
    postcode      VARCHAR2(50) NOT NULL,
    roadaddress   VARCHAR2(200) NOT NULL,
    jibunaddress  VARCHAR2(50) NOT NULL,
    detailaddress VARCHAR2(50) NOT NULL,
    extraaddress  VARCHAR2(50) NULL,
    gender       VARCHAR2(1) NOT NULL CHECK(gender in('M','F')),
    date_birthday  VARCHAR2(20)   NOT NULL
                  );

-- member table data 삽입
INSERT INTO member VALUES('hyjyibu','레드캐럿','1234','황윤정','brownkaki99@gmail.com','010-3304-9122','','04808','성동구 자동차시장1길 73','103동','703호','','F','1987-08-19');
INSERT INTO member VALUES('bbini1109','정은빈','1234','정은빈','bbini1109@gmail.com','010-2345-6789','','06611','서울 서초구 서초대로77길 54 서초더블유타워 13층','103동','703호','','F','1993-04-02');
INSERT INTO member VALUES('slswk59','안준혁','1234','안준혁','slswk59@naver.com','010-3456-7890','','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층 이','103동','703호','','M','2004-05-09');
INSERT INTO member VALUES('xmmzslla','조현수','1234','조현수','xmmzslla@naver.com','010-4567-8901','','03190','서울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터','103동','703호','','F','2003-04-08');
INSERT INTO member VALUES('kimminseun','김민승','1234','김민승','kimminseun@naver.com','010-5678-9012','','10414','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','103동','703호','','M','1989-05-06');
INSERT INTO member VALUES('ezencom','이젠컴','1234','이젠컴','ezencom@gmail.com','010-6789-0123','','08754','서울 관악구 신림로 340','103동','703호','','F','1998-06-09');
INSERT INTO member VALUES('user01','유저일','1234','유저일','user01@gmail.com','010-7890-1234','','13364','경기 성남시 중원구 광명로 4','103동','703호','','M','1995-07-08');
INSERT INTO member VALUES('user02','유저이','1234','유저이','user02@gmail.com','010-8901-2345','','07222','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데','103동','703호','','F','1975-08-09');
INSERT INTO member VALUES('user03','유저삼','1234','유저삼','user03@gmail.com','010-9012-3456','','08290','서울 구로구 공원로 83 4층','103동','703호','','F','1982-09-10');
INSERT INTO member VALUES('user04','유저사','1234','유저사','user04@gmail.com','010-0123-4567','','13618','경기 성남시 분당구 돌마로 73 우방코아 7층','103동','703호','','M','2008-01-23');
INSERT INTO member VALUES('user05','유저오','1234','유저오','user05@gmail.com','010-0123-4568','','04808','성동구 자동차시장1길 73','103동','703호','','F','2008-05-06');
INSERT INTO member VALUES('user06','유저육','1234','유저육','user06@gmail.com','010-0123-4569','','06611','서울 서초구 서초대로77길 54 서초더블유타워 13층','103동','703호','','F','2008-05-06');
INSERT INTO member VALUES('user07','유저칠','1234','유저칠','user07@gmail.com','010-0123-4570','','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층 이','103동','703호','','M','2008-05-06');
INSERT INTO member VALUES('user08','유저팔','1234','유저팔','user08@gmail.com','010-0123-4571','','03190','서울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터','103동','703호','','F','2008-05-06');
INSERT INTO member VALUES('user09','유저구','1234','유저구','user09@gmail.com','010-0123-4572','','10414','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','103동','703호','','M','2008-05-06');
INSERT INTO member VALUES('user10','유저십','1234','유저십','user10@gmail.com','010-0123-4573','','08754','서울 관악구 신림로 340','103동','703호','','F','2008-05-06');
INSERT INTO member VALUES('user11','유저십일','1234','유저십일','user11@gmail.com','010-0123-4574','','13364','경기 성남시 중원구 광명로 4','103동','703호','','M','2008-05-06');
INSERT INTO member VALUES('user12','유저십이','1234','유저십이','user12@gmail.com','010-0123-4575','','07222','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데','103동','703호','','F','2008-05-06');
INSERT INTO member VALUES('user13','유저십삼','1234','유저십삼','user13@gmail.com','010-0123-4576','','08290','서울 구로구 공원로 83 4층','103동','703호','','M','2008-05-06');
INSERT INTO member VALUES('user14','유저십사','1234','유저십사','user14@gmail.com','010-0123-4577','','13618','경기 성남시 분당구 돌마로 73 우방코아 7층','103동','703호','','M','2008-05-06');
INSERT INTO member VALUES('user15','유저십오','1234','유저십오','user15@gmail.com','010-0123-4578','','04808','성동구 자동차시장1길 73','103동','703호','','F','2008-05-06');
INSERT INTO member VALUES('user16','유저십육','1234','유저십육','user16@gmail.com','010-0123-4579','','06611','서울 서초구 서초대로77길 54 서초더블유타워 13층','103동','703호','','F','2008-05-06');
INSERT INTO member VALUES('user17','유저십칠','1234','유저십칠','user17@gmail.com','010-0123-4580','','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층 이','103동','703호','','M','2008-05-06');
INSERT INTO member VALUES('user18','유저십팔','1234','유저십팔','user18@gmail.com','010-0123-4581','','03190','서울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터','103동','703호','','F','2001-05-06');
INSERT INTO member VALUES('user19','유저십구','1234','유저십구','user19@gmail.com','010-0123-4582','','10414','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','103동','703호','','M','2008-05-06');
INSERT INTO member VALUES('user20','유저이십','1234','유저이십','user20@gmail.com','010-0123-4583','','08754','서울 관악구 신림로 340','103동','703호','','F','2001-05-06');
INSERT INTO member VALUES('user21','유저이십일','1234','유저이십일','user21@gmail.com','010-0123-4584','','13364','경기 성남시 중원구 광명로 4','103동','703호','','M','2001-05-06');
INSERT INTO member VALUES('user22','유저이십이','1234','유저이십이','user22@gmail.com','010-0123-4585','','07222','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데','103동','703호','','F','2001-05-06');
INSERT INTO member VALUES('user23','유저이십삼','1234','유저이십삼','user23@gmail.com','010-0123-4586','','08290','서울 구로구 공원로 83 4층','103동','703호','','F','2001-05-06');
INSERT INTO member VALUES('user24','유저이십사','1234','유저이십사','user24@gmail.com','010-0123-4587','','13618','경기 성남시 분당구 돌마로 73 우방코아 7층','103동','703호','','M','2001-05-06');
INSERT INTO member VALUES('user25','유저이십오','1234','유저이십오','user25@gmail.com','010-0123-4588','','04809 ','동구 자동차시장1길 73','103동','703호','','F','2001-05-06');
INSERT INTO member VALUES('user26','유저이십육','1234','유저이십육','user26@gmail.com','010-0123-4589','','06612 ','울 서초구 서초대로77길 54 서초더블유타워 13층','103동','703호','','M','2001-05-06');
INSERT INTO member VALUES('user27','유저이십칠','1234','유저이십칠','user27@gmail.com','010-0123-4590','','11671','경기 의정부시 신흥로258번길 25 해태프라자 2층 이','103동','703호','','M','2001-05-06');
INSERT INTO member VALUES('user28','유저이십팔','1234','유저이십팔','user28@gmail.com','010-0123-4591','','03191 ','울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터학','103동','703호','','F','2001-05-06');
INSERT INTO member VALUES('user29','유저이십구','1234','유저이십구','user29@gmail.com','010-0123-4592','','10415','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','103동','703호','','M','2001-05-06');
INSERT INTO member VALUES('user30','유저삼십','1234','유저삼십','user30@gmail.com','010-0123-4593','','08755 ','울 관악구 신림로 340','103동','703호','','F','2001-05-06');
INSERT INTO member VALUES('user31','유저삼십일','1234','유저삼십일','user31@gmail.com','010-0123-4594','','13365','경기 성남시 중원구 광명로 4','103동','703호','','M','2001-05-06');
INSERT INTO member VALUES('user32','유저삼십이','1234','유저삼십이','user32@gmail.com','010-0123-4595','','07223','울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데미','103동','703호','','F','1987-05-06');
INSERT INTO member VALUES('user33','유저삼십삼','1234','유저삼십삼','user33@gmail.com','010-0123-4596','','08291 ','울 구로구 공원로 83 4층','103동','703호','','F','1987-05-06');
INSERT INTO member VALUES('user34','유저삼십사','1234','유저삼십사','user34@gmail.com','010-0123-4597','','13619','경기 성남시 분당구 돌마로 73 우방코아 7층','103동','703호','','M','2001-05-06');
INSERT INTO member VALUES('user35','유저삼십오','1234','유저삼십오','user35@gmail.com','010-0123-4598','','04810 ','동구 자동차시장1길 73','103동','703호','','M','1987-05-06');
INSERT INTO member VALUES('user36','유저삼십육','1234','유저삼십육','user36@gmail.com','010-0123-4599','','06613 ','울 서초구 서초대로77길 54 서초더블유타워 13층','103동','703호','','M','1987-05-06');
INSERT INTO member VALUES('user37','유저삼십칠','1234','유저삼십칠','user37@gmail.com','010-0123-4600','','11672','경기 의정부시 신흥로258번길 25 해태프라자 2층 이','103동','703호','','M','1987-05-06');
INSERT INTO member VALUES('user38','유저삼십팔','1234','유저삼십팔','user38@gmail.com','010-0123-4601','','03192 ','울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터학','103동','703호','','F','1987-05-06');
INSERT INTO member VALUES('user39','유저삼십구','1234','유저삼십구','user39@gmail.com','010-0123-4602','','10416','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','103동','703호','','M','1987-05-06');
INSERT INTO member VALUES('user40','유저사십','1234','유저사십','user40@gmail.com','010-0123-4603','','08756 ','울 관악구 신림로 340','103동','703호','','F','1987-05-06');
INSERT INTO member VALUES('user41','유저사십일','1234','유저사십일','user41@gmail.com','010-0123-4604','','13366','경기 성남시 중원구 광명로 4','103동','703호','','M','1987-05-06');
INSERT INTO member VALUES('user42','유저사십이','1234','유저사십이','user42@gmail.com','010-0123-4605','','07224 ','울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데미','103동','703호','','F','1987-05-06');
INSERT INTO member VALUES('user43','유저사십삼','1234','유저사십삼','user43@gmail.com','010-0123-4606','','08292 ','울 구로구 공원로 83 4층','103동','703호','','M','1987-05-06');
INSERT INTO member VALUES('user44','유저사십사','1234','유저사십사','user44@gmail.com','010-0123-4607','','13620','경기 성남시 분당구 돌마로 73 우방코아 7층','103동','703호','','M','1987-05-06');
INSERT INTO member VALUES('user45','유저사십오','1234','유저사십오','user45@gmail.com','010-0123-4608','','04811 ','동구 자동차시장1길 73','103동','703호','','F','1987-05-06');
INSERT INTO member VALUES('user46','유저사십육','1234','유저사십육','user46@gmail.com','010-0123-4609','','06614 ','울 서초구 서초대로77길 54 서초더블유타워 13층','103동','703호','','F','1987-05-06');
INSERT INTO member VALUES('user47','유저사십칠','1234','유저사십칠','user47@gmail.com','010-0123-4610','','11673','경기 의정부시 신흥로258번길 25 해태프라자 2층 이','103동','703호','','M','1987-05-06');
INSERT INTO member VALUES('user48','유저사십팔','1234','유저사십팔','user48@gmail.com','010-0123-4611','','03193 ','울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터학','103동','703호','','M','2001-05-06');
INSERT INTO member VALUES('user49','유저사십구','1234','유저사십구','user49@gmail.com','010-0123-4612','','10417','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','103동','703호','','M','2008-05-06');
INSERT INTO member VALUES('user50','유저오십','1234','유저오십','user50@gmail.com','010-0123-4613','','08757 ','울 관악구 신림로 340','103동','703호','','F','1987-05-06');
DESC member; 

SELECT*FROM member;


--카테고리 
CREATE TABLE category
(   cate_key      number PRIMARY KEY,
    cate_name     VARCHAR2(30) NOT NULL UNIQUE);

CREATE SEQUENCE cate_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- category 데이터 삽입
INSERT INTO category VALUES(cate_key_seq.nextval, '과자,스낵,쿠키');
INSERT INTO category VALUES(cate_key_seq.nextval, '초콜릿,젤리,캔디' );
INSERT INTO category VALUES(cate_key_seq.nextval, '떡,한과' );
INSERT INTO category VALUES(cate_key_seq.nextval, '아이스크림' );
INSERT INTO category VALUES(cate_key_seq.nextval, '식빵,빵류' );
INSERT INTO category VALUES(cate_key_seq.nextval, '케이크,파이,디저트' );

DESC category; 

SELECT*FROM category;


/*
--고객센터
CREATE TABLE board
(   bd_key       number PRIMARY KEY,
    bd_title     VARCHAR2(20) NOT NULL,
    bd_comment   VARCHAR2(200) NULL,
    bd_reg_date  VARCHAR2(20) NOT NULL,
    bd_update_date VARCHAR2(20) NULL,
    id           VARCHAR2(20) NOT NULL,
    FOREIGN KEY (id) REFERENCES member (id)
                     );

CREATE SEQUENCE bd_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;  


INSERT INTO board
VALUES(bd_key_seq.nextval, '주문확인요청', '주문번호 1번 주문 확인 부탁드립니다.</br>감사합니다.</br>',
        to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'', 'hyjyibu');


DESC board; 

SELECT*FROM board;
*/
--상품 
CREATE TABLE product
(   pr_key           number      PRIMARY KEY,
    pr_name          VARCHAR2(100) NOT NULL UNIQUE,
    pr_thumbnail    VARCHAR2(150) NOT NULL,
    pr_price         number        NOT NULL,
    pr_dcprice       number        NOT NULL,
    pr_dcper         number(15,1)   NOT NULL,
    pr_detailimage  VARCHAR2(150) NOT NULL,
    pr_reg_date      VARCHAR2(50)   NOT NULL,
    pr_theme         VARCHAR2(20) NULL,
    cate_key         number       NOT NULL, 
    FOREIGN KEY (cate_key) REFERENCES category (cate_key)
                     );

CREATE SEQUENCE pr_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO product VALUES(pr_key_seq.nextval, '베리 까눌레','https://drive.google.com/uc?id=1cDazD7rq82SKpTwP3hUBQtjAskzgHGF7',15000,13500,0.1,'https://drive.google.com/uc?id=sbsVmxA6dPrMcS4KNs_GnrD8LPZk92vX',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'드라마정주행',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '크로와상 초코도넛','https://drive.google.com/uc?id=1AXk9pXH_XbS_musNwqzSQDKZ4P1CrgPq',18000,16200,0.1,'https://drive.google.com/uc?id=1R7XoZt05yXJWeq74nacFX5M_Ln8HlsdQ',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '벨기에 와플세트','https://drive.google.com/uc?id=1gN_ZHU1hBEiQrPfI5sPsb7zbYtaNBzX0',12000,10800,0.1,'https://drive.google.com/uc?id=11OGDHqXb95-wbFB3ly6J1WKt5quZt6_D',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',5);
INSERT INTO product VALUES(pr_key_seq.nextval, '초콜렛쿠키','https://drive.google.com/uc?id=1yx7PFfk3jHcD8mvP112lViVPs7W9Ek0w',8000,7200,0.1,'https://drive.google.com/uc?id=13-1CLXimK4ITciR4qa75sJwUrQ7s_EvI',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'드라마정주행',1);
INSERT INTO product VALUES(pr_key_seq.nextval, '알록달록 아이스크림','https://drive.google.com/uc?id=1_IYtlmTaTxMZNrS3V1G5MCiz7yjzz67z',9000,7200,0.2,'https://drive.google.com/uc?id=12uENoqg3mecYZatL8bU4izX6tN4hslu6',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',4);
INSERT INTO product VALUES(pr_key_seq.nextval, '그린티 마블 쿠키(100g)','https://drive.google.com/uc?id=1pIt2s7AQXe9C5LrGIED8bY1a4qGfVTXh',7500,6750,0.1,'https://drive.google.com/uc?id=1fEDYFXec_qJCYtgg8SDFKJ38BxRSryje',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'드라마정주행',1);
INSERT INTO product VALUES(pr_key_seq.nextval, '소금빵','https://drive.google.com/uc?id=1DJdSyU4mPZv8tEpZ2v-lnFr7Y33O0PKD',3000,2700,0.1,'https://drive.google.com/uc?id=17MNrLPop2qNL9vKty9yCGMl8JM_dhV2x',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',5);
INSERT INTO product VALUES(pr_key_seq.nextval, '치아씨드 요거트(1개)','https://drive.google.com/uc?id=1ALvLJQh8GDCI-ai5YFVuA_AoFNDUcnNl',4500,4050,0.1,'https://drive.google.com/uc?id=1eQJwTFa5dEV2UsnfdIYR-MtT5_DTNE-M',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',4);
INSERT INTO product VALUES(pr_key_seq.nextval, '단호박 파이(조각)','https://drive.google.com/uc?id=1obxsK08V22IwcHOc_ycX-F228BwSwQIk',6500,5850,0.1,'https://drive.google.com/uc?id=1t51OXT2Xt6rg6CkSvN-eMRHQkltV1Egp',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '파운드 케이크 플레인(조각)','https://drive.google.com/uc?id=1pXZgFaSqhLPgwEEkAOg-4dCH43yz489w',5000,4250,0.15,'https://drive.google.com/uc?id=1uXzlhKQwBftZKzezUfBroNmDz1UFlwYe',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '스트로베리 치즈 케이크(조각)','https://drive.google.com/uc?id=1V9UvZ8xeQHyjOSfbRAVMUHD-WPkGj6r4',6800,6120,0.1,'https://drive.google.com/uc?id=1nL35xscYkf5ynLijGaH3_0gAE5l_80s9',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '화이트 초콜릿(200g)','https://drive.google.com/uc?id=1zJjKsMsqq4Ln0DvtAdtpKiINg7Ydg2zO',19000,13300,0.3,'https://drive.google.com/uc?id=1oVkeyt_8SeMW-_d7ROsVGhDiQpBj3Q56',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '딸기 유자 찹쌀떡(4개)','https://drive.google.com/uc?id=1cvmzxXQRv1isXrufRR6jhan-NuXR5FaI',11000,9900,0.1,'https://drive.google.com/uc?id=1ImYee33BU25P7UZad7p_2AhiCFEmPpUS',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',3);
INSERT INTO product VALUES(pr_key_seq.nextval, '메론빵(1개)','https://drive.google.com/uc?id=1GiudsA76aVY00Qee3JANHrLNuLORg3uA',3500,3150,0.1,'https://drive.google.com/uc?id=1kAzyqedC2cxt0c6Q18WqVhWGRURNdXnp',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',5);
INSERT INTO product VALUES(pr_key_seq.nextval, '월넛 초코 브라우니(1개)','https://drive.google.com/uc?id=1WLXP9L5gJapIVJYZ9Ii3umkUfDKbbTME',4500,4050,0.1,'https://drive.google.com/uc?id=1RCX4igZC1x4xhNNTE2pQzoGv2y1n0sec',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '믹스 캔디(딸기,파인애플,오렌지,사과)','https://drive.google.com/uc?id=15FJCld59x-I_2cumXAURZ8KnuhhdF1Q0',6000,5400,0.1,'https://drive.google.com/uc?id=1MawTXx6kAXd4dKsJ6ioqnXIhFwnE7i8n',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'드라마정주행',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '믹스 젤리(80g)','https://drive.google.com/uc?id=1z4NO-5ANc7atbUxggS4guKCLCX2j87MR',7500,6750,0.1,'https://drive.google.com/uc?id=12F1mT1KOmQQRVt04r3Zeyu62TeaCxeMs',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '스마일 캔디(50g)','https://drive.google.com/uc?id=1si2TjWU6BuFb6Ndn87cgakHgx-s48Beu',5800,5220,0.1,'https://drive.google.com/uc?id=1kXC1d0ls4iqWoBO-xHyldrN-z_X-hE-t',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '워터멜론 캔디(50g)','https://drive.google.com/uc?id=1Pm_hBf4yXtnHuHs2swQdkfJXGRbiCJ5F',6300,5355,0.15,'https://drive.google.com/uc?id=191K0eALXqqeJwZnoOeaoQEFCZaCrnr3X',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '유기농 쌀빵(3개)','https://drive.google.com/uc?id=1WUPM3RQrhfdFR62_Jt1846GBRzmLgSmn',8400,7560,0.1,'https://drive.google.com/uc?id=11bH-euLs3htwqXS0qdzaw3UKvHLsGNqZ',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'올가닉제품',5);
INSERT INTO product VALUES(pr_key_seq.nextval, '카카오 미니 돔 케이크(조각)','https://drive.google.com/uc?id=1F9mj9YzyfLohdhVWzE8mdq1oCj7DjYXa',7800,7020,0.1,'https://drive.google.com/uc?id=1T7QXMTXe-mPIIvgyicGLxhA8wXwkVseQ',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '마시멜로 초코 슈(3개)','https://drive.google.com/uc?id=1qnumrrymXSTwkocoGVCpvcHrkk5DABkU',8400,7560,0.1,'https://drive.google.com/uc?id=1pvd9eSMoYq3pfzdBrTCi50WYjV1MXmP_',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '베리 다크 초콜릿(50g)','https://drive.google.com/uc?id=1jUGkS7vubnpbiMF3CobZDmvdZLOJdXKX',7200,6480,0.1,'https://drive.google.com/uc?id=1_KRI7hOxQ5ckr9IgqPYbXhmSIfBqpGAP',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '에그 타르트(4개)','https://drive.google.com/uc?id=1iGgRHQBHqlEnTTcX6PN0QH4jWDIIuTng',9500,6650,0.3,'https://drive.google.com/uc?id=1Mq4dQGLRowObOWowebdsdLZdFxwFmbh1',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '커피 한스푼(200g)','https://drive.google.com/uc?id=1BHVuM79vVKsAoapWo-DcZqC8ybxW2RJl',8400,7560,0.1,'https://drive.google.com/uc?id=1EtqjO2JLJIb37APY6LAER3Nk9-1DFi1w',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',4);
INSERT INTO product VALUES(pr_key_seq.nextval, '크로아상 플레인(2개)','https://drive.google.com/uc?id=1CPk-nJRjAVugFU1mpQ-uftnCrgvxwTxV',7000,6300,0.1,'https://drive.google.com/uc?id=1kpDcu5vjXiVv0eoEKUIp66w7xq5dR5tm',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',5);
INSERT INTO product VALUES(pr_key_seq.nextval, '귀리 건강빵','https://drive.google.com/uc?id=1U4TZazC9l9nLPxhIe4_R3VUGDXsr4Zcc',6700,6030,0.1,'https://drive.google.com/uc?id=1MtI3Qck3km7yIQzWW2AE1NBbSJnORllh',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'올가닉제품',5);
INSERT INTO product VALUES(pr_key_seq.nextval, '바닐라빈 마카롱(4개)','https://drive.google.com/uc?id=1g9x4Y8AzYdSJM1pIoalJBdogxcFmvq3R',11000,9900,0.1,'https://drive.google.com/uc?id=1aZgQ6BxesqcngbByRQBVt0DgsNX6-Bec',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '파운드 케이크 곡물(홀)','https://drive.google.com/uc?id=15Q9g7BpRVx_rqPEdc3Bq3uFKQsroJKqU',24000,21600,0.1,'https://drive.google.com/uc?id=1pwV_8xTEXew8Dw7elmkJ5bjA01cn_Api',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'올가닉제품',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '커스터드 푸딩(1개)','https://drive.google.com/uc?id=1bf0gNLLzoZBFtXc_0Iys_B5iZT2QJrDq',4300,3870,0.1,'https://drive.google.com/uc?id=1b9N98N9FvvJ9rbyco06VoxwoaWnCLvAJ',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '동글떡 녹차(4개)','https://drive.google.com/uc?id=1l9P6fv3lw0yHE4yYMQ4bWyE-tsWFWZE_',3700,3330,0.1,'https://drive.google.com/uc?id=1rW7i46YqgANqOhvdbFbMjAun9MoImop-',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'올가닉제품',3);
INSERT INTO product VALUES(pr_key_seq.nextval, '체다치즈 브레드(1개)','https://drive.google.com/uc?id=1LiBpqO3YROPG-6AAJdC_SIFDQJejNCzR',5500,4950,0.1,'https://drive.google.com/uc?id=1nnzUPzpSF180Vo0ga3gJFWTJGbKwnamQ',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '미니 시나몬롤(6개)','https://drive.google.com/uc?id=1dZvgbyXiAiiXXZZ-vf7W5CVIC71WVq8U',8900,4450,0.5,'https://drive.google.com/uc?id=1-3SylHSFcFIVmmEITIM7AzF70lQjRnBy',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'드라마정주행',5);
INSERT INTO product VALUES(pr_key_seq.nextval, '밤 앙금 만쥬(6개)','https://drive.google.com/uc?id=1J5z_ov7mSiqTHArDhPieQermUhDmHq5K',10500,9450,0.1,'https://drive.google.com/uc?id=1Sd6G1AheUcVn1GiFtqYmrBDy5gfTcrWK',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',3);
INSERT INTO product VALUES(pr_key_seq.nextval, '초코 바른 마시멜로우(4개)','https://drive.google.com/uc?id=17S13Eu51riqj0DdHbucDPAzMP-UBOdFI',8000,7200,0.1,'https://drive.google.com/uc?id=1AxUB8mUwPo2SH9z7jiPwwqabjb1qTMOF',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '초코 막대 사탕(3개)','https://drive.google.com/uc?id=1QytUX1PYWTZIV32XIMYohsrVpq93TlMY',3500,3150,0.1,'https://drive.google.com/uc?id=1N0begDvCKdLIqtxaJq2mJg5BaQc4de8Z',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '크리미 단호박 파이(홀)','https://drive.google.com/uc?id=1cfU7CEKcTYEv_nevXJyRguOWVmxJxM0F',36000,32400,0.1,'https://drive.google.com/uc?id=1is57_jZEPWMuSgI2Angh78D8AofMbZ_v',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'올가닉제품',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '민트 라임 캬라멜 크레페(조각)','https://drive.google.com/uc?id=1VUhe6n1Au3-Zv9XDOqrPuU3i8gr1afm5',6700,5695,0.15,'https://drive.google.com/uc?id=1apOjWc_ENQXO_-ffmstUY4hLbgjB4KHU',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'올가닉제품',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '버터 쿠키(200g)','https://drive.google.com/uc?id=1Z2T9ZqOJhjUayZIjhuSxtVjPTNYZXYVE',14500,13050,0.1,'https://drive.google.com/uc?id=1Bn22xOt3Nu5DuzmAPVGWeGtntt7C5eW4',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'드라마정주행',1);
INSERT INTO product VALUES(pr_key_seq.nextval, '초코 시나몬 롤(2개)','https://drive.google.com/uc?id=1hm07d2_WbBUtwLFgnVd3DLvD_v_csv-l',8600,7740,0.1,'https://drive.google.com/uc?id=1M8EknhEWs2fFZXJPG1159RX-RyAK61T1',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',5);
INSERT INTO product VALUES(pr_key_seq.nextval, '초코 르뱅 쿠키(8개)','https://drive.google.com/uc?id=1lbGpKmhMzDjoVfiGhYLnOgwDvQOSasrC',16800,15120,0.1,'https://drive.google.com/uc?id=1vAsmZ9Sk1vjwaZLnV51YnT02qs7Mwcmb',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'드라마정주행',1);
INSERT INTO product VALUES(pr_key_seq.nextval, '스틱 츄러스(4개)','https://drive.google.com/uc?id=1VdX5fmXhv9bK20JQjqok3qwYX5zJDoD5',8200,7380,0.1,'https://drive.google.com/uc?id=1gLhxHHywND7QatJZQZD-TkJzDdAB9x1-',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'드라마정주행',1);
INSERT INTO product VALUES(pr_key_seq.nextval, '딸기쨈 쿠키(6개)','https://drive.google.com/uc?id=1Qh9JvWn-ncUZxOgaLQ9NAmd6hpx5Caxb',7200,4320,0.4,'https://drive.google.com/uc?id=12Wl4wpzwGz5PvaccI3Yr0WK36QcmajCu',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',1);
INSERT INTO product VALUES(pr_key_seq.nextval, '믹스 베리 타르트(홀)','https://drive.google.com/uc?id=1g8T9hEpys-7zhX4ibpR29XriEayv2Cmd',38000,34200,0.1,'https://drive.google.com/uc?id=1uV5B-Bykn2kPS5d_-Wkri9gbcIL8JHTP',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '미니 크로아상 세트(초코,플레인,아몬드)','https://drive.google.com/uc?id=1J8JdVPfhsE57E3yfDIfTnGebOubsKAN-',7500,6750,0.1,'https://drive.google.com/uc?id=1xTGnd61dgfLype28a3hFEZ7e8Ofr0Tsr',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',5);
INSERT INTO product VALUES(pr_key_seq.nextval, '에스프레소 푸딩(1개)','https://drive.google.com/uc?id=1bvYz7YaT6mapr7D8Hp4WVI5SedApehir',3500,3150,0.1,'https://drive.google.com/uc?id=1tNw5zicFuHO7IrD-15YUKTDzy1T5Nddq',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '산딸기 치즈 케이크(조각)','https://drive.google.com/uc?id=1FJ4amWcZSlLHJpmNkFESbfGT4zirrURl',7800,6240,0.2,'https://drive.google.com/uc?id=1zZ0hmCJ6ZCv1qFb8gppB89sOnzT7jbpC',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '하동 녹차 아이스크림(1개)','https://drive.google.com/uc?id=1wsCdD50Hpow0h3abPN30G5VXuZO5YZxS',4700,4230,0.1,'https://drive.google.com/uc?id=1ncBMYFd0uIyfpmV53nlHR7-MaZKcFXqF',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'올가닉제품',4);
INSERT INTO product VALUES(pr_key_seq.nextval, '라즈베리 바닐라 아이스크림 스틱','https://drive.google.com/uc?id=1pp_U_hVbjw5_PtynHQiDA3FLGiW0snMe',3800,3420,0.1,'https://drive.google.com/uc?id=10aOfKsFh_juxqZiC0G-a_70SgFJYehlT',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',4);
INSERT INTO product VALUES(pr_key_seq.nextval, '시나몬 크레페 케이크(피스)','https://drive.google.com/uc?id=1GL7sTi0E29kE3B6psV0ofvSShKI9Nw8K',6700,5695,0.15,'https://drive.google.com/uc?id=1vRWgp_mUDTaUwkuc026CgpApXFPzEGzG',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);
INSERT INTO product VALUES(pr_key_seq.nextval, '견과류 초콜릿(1판)','https://drive.google.com/uc?id=1X1XdaUxdFJA-eTKJr3W6ZWKuB2YM_mXs',14000,12600,0.1,'https://drive.google.com/uc?id=1_ImXAdt6xcrdKLPmA6obW4xfzKN0t1AC',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2);
INSERT INTO product VALUES(pr_key_seq.nextval, '베리 요거트(1개)','https://drive.google.com/uc?id=10g17DvgpXWkXW-t1BLtxAc4kHIQxvSUs',6300,5670,0.1,'https://drive.google.com/uc?id=1rcXzX6La7jezD43DT0GLEHwVWE878k55',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'올가닉제품',4);
INSERT INTO product VALUES(pr_key_seq.nextval, '커피맛 마카롱(3개)','https://drive.google.com/uc?id=1P9iUP2Yu_WRZ5ajTp3Bt5N5jF6LePOfp',7800,7020,0.1,'https://drive.google.com/uc?id=1EB5Gdl3GYJsxC1TQGVjY-2F6xjuF_ZSw',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6);

DESC product; 

SELECT*FROM product;

SELECT * FROM product WHERE pr_key=42;
SELECT * FROM product WHERE pr_name LIKE '%베리%';
SELECT * FROM product ORDER BY pr_reg_date desc;
SELECT * FROM product ORDER BY pr_dcper desc;
SELECT * FROM product order by pr_theme asc;
SELECT * FROM product WHERE pr_theme='드라마정주행';
select  * from product order by dbms_random.value; --랜덤 정렬

-- 배송지 가져오기
select * FROm
(SELECT d.del_key, d.del_address, d.del_detailaddress, m.id
FROM delivery_address d, member m
WHERE d.id = m.id AND m.id='user01')
where rownum=1;




--배송지
CREATE TABLE delivery_address
(   del_key         number PRIMARY KEY,
    receiver_name   VARCHAR2(20) NOT NULL,
    del_phone       VARCHAR2(20) NOT NULL,
    del_postcode      VARCHAR2(50) NULL,
    del_address     VARCHAR2(200) NOT NULL,
    del_detailaddress VARCHAR2(200) NULL,
    del_reg_date    VARCHAR2(50) NOT NULL,
    id              VARCHAR2(20) NOT NULL,
    FOREIGN KEY (id) REFERENCES member (id)
                     );
                     
CREATE SEQUENCE del_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- delivery_address 데이터 삽입
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'정은빈','010-2345-6789','06611','서울 서초구 서초대로77길 54 서초더블유타워 13층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'hyjyibu');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'안준혁','010-3456-7890','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층 이','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'hyjyibu');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'조현수','010-4567-8901','03190','서울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'hyjyibu');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'김민승','010-5678-9012','10414','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'bbini1109');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'이젠컴','010-6789-0123','08754','서울 관악구 신림로 340','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'bbini1109');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저일','010-7890-1234','13364','경기 성남시 중원구 광명로 4','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user01');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이','010-8901-2345','07222','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데미','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user01');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼','010-9012-3456','08290','서울 구로구 공원로 83 4층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user02');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사','010-0123-4567','13618','경기 성남시 분당구 돌마로 73 우방코아 7층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user03');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'황윤정','010-3304-9122','04808','성동구 자동차시장1길 73','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'hyjyibu');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'안준혁','010-3456-7890','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'slswk59');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'이젠컴','010-6789-0123','08754','서울 관악구 신림로 340','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'slswk59');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저일','010-7890-1234','13364','경기 성남시 중원구 광명로 4','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'xmmzslla');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이','010-8901-2345','07222','서울 영등포구 당산로49길 4 태인빌딩 1F ','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'xmmzslla');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼','010-9012-3456','08290','서울 구로구 공원로 83 4층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'xmmzslla');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사','010-0123-4567','13618','경기 성남시 분당구 돌마로 73 우방코아 7층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user04');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저오','010-0123-4568','04808','성동구 자동차시장1길 73','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user05');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저육','010-0123-4569','06611','서울 서초구 서초대로77길 54 서초더블유타워 13층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user06');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저칠','010-0123-4570','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user07');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저팔','010-0123-4571','03190','서울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user08');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저구','010-0123-4572','10414','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user09');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저십','010-0123-4573','08754','서울 관악구 신림로 340','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user10');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저십일','010-0123-4574','13364','경기 성남시 중원구 광명로 4','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user11');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저십이','010-0123-4575','07222','서울 영등포구 당산로49길 4 태인빌딩 1F ','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user12');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저십삼','010-0123-4576','08290','서울 구로구 공원로 83 4층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user13');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저십사','010-0123-4577','13618','경기 성남시 분당구 돌마로 73 우방코아 7층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user14');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저십오','010-0123-4578','04808','성동구 자동차시장1길 73','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user15');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저십육','010-0123-4579','06611','서울 서초구 서초대로77길 54 서초더블유타워 13층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user16');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저십칠','010-0123-4580','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층 ','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user17');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저십팔','010-0123-4581','03190','서울 종로구 종로 78 미려빌딩 6층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user18');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저십구','010-0123-4582','10414','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user19');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이십','010-0123-4583','08754','서울 관악구 신림로 340','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user20');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이십일','010-0123-4584','13364','경기 성남시 중원구 광명로 4','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user21');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이십이','010-0123-4585','07222','서울 영등포구 당산로49길 4 태인빌딩 1F','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user22');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이십삼','010-0123-4586','08290','서울 구로구 공원로 83 4층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user23');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이십사','010-0123-4587','13618','경기 성남시 분당구 돌마로 73 우방코아 7층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user24');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이십오','010-0123-4588','04809','동구 자동차시장1길 73','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user25');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이십육','010-0123-4589','06612','서울 서초구 서초대로77길 54 서초더블유타워 13층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user26');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이십칠','010-0123-4590','11671','경기 의정부시 신흥로258번길 25 해태프라자 2층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user27');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이십팔','010-0123-4591','03191 ','서울 종로구 종로 78 미려빌딩 6층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user28');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이십구','010-0123-4592','10415','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user29');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼십','010-0123-4593','08755 ','서울 관악구 신림로 340','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user30');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼십일','010-0123-4594','13365','경기 성남시 중원구 광명로 4','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user31');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼십이','010-0123-4595','07223 ','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데미','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user32');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼십삼','010-0123-4596','08291 ','서울 구로구 공원로 83 4층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user33');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼십사','010-0123-4597','13619','경기 성남시 분당구 돌마로 73 우방코아 7층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user34');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼십오','010-0123-4598','04810 ','동구 자동차시장1길 73','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user35');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼십육','010-0123-4599','06613 ','서울 서초구 서초대로77길 54 서초더블유타워 13층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user36');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼십칠','010-0123-4600','11672','경기 의정부시 신흥로258번길 25 해태프라자 2층 이','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user37');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼십팔','010-0123-4601','03192 ','서울 종로구 종로 78 미려빌딩 6층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user38');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼십구','010-0123-4602','10416','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user39');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사십','010-0123-4603','08756 ','서울 관악구 신림로 340','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user40');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사십일','010-0123-4604','13366','경기 성남시 중원구 광명로 4','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user41');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사십이','010-0123-4605','07224 ','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데미','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user42');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사십삼','010-0123-4606','08292 ','서울 구로구 공원로 83 4층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user43');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사십사','010-0123-4607','13620','경기 성남시 분당구 돌마로 73 우방코아 7층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user44');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사십오','010-0123-4608','04811 ','동구 자동차시장1길 73','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user45');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사십육','010-0123-4609','06614 ','서울 서초구 서초대로77길 54 서초더블유타워 13층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user46');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사십칠','010-0123-4610','11673','경기 의정부시 신흥로258번길 25 해태프라자 2층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user47');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사십팔','010-0123-4611','03193 ','서울 종로구 종로 78 미려빌딩 6층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user48');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사십구','010-0123-4612','10417','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user49');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저오십','010-0123-4613','08757 ','서울 관악구 신림로 340','1402호',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user50');

DESC delivery_address; 

SELECT*FROM delivery_address;

-- 장바구니 리스트 불러오기
SELECT p.pr_key, p.pr_name, p.pr_thumbnail, pr_dcprice, t.id, t.cart_count, t.cart_price
FROM member m, product p, cart t
WHERE m.id = t.id and p.pr_key = t.pr_key
and m.id = 'user01';

-- 장바구니 추가
INSERT 
INTO cart 
VALUES(cart_key_seq.nextval,1,4500,
    to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',10,'user01');

SELECT * FROM cart WHERE id ='user01';

delete from cart where cart_key = 41;

-- 장바구니 업데이트
UPDATE cart
SET cart_count=2, cart_price=7700, cart_reg_date=to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS')
WHERE id='user01' and pr_key=40;

SELECT p.pr_key, p.pr_name, p.pr_thumbnail, m.id, t.cart_price, t.cart_count, t.cart_key
		FROM member m, product p, cart t
		WHERE m.id = t.id and p.pr_key = t.pr_key
		and m.id = 'wp4dnjsth';
        


--장바구니
CREATE TABLE cart (
  cart_key NUMBER PRIMARY KEY,
  cart_count NUMBER NOT NULL,
  cart_price NUMBER NOT NULL,
  cart_reg_date VARCHAR2(50) NOT NULL,
  cart_del_date VARCHAR2(50) NULL,
  pr_key   NUMBER NOT NULL,
  id       VARCHAR2(20) NOT NULL,
  FOREIGN KEY (id) REFERENCES member (id),
  FOREIGN KEY (pr_key) REFERENCES product(pr_key)
);
                     
CREATE SEQUENCE cart_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO cart VALUES(cart_key_seq.nextval,1,4500,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',10,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,3870,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',30,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,7740,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',40,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,2,12060,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',50,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,3,22680,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',20,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,16200,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,7200,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',4,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,6750,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,4050,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',8,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,4500,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',10,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,34200,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',44,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,3150,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',46,'ezencom');
INSERT INTO cart VALUES(cart_key_seq.nextval,3,12690,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',48,'user03');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,6030,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',50,'user03');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,7200,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',35,'user03');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,7380,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',42,'user03');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,3420,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',49,'user03');
INSERT INTO cart VALUES(cart_key_seq.nextval,20,81000,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',8,'user02');
INSERT INTO cart VALUES(cart_key_seq.nextval,40,216000,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',16,'user02');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,7380,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',42,'user01');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,4230,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',48,'user01');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,2700,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',7,'user01');
INSERT INTO cart VALUES(cart_key_seq.nextval,7,22050,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',14,'user01');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,7200,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',35,'user01');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,7740,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',40,'user01');
INSERT INTO cart VALUES(cart_key_seq.nextval,2,13500,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',45,'user01');
INSERT INTO cart VALUES(cart_key_seq.nextval,2,12060,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',50,'bbini1109');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,16200,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2,'bbini1109');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,7200,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',4,'bbini1109');
INSERT INTO cart VALUES(cart_key_seq.nextval,3,20250,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',6,'bbini1109');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,4050,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',8,'bbini1109');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,3150,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',36,'bbini1109');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,7740,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',40,'bbini1109');
INSERT INTO cart VALUES(cart_key_seq.nextval,1,34200,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',44,'bbini1109');
INSERT INTO cart VALUES(cart_key_seq.nextval,6,43200,to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',35,'bbini1109');

DESC cart; 

SELECT*FROM cart;

select * from cart where id='user01';

--찜
CREATE TABLE wish
(   wish_key   number PRIMARY KEY,
    wish_reg_date VARCHAR2(50) NOT NULL,
    wish_del_date VARCHAR2(50) NULL,
    pr_key     number NOT NULL,  
    id         VARCHAR2(20) NOT NULL,
    FOREIGN KEY (pr_key) REFERENCES product (pr_key),
    FOREIGN KEY (id) REFERENCES member (id)
                     );
                     
CREATE SEQUENCE wish_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',40,'hyjyibu');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',50,'hyjyibu');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',14,'hyjyibu');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',1,'hyjyibu');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',12,'hyjyibu');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',23,'hyjyibu');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',48,'hyjyibu');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',18,'hyjyibu');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',24,'hyjyibu');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',9,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',41,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',51,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',3,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',5,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',47,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',44,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',2,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',38,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',49,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',29,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',10,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',15,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',12,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',17,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',4,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',18,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',35,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',37,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',45,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',50,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',39,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',34,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',32,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',52,'bbini1109');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',19,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',41,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',36,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',48,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',21,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',47,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',50,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',27,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',16,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',17,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',49,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',20,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',32,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',18,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',35,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',25,'user01');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',41,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',43,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',5,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',14,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',24,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',4,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',39,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',10,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',20,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',23,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',52,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',25,'user02');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',44,'user03');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',18,'user03');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',23,'user03');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',49,'user03');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',28,'user03');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',36,'user03');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',53,'user03');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',16,'user03');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',43,'slswk59');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',37,'slswk59');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',12,'slswk59');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',6,'slswk59');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',41,'slswk59');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',16,'slswk59');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',26,'slswk59');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',24,'xmmzslla');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',50,'xmmzslla');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',52,'xmmzslla');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',11,'xmmzslla');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',5,'xmmzslla');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',4,'xmmzslla');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',5,'ezencom');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',53,'ezencom');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',1,'ezencom');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',50,'ezencom');
INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:mi:SS'),'',42,'ezencom');
DESC wish; 

SELECT*FROM wish;

--주문내역 
CREATE TABLE orders
(   or_key        VARCHAR2(50)   PRIMARY KEY,
    or_count      number       NOT NUll,
    or_price      number       NOT NUll,
    or_date       VARCHAR2(50)    NOT NULL,  
    del_status   VARCHAR2(20) NULL,
    DEL_KEY      number       NOT NULL,
    id           VARCHAR2(20) NOT NULL,
    FOREIGN KEY (DEL_KEY) REFERENCES DELIVERY_ADDRESS(DEL_KEY),
    FOREIGN KEY (id) REFERENCES member (id)
                     );
                     
INSERT INTO orders(or_key, or_count, or_price, or_date, del_key, id)
		  VALUES (56, 7, 64800, 
          to_char(sysdate,'YYYY-MM-DD HH24:MI:SS'), 6, 'user01');
          
          
INSERT INTO orders VALUES(1,8,47880, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',4,'bbini1109');
INSERT INTO orders VALUES(2,13,167040, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',2,'hyjyibu');
INSERT INTO orders VALUES(3,5,33120, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',11,'slswk59');
INSERT INTO orders VALUES(4,7,72180, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',7,'user01');
INSERT INTO orders VALUES(5,3,17370, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',8,'user02');
INSERT INTO orders VALUES(6,14,178560, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',9,'user03');
INSERT INTO orders VALUES(7,9,110790, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',16,'user04');
INSERT INTO orders VALUES(8,25,222570, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',17,'user05');
INSERT INTO orders VALUES(9,10,83790, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',18,'user06');
INSERT INTO orders VALUES(10,10,66780, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',19,'user07');
INSERT INTO orders VALUES(11,5,31860, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',20,'user08');
INSERT INTO orders VALUES(12,9,128250, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',21,'user09');
INSERT INTO orders VALUES(13,3,31320, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',22,'user10');
INSERT INTO orders VALUES(14,5,45720, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',23,'user11');
INSERT INTO orders VALUES(15,3,23400, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',24,'user12');
INSERT INTO orders VALUES(16,4,36180, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',25,'user13');
INSERT INTO orders VALUES(17,6,33480, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',26,'user14');
INSERT INTO orders VALUES(18,3,22680, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',27,'user15');
INSERT INTO orders VALUES(19,6,52020, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',28,'user16');
INSERT INTO orders VALUES(20,7,75060, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',29,'user17');
INSERT INTO orders VALUES(21,14,105570, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',30,'user18');
INSERT INTO orders VALUES(22,4,31050, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',31,'user19');
INSERT INTO orders VALUES(23,6,55980, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',32,'user20');
INSERT INTO orders VALUES(24,8,49590, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',33,'user21');
INSERT INTO orders VALUES(25,10,94950, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',34,'user22');
INSERT INTO orders VALUES(26,4,58680, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',35,'user23');
INSERT INTO orders VALUES(27,7,59310, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',36,'user24');
INSERT INTO orders VALUES(28,5,43110, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',37,'user25');
INSERT INTO orders VALUES(29,7,49770, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',38,'user26');
INSERT INTO orders VALUES(30,10,130770, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',39,'user27');
INSERT INTO orders VALUES(31,14,128610, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',40,'user28');
INSERT INTO orders VALUES(32,7,44820, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',41,'user29');
INSERT INTO orders VALUES(33,6,59850, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',42,'user30');
INSERT INTO orders VALUES(34,11,100080, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',43,'user31');
INSERT INTO orders VALUES(35,8,63900, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',44,'user32');
INSERT INTO orders VALUES(36,4,48510, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',45,'user33');
INSERT INTO orders VALUES(37,8,120690, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',46,'user34');
INSERT INTO orders VALUES(38,11,94590, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',47,'user35');
INSERT INTO orders VALUES(39,12,140670, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',48,'user36');
INSERT INTO orders VALUES(40,14,124110, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',49,'user37');
INSERT INTO orders VALUES(41,16,197910, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',50,'user38');
INSERT INTO orders VALUES(42,18,145890, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',51,'user39');
INSERT INTO orders VALUES(43,23,197460, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',52,'user40');
INSERT INTO orders VALUES(44,10,151560, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',53,'user41');
INSERT INTO orders VALUES(45,12,80640, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',54,'user42');
INSERT INTO orders VALUES(46,6,79560, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',55,'user43');
INSERT INTO orders VALUES(47,8,93780, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',56,'user44');
INSERT INTO orders VALUES(48,16,136440, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',57,'user45');
INSERT INTO orders VALUES(49,14,109980, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',58,'user46');
INSERT INTO orders VALUES(50,33,318780, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',59,'user47');
INSERT INTO orders VALUES(51,6,48960, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',60,'user48');
INSERT INTO orders VALUES(52,6,66150, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',61,'user49');
INSERT INTO orders VALUES(53,5,31975, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',62,'user50');
INSERT INTO orders VALUES(54,6,40770, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',15,'xmmzslla');
INSERT INTO orders VALUES(55,7,65880, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'',15,'xmmzslla');
DESC orders; 

SELECT*FROM orders;

-- user01 아이디가 구매한 리스트에서 대표상품만 가져오기
SELECT * FROM(
SELECT o.id, o.or_key, o.or_price, o.or_date, t.pr_key, p.pr_name,
    ROW_NUMBER() OVER(PARTITION BY o.or_key ORDER BY t.pr_key DESC) AS RankNO
FROM orders o, or_detail t, product p
WHERE o.or_key = t.or_key AND p.pr_key = t.pr_key AND o.id='user01'
) WHERE RankNO = 1;

-- 전체리스트 가져오기
SELECT o.id, o.or_key, o.or_price, o.or_date, t.pr_key, p.pr_name
FROM orders o, or_detail t, product p
WHERE o.or_key = t.or_key AND p.pr_key = t.pr_key AND o.id='user01'
ORDER BY or_key ASC, or_date ASC;


-- 주문상세내역 리스트 가져오기
SELECT o.or_key, t.or_detail_key, t.or_pr_count,
    p.pr_name, p.pr_thumbnail, p.pr_price, p.pr_dcprice
FROM orders o, or_detail t, product p
WHERE o.or_key = t.or_key AND p.pr_key = t.pr_key AND o.or_key='20230325_264923'
ORDER BY or_detail_key ASC, or_date ASC;




-- 판매순 쿼리
SELECT b.*
FROM(SELECT rownum AS rm, a.*
FROM(SELECT p.pr_key, p.pr_name, p.pr_thumbnail, p.pr_price, 
p.pr_dcprice, p.pr_dcper, sum(or_pr_count)
FROM or_detail t, product p
WHERE t.pr_key = p.pr_key
GROUP BY p.pr_key, p.pr_name, p.pr_thumbnail, p.pr_price, p.pr_dcprice, p.pr_dcper
ORDER BY sum(or_pr_count) DESC)a
)b
WHERE b.rm>=1 AND b.rm<=5;

-- 주문상세내역
CREATE TABLE or_detail
(   or_detail_key        number    PRIMARY KEY,
    or_pr_count        number NOT NULL,
    or_pr_price        number NOT NULL,
    or_key        VARCHAR2(50) NOT NULL,
    pr_key        number NOT NULL, 
    FOREIGN KEY (or_key) REFERENCES orders(or_key),
    FOREIGN KEY (pr_key) REFERENCES product(pr_key)
                     );

CREATE SEQUENCE or_detail_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,1,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,6840,1,49);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,1,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6300,1,26);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4230,1,48);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,1,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7380,1,42);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,2700,1,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,34200,2,44);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,2,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,21600,2,29);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,2,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13050,2,39);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5400,2,16);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,30240,2,41);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,3,21060,2,21);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,2,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,2,13);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,2,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,2,14);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,2,36);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4500,3,10);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,3,38);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,3,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8100,3,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,3,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3420,4,49);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,4,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,2700,4,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,4,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8550,4,24);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,4,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,32400,4,37);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6120,5,11);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,5,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,5,35);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,6,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,6,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,6,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13050,6,39);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,6,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,17100,6,12);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,6,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,6,35);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,6,36);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,32400,6,37);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8100,6,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,5,49500,6,13);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,6,25);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,6,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3330,7,31);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,7,47);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,7,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,9,24300,7,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,15120,7,41);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,21600,7,29);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,7,53);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8100,7,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,7,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,8,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6120,8,11);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6300,8,26);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,32400,8,37);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,8,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,8,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4950,8,32);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,34200,8,44);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4500,8,10);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,8,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,8,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,8,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,8,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,2700,8,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,8,6);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,8,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,8,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5220,8,18);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3330,8,31);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,8,36);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,8,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,17100,8,12);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,8,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,8,53);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8550,8,24);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,2700,9,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3330,9,31);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,9,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,9,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,32400,9,37);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4500,9,10);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,9,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8100,9,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,9,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,9,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,10,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8100,10,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8550,10,24);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5400,10,16);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,10,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,10,47);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,10,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,10,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,3,9450,10,14);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,10,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,11,36);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,11,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,11,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,11,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,11,25);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,12,38);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,12,47);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4230,12,48);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,12,21);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,12,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,12,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,12,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,12,53);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,5,81000,12,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,13,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,13,53);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,13,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,14,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,16200,14,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,14,21);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,14,25);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,14,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4500,15,10);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5400,15,16);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,13500,15,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,16,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,16,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,16,13);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,16,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,2700,17,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,17,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6120,17,11);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7380,17,42);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,17,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,17,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,18,28);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6300,18,26);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,18,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,19,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,19,47);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,19,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,15120,19,41);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,19,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,19,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,20,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,20,28);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,21600,20,29);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,20,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,20,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,20,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,17100,20,12);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,21,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,11700,21,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,21,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,21,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,21,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,21,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6120,21,11);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,21600,21,29);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,21,22);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,21,36);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5400,21,16);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8100,21,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4500,21,10);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3330,21,31);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,22,35);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,22,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,22,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,22,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,23,21);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,23,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8010,23,33);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,23,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,15120,23,41);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,23,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,24,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,24,52);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,24,53);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,24,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,24,21);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6300,24,26);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,24,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,24,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8100,25,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,25,6);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,25,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,25,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,17100,25,12);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5400,25,16);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,5,33750,25,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,25,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,25,35);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3420,25,49);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,34200,26,44);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,26,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4230,26,48);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,26,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,16200,27,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,27,35);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,27,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,27,22);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,27,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,27,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,27,52);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,28,6);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,3,21060,28,47);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,28,14);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,28,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,2700,28,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,29,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,29,52);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,29,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6300,29,26);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,16200,29,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,29,47);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,29,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,30,6);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,12,70200,30,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,30,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,30,13);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,30,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,30,38);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,30,35);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,30,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,30,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,30,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,15120,31,41);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,31,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,31,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4230,31,48);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,31,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,2700,31,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,31,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,3,9450,31,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,31,47);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,31,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,31,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,31,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,32400,31,37);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,31,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,32,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,32,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,32,38);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,32,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,32,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,32,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,32,47);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,33,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,33,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,33,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,16200,33,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,33,22);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8550,33,24);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,34,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,34,38);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,7,28350,34,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3420,34,49);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,34,25);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,34,21);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,16200,34,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,34,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,34,52);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,34,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8550,34,24);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,35,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,35,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,35,6);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,35,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13050,35,39);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,35,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,35,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5400,35,16);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,36,25);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,36,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,36,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,21600,36,29);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,37,28);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7380,37,42);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,37,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,37,22);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,10,60300,37,38);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,37,35);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,15120,37,41);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,37,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,38,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,38,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,38,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,38,22);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,38,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8550,38,24);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8100,38,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,38,28);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,38,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,38,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,15120,38,41);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,7,28350,39,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,16200,39,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,39,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,39,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4230,39,48);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13050,39,39);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8100,39,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,39,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,34200,39,44);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,39,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5220,39,18);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,39,35);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,40,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,21600,40,29);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,10,27000,40,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5400,40,16);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8010,40,33);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,40,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,40,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6300,40,26);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,40,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,40,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,40,14);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,40,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,40,38);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,40,6);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,41,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,32400,41,37);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,41,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5400,41,16);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,41,14);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6300,41,26);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5220,41,18);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,41,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,41,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,3,24300,41,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,41,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,21600,41,29);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,41,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,34200,41,44);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6120,41,11);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,41,21);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,42,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13050,42,39);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,42,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,42,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,42,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,42,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,42,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,21600,42,29);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,42,38);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,42,47);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,42,25);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,42,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,16200,42,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3330,42,31);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6300,42,26);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,42,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,42,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5400,42,16);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,16200,43,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,43,35);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,43,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3330,43,31);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4500,43,10);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,15120,43,41);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,43,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,43,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,43,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,21600,43,29);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7380,43,42);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,43,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,43,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,43,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,43,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,43,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13050,43,39);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,43,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,43,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,43,25);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5220,43,18);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,43,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6300,43,26);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,44,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,44,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,44,52);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,8,59040,44,42);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,44,28);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,34200,44,44);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,44,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,44,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,44,53);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,16200,44,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,45,38);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,45,22);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,45,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,45,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,45,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,45,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,45,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,45,21);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,45,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,45,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4950,45,32);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,45,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4500,46,10);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,5,40500,46,5);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13050,46,39);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,46,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,46,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,46,28);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13050,47,39);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,34200,47,44);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,2700,47,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,47,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,47,28);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,47,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8010,47,33);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,47,6);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,48,25);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3420,48,49);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,48,14);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,34200,48,44);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,8550,48,24);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,48,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,48,21);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,48,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,14760,48,42);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,48,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,48,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,48,13);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,48,6);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,48,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,48,22);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,48,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,49,25);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,2700,49,7);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,49,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,49,28);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,49,19);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,49,6);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,49,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3870,49,30);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,49,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,49,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5670,49,52);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,49,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,49,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,16200,49,2);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,50,45);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,13500,50,1);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,50,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,50,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4500,50,10);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,50,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,50,53);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,50,47);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4230,50,48);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7380,50,42);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,50,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,34200,50,44);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,50,13);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,32400,50,37);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5400,50,16);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9900,50,28);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,50,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,17100,50,12);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,50,8);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6120,50,11);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,50,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,50,22);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,26100,50,39);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7020,50,21);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,50,38);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,15120,50,41);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,50,14);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,50,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3420,50,49);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,50,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,10800,50,3);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7740,50,40);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,50,46);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,51,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,51,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,51,14);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,26100,51,39);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,51,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6480,52,23);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4230,52,48);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,12600,52,51);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,34200,52,44);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,8640,52,43);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5695,53,50);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,4050,53,15);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,53,17);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6030,53,27);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,53,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,15120,54,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7200,54,4);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,5850,54,9);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,54,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,3150,54,36);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,7560,55,22);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,15120,55,20);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,6750,55,6);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,1,9450,55,34);
INSERT INTO or_detail VALUES(or_detail_key_seq.nextval,2,27000,55,1);


select * from or_detail;



-- 주문하기 버튼 연동
insert all 
	into orders(or_key,or_count, or_price, or_date, del_key, id)
        values (or_key_seq.nextval, or_count, or_price, to_char(sysdate,'YYYY-MM-DD HH24:MI:SI'), del_key, id)
	into or_detail(or_detail_key, or_pr_count, or_pr_price, or_key, pr_key) 
        values (or_detail_key_seq.nextval, or_pr_count, or_pr_price, or_key, pr_key)
select * from dual;

select * from orders order by or_key desc;


insert into orders(or_key,or_count, or_price, or_date, del_key, id)
values (or_key_seq.nextval, or_count, or_price, to_char(sysdate,'YYYY-MM-DD HH24:MI:SI'), del_key, id));

select or_key from orders order by or_date desc;

insert or_detail(or_detail_key, or_pr_count, or_pr_price, or_key, pr_key) 
        values (or_detail_key_seq.nextval, or_pr_count, or_pr_price, or_key, pr_key);

insert all 
	into orders(or_key,or_count, or_price, or_date, del_key, id)
        values (or_key_seq.nextval, or_count, or_price, to_char(sysdate,'YYYY-MM-DD HH24:MI:SI'), del_key, id)
	into or_detail(or_detail_key, or_pr_count, or_pr_price, or_key, pr_key) 
        values (or_detail_key_seq.nextval, or_pr_count, or_pr_price, or_key, pr_key)
select * from dual;

select * from orders where id = 'user01';
select * from or_detail where or_key ='20230325_158854';


commit;
 

