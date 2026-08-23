SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
    v_emp_id EMP.EID%TYPE;

BEGIN
    v_emp_id := &EID;

    delete_employee(v_emp_id);

END;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON
