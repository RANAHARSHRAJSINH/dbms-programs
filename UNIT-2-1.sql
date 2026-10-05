/*
Write a simple procedure that increases by the salary of employees for
the given department no. by percentage inputted by the user using IN
parameter. Also handle the exception if inputted department number not
found.  */
 
create or replace procedure pro_1(DEPTNO in number,percentage in number)
AS

begin
	update emp set  BASICSAL=BASICSAL+((BASICSAL* percentage)/100) where DEPTNO=DEPTNO;
	dbms_output.put_line('record update sucessfully:');
end;
/