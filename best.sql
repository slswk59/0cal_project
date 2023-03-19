SELECT*FROM p_list; 
-- 구매 수량과 구매상품 고유 코드 목록 
-- P_CODE(상품코드), QUANTITY(구매수량)

SELECT P_CODE, SUM(QUANTITY) AS 총구매개수
FROM p_list
GROUP BY P_CODE;
-- 구매한 상품당 총구매개수를 정리

SELECT *
FROM (
  SELECT P_CODE, SUM(QUANTITY) AS 총구매개수
  FROM P_LIST
  GROUP BY P_CODE
  ORDER BY 총구매개수 DESC
)
WHERE ROWNUM <= 16;
--가장 많이 판매된 상위 16개의 상품을 출력