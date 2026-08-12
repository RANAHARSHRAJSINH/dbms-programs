/* . Write a program that prints value 1 to 100 numbers using FOR LOOP. */

set serveroutput on
set verfiy off
set feedback off

declare
	i number(10):=100;
begin
	for i in 1..100
	loop 
		dbms_output.put_line(i);
	end loop;
end;
/
