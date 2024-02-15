/* SELECT */
-- 선택한 NAME의 열 조회
  SELECT
		MENU_NAME
   FROM TBL_MENU;

-- 선택한 CODE, NAME, PRICE 의 열 조회 
SELECT
		 MENU_CODE
        ,MENU_NAME
        ,MENU_PRICE
	FROM TBL_MENU; 

-- * 은 와이드카드(모든 열을 선택할 때 쓰임)
SELECT
		*
	FROM TBL_MENU;
    
-- 계산식도 활용이 가능함
SELECT 6 + 3;
SELECT 6 * 3;
SELECT 6 % 3;

SELECT NOW();
SELECT CONCAT('홍', ' ', '동') AS NAME;
SELECT CONCAT('홍', '길', '동') AS 'FULL NAME'; 
 
 -- FROM TBL_MENU; SQL문의 일부분
