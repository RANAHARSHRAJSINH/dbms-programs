-- calling pl\sql file

set serveroutput on
set feedback off
set verify off

prompt 1. for finding employee gros salary
prompt 2. for finding employee category
accept CH prompt "enter your choice : "
declare 
	E_EID number(3);
	GSAL number(10,2);
	CATEGORY varchar2(50);
	C number(3);
begin
	E_EID:=&E_EID;
	C:=&CH;
	if C=1 then
		PK_1.PRO_1(E_EID,GSAL);
		dbms_output.put_line('SALLARY: '|| E_EID || ' : ' ||GSAL);
	else
		CATEGORY:=PK_1.FUN_1(E_EID);
		dbms_output.put_line('CATEGORY: '|| E_EID|| ' : ' ||CATEGORY);
	end if;
end;
/

set serveroutput off
set feedback on
set verify on
