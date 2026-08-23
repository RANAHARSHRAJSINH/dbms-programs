SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE

    EMP_id EMP.EID%TYPE;
    EMP_name EMP.ENAME%TYPE;
    EMP_salary EMP.BASICSAL%TYPE;
    EMP_department EMP.DEPTNO%TYPE;

BEGIN

    emp_id := &EID;

    find_employee(EMP_id, EMP_name, EMP_salary, EMP_department);

    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || EMP_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary : ' || EMP_salary);
    DBMS_OUTPUT.PUT_LINE('Department Number : ' || EMP_department);

END;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON