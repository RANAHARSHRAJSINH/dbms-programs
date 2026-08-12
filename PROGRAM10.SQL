--Write a PL/SQL block to calculate the square and cube of the given number.

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

declare
	NO NUMBER(7);
	SQUARE NUMBER(5);
	CUBE NUMBER(5);
BEGIN
	NO:=&N;
	SQUARE:=NO*NO;
	CUBE:=NO*NO*NO;
	
	dbms_output.put_line('SQUARE IS = ' || SQUARE);
	dbms_output.put_line('CUBE IS = ' || CUBE);

END;
/
SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON