/* CALL THE FUNCTION FOR 4 PROGRAM */
/* Write a function that returns the age category of an employee.
Categories:
● Age < 18 → Minor
● 18–60 → Adult
● 60 → Senior */

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

declare
	F_EID EMP.AGE%type;
	F_CATEGORY varchar(50);
begin
	F_EID:=&eid;
	F_CATEGORY:=FUNC1(F_EID);
	dbms_output.put_line('*******************************************************');
	dbms_output.put_line('EMPLOYEE ID : '|| F_EID);
	DBMS_OUTPUT.PUT_LINE('EMPLOYEE AGE CATEGORY : ' ||F_CATEGORY);
	dbms_output.put_line('*******************************************************');
end;
/

SET SERVEROUTPUT Off
SET FEEDBACK On
SET VERIFY On