CREATE OR REPLACE PROCEDURE find_employee
(
    employee_id IN NUMBER,
    employee_name OUT VARCHAR2,
    employee_salary OUT NUMBER,
    employee_dept OUT NUMBER
)

IS

BEGIN

    SELECT ENAME, BASICSAL, DEPTNO
    INTO employee_name, employee_salary, employee_dept
    FROM emp
    WHERE EID = employee_id;

    DBMS_OUTPUT.PUT_LINE('Employee details retrieved successfully.');

END;
/