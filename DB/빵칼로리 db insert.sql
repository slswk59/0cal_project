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
    user_name    VARCHAR2(20) NOT NULL,
    nick_name    VARCHAR2(50) NOT NULL,
    user_pass    VARCHAR2(100) NOT NULL,
    email        VARCHAR2(50) NOT NULL UNIQUE,    
    post         VARCHAR2(20) NOT NULL,
    address      VARCHAR2(100) NOT NULL,
    phone        VARCHAR2(20) NOT NULL UNIQUE,
    date_of_birthday  VARCHAR2(20)   NOT NULL,
    gender       VARCHAR2(1) NOT NULL CHECK(gender in('M','F')),
    user_type    VARCHAR2(1) NOT NULL CHECK(user_type in('M', 'C'))
                  );

-- member table data 삽입
INSERT INTO member VALUES('hyjyibu','황윤정','레드캐럿','1234','brownkaki99@gmail.com','04808','성동구 자동차시장1길 73','010-3304-9122','1987-08-19','F','M');
INSERT INTO member VALUES('bbini1109','정은빈','정은빈','1234','bbini1109@gmail.com','06611','서울 서초구 서초대로77길 54 서초더블유타워 13층','010-2345-6789','2000-11-09','F','M');
INSERT INTO member VALUES('slswk59','안준혁','안준혁','1234','slswk59@naver.com','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층 이젠컴퓨터아트학원','010-3456-7890','2001-05-09','M','M');
INSERT INTO member VALUES('xmmzslla','조현수','조현수','1234','xmmzslla@naver.com','03190','서울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터학원','010-4567-8901','2002-04-08','F','M');
INSERT INTO member VALUES('kimminseun','김민승','김민승','1234','kimminseun@naver.com','10414','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층 이젠컴퓨터학원','010-5678-9012','2003-05-06','M','M');
INSERT INTO member VALUES('ezencom','이젠컴','이젠컴','1234','ezencom@gmail.com','08754','서울 관악구 신림로 340','010-6789-0123','2004-06-09','F','C');
INSERT INTO member VALUES('user01','유저일','유저일','1234','user01@gmail.com','13364','경기 성남시 중원구 광명로 4','010-7890-1234','2005-07-08','M','C');
INSERT INTO member VALUES('user02','유저이','유저이','1234','user02@gmail.com','07222','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데미컴퓨터학원','010-8901-2345','2006-08-09','F','C');
INSERT INTO member VALUES('user03','유저삼','유저삼','1234','user03@gmail.com','08290','서울 구로구 공원로 83 4층','010-9012-3456','2007-09-10','F','C');
INSERT INTO member VALUES('user04','유저사','유저사','1234','user04@gmail.com','13618','경기 성남시 분당구 돌마로 73 우방코아 7층','010-0123-4567','2008-01-23','M','C');

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
        to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),null, 'hyjyibu');


DESC board; 

SELECT*FROM board;

--상품 
CREATE TABLE product
(   pr_key           number      PRIMARY KEY,
    pr_name          VARCHAR2(20) NOT NULL UNIQUE,
    pr_thumbnails    VARCHAR2(150) NOT NULL,
    pr_price         number        NOT NULL,
    pr_dcprice       number        NOT NULL,
    pr_dcper         number(15,1)   NOT NULL,
    pr_detailimage  VARCHAR2(150) NOT NULL,
    pr_reg_date      VARCHAR2(20)   NOT NULL,
    pr_theme         VARCHAR2(20) NULL check(pr_theme in('올가닉제품', '드라마정주행')),
    cate_key         number       NOT NULL, 
    FOREIGN KEY (cate_key) REFERENCES category (cate_key)
                     );

CREATE SEQUENCE pr_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO product
VALUES(pr_key_seq.nextval, '베리 까눌레', 'url', 15000, 13500, 0.1, 'url', to_char(sysdate, 'yyyy-mm-dd HH24:mi:ss'),'올가닉제품',2);

DESC product; 

SELECT*FROM product;



--배송지
CREATE TABLE delivery_address
(   del_key         number PRIMARY KEY,
    receiver_name   VARCHAR2(20) NOT NULL,
    del_phone       VARCHAR2(20) NOT NULL,
    del_post        VARCHAR2(20) NOT NULL,
    del_address     VARCHAR2(100) NOT NULL,
    del_reg_date    VARCHAR2(20) NOT NULL,
    id              VARCHAR2(20) NOT NULL,
    FOREIGN KEY (id) REFERENCES member (id)
                     );
                     
CREATE SEQUENCE del_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- delivery_address 데이터 삽입

INSERT INTO delivery_address VALUES(del_key_seq.nextval,'정은빈','010-2345-6789','06611','서울 서초구 서초대로77길 54 서초더블유타워 13층',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'hyjyibu');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'안준혁','010-3456-7890','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층 이젠컴퓨터아트학원',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'hyjyibu');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'조현수','010-4567-8901','03190','서울 종로구 종로 78 미려빌딩 6층 이젠아카데미컴퓨터학원',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'hyjyibu');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'김민승','010-5678-9012','10414','경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층 이젠컴퓨터학원',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'bbini1109');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'이젠컴','010-6789-0123','08754','서울 관악구 신림로 340',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'bbini1109');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저일','010-7890-1234','13364','경기 성남시 중원구 광명로 4',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user01');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이','010-8901-2345','07222','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데미컴퓨터학원',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user01');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼','010-9012-3456','08290','서울 구로구 공원로 83 4층',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user02');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저사','010-0123-4567','13618','경기 성남시 분당구 돌마로 73 우방코아 7층',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'user03');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'황윤정','010-3304-9122','04808','성동구 자동차시장1길 73',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'hyjyibu');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'안준혁','010-3456-7890','11670','경기 의정부시 신흥로258번길 25 해태프라자 2층 이젠컴퓨터아트학원',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'slswk59');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'이젠컴','010-6789-0123','08754','서울 관악구 신림로 340',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'slswk59');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저일','010-7890-1234','13364','경기 성남시 중원구 광명로 4',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'xmmzslla');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저이','010-8901-2345','07222','서울 영등포구 당산로49길 4 태인빌딩 1F 이젠아카데미컴퓨터학원',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'xmmzslla');
INSERT INTO delivery_address VALUES(del_key_seq.nextval,'유저삼','010-9012-3456','08290','서울 구로구 공원로 83 4층',to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'),'xmmzslla');

DESC delivery_address; 

SELECT*FROM delivery_address;


--장바구니
CREATE TABLE cart (
  cart_key NUMBER PRIMARY KEY,
  cart_count NUMBER NOT NULL,
  cart_price NUMBER NOT NULL,
  cart_reg_date VARCHAR2(20) NOT NULL,
  cart_del_date VARCHAR2(20) NULL,
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

INSERT INTO cart VALUES(cart_key_seq.nextval, 1, 13500, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'), null, 1, 'hyjyibu');

DESC cart; 

SELECT*FROM cart;

--찜
CREATE TABLE wish
(   wish_key   number PRIMARY KEY,
    wish_reg_date VARCHAR2(20) NOT NULL,
    wish_del_date VARCHAR2(20) NULL,
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

INSERT INTO wish VALUES(wish_key_seq.nextval, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'), null,1,'hyjyibu');

DESC wish; 

SELECT*FROM wish;

--주문내역 
CREATE TABLE orders
(   or_key        number       PRIMARY KEY,
    or_count      number       NOT NUll,
    or_price      number       NOT NUll,
    or_date       VARCHAR2(20)    NOT NULL,  
    del_status   VARCHAR2(20) NULL,
    DEL_KEY      number       NOT NULL,
    id           VARCHAR2(20) NOT NULL,
    CART_KEY     number NOT NULL,
    FOREIGN KEY (DEL_KEY) REFERENCES DELIVERY_ADDRESS(DEL_KEY),
    FOREIGN KEY (id) REFERENCES member (id),
    FOREIGN KEY (CART_KEY) REFERENCES CART(CART_KEY)
                     );
                     
CREATE SEQUENCE or_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO orders VALUES(or_key_seq.nextval, 2, 27000, to_char(sysdate,'YYYY-MM-DD HH24:mi:SS'), null, 1, 'hyjyibu',1 );

DESC orders; 

SELECT*FROM orders;

-- 주문상세내역
CREATE TABLE or_detail
(   or_detail_key        number    PRIMARY KEY,
    or_pr_count        VARCHAR2(20) NOT NULL,
    or_pr_price        VARCHAR2(20) NOT NULL,
    or_key        number NOT NULL,
    pr_key        number NOT NULL, 
    FOREIGN KEY (or_key) REFERENCES orders(or_key),
    FOREIGN KEY (pr_key) REFERENCES product(pr_key)
                     );

CREATE SEQUENCE or_detail_key_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

INSERT INTO or_detail VALUES(or_detail_key_seq.nextval, 2, 27000, 1,1);

select * from or_detail;

commit;
