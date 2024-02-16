/* VIEW */
-- select 쿼리문을 저장한 객체로 가상테이블이라고 불린다.
-- 실직적인 데이털르 물리적으로 저장하고 있지 않음
-- 테이블을 사용하는 것과 동일하게 사용할 수 있다.

select * from TBL_MENU;

-- VIEW 생성
create view HANSIK as
select menu_code, menu_name, menu_price, category_code, orderable_status
from tbl_menu
where category_code = 4;

select * from HANSIK;

insert into tbl_menu values (null, '식혜맛국밥', 5500, 4, 'Y');
insert into HANSIK values(null, '식혜맛국밥', 5500, 4, 'Y');
insert into HANSIK values(99, '식혜맛국밥', 5500, 4, 'Y');

-- VIEW 통한 UPDATE
UPDATE HANSIK SET MENU_NAME = '식혜맛국밥',
				  MENU_PRICE = 5500
                  WHERE MENU_CODE = 24;

-- VIEW 통한 DELETE
delete from HANSIK where menu_code = 99;
select * from HANSIK;
select * from tbl_menu;

-- view 삭제
drop view HANSIK;