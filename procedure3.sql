/* Write a procedure that accept employee ID and remove records from
employee table. Also create a calling program to call procedure. */

CREATE OR REPLACE PROCEDURE PRO3(P_EID IN NUMBER)
IS
	
BEGIN
	DELETE FROM EMP WHERE EID=P_EID;
	DBMS_OUTPUT.PUT_LINE(' SUCCESSFULLY');
END;
/