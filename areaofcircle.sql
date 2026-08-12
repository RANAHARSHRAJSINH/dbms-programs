-- wirte a script to find outare of circle
set serveroutput on
SET VERIFY OFF
SET FEEDBACK OFF
DECLARE
               PI CONSTANT NUMBER(3,2) :=3.14;
	AREA NUMBER(5,2);
	RADIUS NUMBER(5);
BEGIN
	RADIUS := &RADIUS;
	AREA := PI * POWER(RADIUS,2);
	DBMS_OUTPUT.PUT_LINE('AREA OF CIRCLE'||'='||AREA);
END;
/
SET SERVEROUTPUT OFF