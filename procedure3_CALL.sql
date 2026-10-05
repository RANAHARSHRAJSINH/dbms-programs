/* Write a procedure that accept employee ID and remove records from
employee table. Also create a calling program to call procedure. */

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF 

DECLARE 
	V_EID EMP.EID%TYPE;
BEGIN
	V_EID:=&V_EID;

	PRO3(V_EID);
END;
/
SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON 

SELECT * FROM EMP;
	
	