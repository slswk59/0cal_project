SELECT * FROM guma; 
--구매자 아이디(ID), 상품 개수(OR_NUM), 상품 고유 번호(PR_KEY);

SELECT * FROM user_info; 
--구매자 아이디(ID), 출생 연도(DATE_BIRTHDAY), 성별(GENDER);

SELECT * FROM thum_url;
--URL(PR_THUMBNAILS), 상품 고유번호(PR_KEY_ORIGIN)

SELECT * FROM tkdtp;
-- PR_KEY(상품 코드), PR_NAME(상품 이름), PR_PRICE(원래 가격), PR_DCPRICE(할인가), PR_DC(할인율)

-- 10대 여성 아이디
SELECT ID
FROM user_info
WHERE GENDER = 'F' AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM DATE_BIRTHDAY) BETWEEN 10 AND 19;

-- 20대 여성 아이디
SELECT ID
FROM user_info
WHERE GENDER = 'F' AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM DATE_BIRTHDAY) BETWEEN 20 AND 29;

-- 30대 이상 여성 아이디
SELECT ID
FROM user_info
WHERE GENDER = 'F' AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM DATE_BIRTHDAY) >= 30;

-- 10대 남성 아이디
SELECT ID
FROM user_info
WHERE GENDER = 'M' AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM DATE_BIRTHDAY) BETWEEN 10 AND 19;

-- 20대 남성 아이디
SELECT ID
FROM user_info
WHERE GENDER = 'M' AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM DATE_BIRTHDAY) BETWEEN 20 AND 29;

-- 30대 이상 남성 아이디
SELECT ID
FROM user_info
WHERE GENDER = 'M' AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM DATE_BIRTHDAY) >= 30;

-- 10대 여성이 많이 구매한 상품 코드
SELECT t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
FROM (
  SELECT *
  FROM guma
  WHERE PR_KEY IN (
    SELECT PR_KEY_ORIGIN
    FROM thum_url
  )
) g
JOIN user_info u ON g.ID = u.ID
JOIN thum_url t ON g.PR_KEY = t.PR_KEY_ORIGIN
JOIN tkdtp p ON g.PR_KEY = p.PR_KEY
WHERE u.GENDER = 'F'
  AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM u.DATE_BIRTHDAY) BETWEEN 10 AND 19
  AND ROWNUM <= 8
GROUP BY t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
ORDER BY COUNT(*) DESC;

-- 20대 여성이 많이 구매한 상품 코드
SELECT t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
FROM (
SELECT *
FROM guma
WHERE PR_KEY IN (
SELECT PR_KEY_ORIGIN
FROM thum_url
)
) g, user_info u, thum_url t, tkdtp p
WHERE g.ID = u.ID
AND g.PR_KEY = t.PR_KEY_ORIGIN
AND g.PR_KEY = p.PR_KEY
AND u.GENDER = 'F'
AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM u.DATE_BIRTHDAY) BETWEEN 20 AND 29
AND ROWNUM <= 8
GROUP BY t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
ORDER BY COUNT(*) DESC;

-- 30대 이상 여성이 많이 구매한 상품 코드
SELECT t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
FROM (
SELECT *
FROM guma
WHERE PR_KEY IN (
SELECT PR_KEY_ORIGIN
FROM thum_url
)
) g, user_info u, thum_url t, tkdtp p
WHERE g.ID = u.ID
AND g.PR_KEY = t.PR_KEY_ORIGIN
AND g.PR_KEY = p.PR_KEY
AND u.GENDER = 'F'
AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM u.DATE_BIRTHDAY) >= 30
AND ROWNUM <= 8
GROUP BY t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
ORDER BY COUNT(*) DESC;

-- 10대 남성이 많이 구매한 상품 코드
SELECT t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
FROM (
SELECT *
FROM guma
WHERE PR_KEY IN (
SELECT PR_KEY_ORIGIN
FROM thum_url
)
) g, user_info u, thum_url t, tkdtp p
WHERE g.ID = u.ID
AND g.PR_KEY = t.PR_KEY_ORIGIN
AND g.PR_KEY = p.PR_KEY
AND u.GENDER = 'M'
AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM u.DATE_BIRTHDAY) BETWEEN 10 AND 19
AND ROWNUM <= 8
GROUP BY t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
ORDER BY COUNT(*) DESC;

-- 20대 남성이 많이 구매한 상품 코드
SELECT t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
FROM (
  SELECT *
  FROM guma
  WHERE PR_KEY IN (
    SELECT PR_KEY_ORIGIN
    FROM thum_url
  )
) g
INNER JOIN user_info u ON g.ID = u.ID
INNER JOIN thum_url t ON g.PR_KEY = t.PR_KEY_ORIGIN
INNER JOIN tkdtp p ON g.PR_KEY = p.PR_KEY
WHERE u.GENDER = 'M'
  AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM u.DATE_BIRTHDAY) BETWEEN 20 AND 29
  AND ROWNUM <= 8
GROUP BY t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
ORDER BY COUNT(*) DESC;

-- 30대 이상 남성이 많이 구매한 상품 코드
SELECT t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
FROM (
  SELECT *
  FROM guma
  WHERE PR_KEY IN (
    SELECT PR_KEY_ORIGIN
    FROM thum_url
  )
) g
INNER JOIN user_info u ON g.ID = u.ID
INNER JOIN thum_url t ON g.PR_KEY = t.PR_KEY_ORIGIN
INNER JOIN tkdtp p ON g.PR_KEY = p.PR_KEY
WHERE u.GENDER = 'M'
  AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM u.DATE_BIRTHDAY) >= 30
  AND ROWNUM <= 8
GROUP BY t.PR_THUMBNAILS, g.PR_KEY, p.PR_NAME, p.PR_PRICE, p.PR_DCPRICE, p.PR_DC
ORDER BY COUNT(*) DESC;












