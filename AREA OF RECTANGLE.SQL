SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

declare
	L number(5);
	W number(5);
	RAREA number(5,2);
begin
	
	L:=&L;
	W:=&W;
	RAREA:=L*W;
	dbms_output.put_line('	');
	dbms_output.put_line('Area of a rectangle is '||RAREA);
	dbms_output.put_line('	');
end;
/

SET SERVEROUTPUT ON
SET VERIFY ON
SET FEEDBACK ON
