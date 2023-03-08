
--회원정보
CREATE TABLE member
(   id           VARCHAR2(20) NOT NULL,
    user_name    VARCHAR2(20) NOT NULL,
    nick_name    VARCHAR2(45) NOT NULL,
    user_pass    VARCHAR2(20) NOT NULL,
    email        VARCHAR2(30) NOT NULL,
    post         VARCHAR2(20) NOT NULL,
    address      VARCHAR2(100) NOT NULL,
    phone        VARCHAR2(20) NOT NULL,
    date_of_birthday   date  NOT NULL,
    gender       VARCHAR2(1)  NOT NULL,
    user_type    CHAR(1)        NOT NULL,
    CONSTRAINT PK_member PRIMARY KEY (id)
                  );

CREATE SEQUENCE id_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO member
VALUES('hyjyibu', '황윤정', '레드캐럿', '1234', 'brownkaki99@gmail.com', '04808', '성동구 자동차시장1길 73', '010-3304-9122', '1987-08-19', 'F','m' );

INSERT INTO member
VALUES('bbini1109', '정은빈', '정은빈', '1234', 'bbini1109@gmail.com', '06611', '서울 서초구 서초대로77길 54 서초더블유타워 13층', '010-2345-6789', '2000-11-09', 'F','m' );

INSERT INTO member
VALUES('slswk59', '안준혁', '안준혁', '1234', 'slswk59@naver.com', '11670', '경기 의정부시 신흥로258번길 25 해태프라자 2층 이젠컴퓨터아트학원', '010-3456-7890', '2001-05-09', 'M','m' );

INSERT INTO member
VALUES('xmmzslla', '조현수', '조현수', '1234', 'xmmzslla@naver.com', '03190', '서울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터학원', '010-4567-8901', '2002-04-08', 'F','m' );

INSERT INTO member
VALUES('kimminseun', '김민승', '김민승', '1234', 'kimminseun@naver.com', '10414', '경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층 이젠컴퓨터학원', '010-5678-9012', '2003-05-06', 'M','m' );

INSERT INTO member
VALUES('ezencom', '이젠컴', '이젠컴', '1234', 'ezencom@gmail.com', '08754', '서울 관악구 신림로 340', '010-6789-0123', '2004-06-09', 'F','c' );

INSERT INTO member
VALUES('user01', '유저일', '유저일', '1234', 'user01@gmail.com', '13364', '경기 성남시 중원구 광명로 4', '010-7890-1234', '2005-07-08', 'M','c' );

INSERT INTO member
VALUES('user02', '유저이', '유저이', '1234', 'user02@gmail.com', '06611', '서울 서초구 서초대로77길 54 서초더블유타워 13층', '010-2345-6789', '2000-11-09', 'F','c' );

INSERT INTO member
VALUES('user03', '유저삼', '유저삼', '1234', 'user03@gmail.com', '08290', '서서울 구로구 공원로 83 4층', '010-9012-3456', '2007-09-10', 'F','c' );

INSERT INTO member
VALUES('user04', '유저사', '유저사', '1234', 'user04@gmail.com', '13618', '경기 성남시 분당구 돌마로 73 우방코아 7층', '010-0123-4567', '2008-01-23', 'M','c' );


DESC member; 

DROP TABLE member CASCADE CONSTRAINTS;
DROP table member;
DROP SEQUENCE id_seq;

SELECT*FROM member;

DELETE FROM member
WHERE ID='';










--고객센터
CREATE TABLE service
(   cs_key       number NOT NULL ,
    cs_title     VARCHAR2(20) NOT NULL,
    cs_comment   VARCHAR2(200)  NULL,
    cs_reg_date  date NOT NULL,
    id           VARCHAR2(20) NOT NULL,
    PRIMARY KEY (cs_key), 
    FOREIGN KEY (id) REFERENCES member (id)
                     );

CREATE SEQUENCE cs_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;  

INSERT INTO service
VALUES( );

DESC service; 

DROP table service;
DROP SEQUENCE cs_key_seq;

SELECT*FROM service;


--카테고리 
CREATE TABLE category
(   cate_key      number       NOT NULL,
    cate_name     VARCHAR2(30) NOT NULL,
    PRIMARY KEY (cate_key)
                     );

CREATE SEQUENCE cate_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO category
VALUES(1, '과자,스낵,쿠키' );

INSERT INTO category
VALUES(2, '초콜릿,젤리,캔디' );

INSERT INTO category
VALUES(3, '떡,한과' );

INSERT INTO category
VALUES(4, '아이스크림' );

INSERT INTO category
VALUES(5, '식빵,빵류' );

INSERT INTO category
VALUES(6, '케이크,파이,디저트' );

DESC category; 

DROP TABLE category CASCADE CONSTRAINTS;
DROP table category;
DROP SEQUENCE cate_key_seq;

SELECT*FROM category;

--상품 
CREATE TABLE product
(   pr_key           number        NOT NULL,
    pr_name          VARCHAR2(20)  NOT NULL,
    pr_thumbnails    VARCHAR2(100) NOT NULL,
    pr_price         number        NOT NULL,
    pr_dcprice       number        NOT NULL,
    pr_dc            number        NOT NULL,
    pr_detail        VARCHAR2(100) NOT NULL,
    pr_registration  date          NOT NULL,
    pr_thema         VARCHAR2(20)  NOT NULL,
    cate_key         number        NOT NULL,
    PRIMARY KEY (pr_key), 
    FOREIGN KEY (cate_key) REFERENCES category (cate_key)
                     );

CREATE SEQUENCE pr_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO product
VALUES(pr_key_seq.nextval, '베리 까눌레', 'add', 15000, 13500, 10, 'dd', '2022-11-11','fun',2);

DESC product; 

DROP table product CASCADE CONSTRAINTS;
DROP table product;
DROP SEQUENCE pr_key_seq;
SELECT*FROM product;

--장바구니
CREATE TABLE cart (
  cart_key NUMBER NOT NULL,
  cart_num NUMBER NOT NULL,
  cart_sum NUMBER NOT NULL,
  pr_key   NUMBER NOT NULL,
  id       VARCHAR2(20) NOT NULL,
  PRIMARY KEY (cart_key, id),
  FOREIGN KEY (id) REFERENCES member (id),
  FOREIGN KEY (pr_key) REFERENCES product (pr_key)
);
                     
CREATE SEQUENCE cart_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO cart
VALUES(cart_key_seq,  );

DESC cart; 

DROP table cart CASCADE CONSTRAINTS;
DROP table cart;
DROP SEQUENCE cart_key;
SELECT*FROM cart;


--찜
CREATE TABLE wish
(   wish_key   number NOT NULL,
    pr_key     number NOT NULL,  
    id         VARCHAR2(20) NOT NULL,
    PRIMARY KEY (wish_key), 
    FOREIGN KEY (pr_key) REFERENCES product (pr_key),
    FOREIGN KEY (id) REFERENCES member (id)
                     );
                     
CREATE SEQUENCE wish_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO wish
VALUES(wish_key_seq.nextval, 40,'hyjyibu');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 50,'hyjyibu');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 14,'hyjyibu');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 1,'hyjyibu');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 12,'hyjyibu');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 23,'hyjyibu');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 48,'hyjyibu');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 18,'hyjyibu');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 24,'hyjyibu');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 9,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 41,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 51,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 3,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 5,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 47,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 44,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 2,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 38,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 49,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 29,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 10,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 15,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 12,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 17,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 4,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 18,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 35,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 37,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 45,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 50,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 39,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 34,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 32,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 52,'bbini1109');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 19,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 41,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 36,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 48,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 48,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 48,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 48,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 48,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 48,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 48,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 48,'user01');

INSERT INTO wish
VALUES(wish_key_seq.nextval, 48,'user01');


DESC wish; 

DROP table wish;
DROP SEQUENCE wish_key_seq;
SELECT*FROM wish;

--배송지
CREATE TABLE shipping_address
(   ship_key         number       NOT NULL,
    ship_people      VARCHAR2(20) NOT NULL,
    ship_phone       VARCHAR2(20) NOT NULL,
    ship_post        VARCHAR2(20) NOT NULL,
    ship_address     VARCHAR2(100) NOT NULL,
    id               VARCHAR2(20) NOT NULL,
    PRIMARY KEY (ship_key), 
    FOREIGN KEY (id) REFERENCES member (id)
                     );
                     
CREATE SEQUENCE ship_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;


INSERT INTO shipping_address
VALUES(ship_key_seq.nextval,'정은빈','010-2345-6789','06611','서울 서초구 서초대로77길 54 서초더블유타워 13층', 'hyjyibu' );


INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '안준혁','010-3456-7890','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층 이젠컴퓨터아트학원', 'hyjyibu' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '조현수','010-4567-8901','03190','서울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터학원', 'hyjyibu' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '김민승','010-5678-9012','10414','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층 이젠컴퓨터학원', 'bbini1109' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '이젠컴','010-6789-0123','08754','서울 관악구 신림로 340', 'bbini1109' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '유저일','010-7890-1234','13364','경기 성남시 중원구 광명로 4', 'user01' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '유저이','010-8901-2345','07222','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데미컴퓨터학원', 'user01' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '유저삼','010-9012-3456','08290','서울 구로구 공원로 83 4층', 'user02' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '유저사','010-0123-4567','13618','경기 성남시 분당구 돌마로 73 우방코아 7층', 'user03' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '황윤정','010-3304-9122','04808','성동구 자동차시장1길 73', 'hyjyibu' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '안준혁','010-3456-7890','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층 이젠컴퓨터아트학원', 'slswk59' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '이젠컴','010-6789-0123','08754','서울 관악구 신림로 340', 'slswk59' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '유저일','010-7890-1234','13364','경기 성남시 중원구 광명로 4', 'xmmzslla' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '유저이','010-8901-2345','07222','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데미컴퓨터학원', 'xmmzslla' );

INSERT INTO shipping_address
VALUES(ship_key_seq.nextval, '유저삼','010-9012-3456','08290','서울 구로구 공원로 83 4층', 'xmmzslla' );

DESC shipping_address; 

DROP TABLE shipping_address CASCADE CONSTRAINTS;
DROP table shipping_address;
DROP SEQUENCE ship_key_seq;
SELECT*FROM shipping_address;

--주문내역 
CREATE TABLE order1
(   or_key        number       NOT NULL,
    or_num        VARCHAR2(20) NOT NULL,
    or_sum        VARCHAR2(20) NOT NULL,
    or_date       date         NOT NULL,
    or_detail     VARCHAR2(50) NOT NULL,    
    ship_status   VARCHAR2(20) NULL,
    pr_key        number NOT NULL, 
    ship_key      number       NOT NULL,
    id            VARCHAR2(20) NOT NULL,
    PRIMARY KEY (or_key,or_date), 
    FOREIGN KEY (ship_key) REFERENCES shipping_address (ship_key),
    FOREIGN KEY (id) REFERENCES member (id)
                     );
                     
CREATE SEQUENCE or_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE or_detail_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO order1
VALUES( );

DESC order1; 

DROP table order1;
DROP SEQUENCE or_key_seq;
DROP SEQUENCE or_detail_seq;
SELECT*FROM order1;


