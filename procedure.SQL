CREATE OR REPLACE PROCEDURE salary_update
(
    DEPT_number IN NUMBER,
    PERCENTAGE IN NUMBER
)
IS
BEGIN

    UPDATE emp
    SET BASICSAL = BASICSAL + ((BASICSAL * PERCENTAGE) / 100)
    WHERE DEPTNO = DEPT_number;

    DBMS_OUTPUT.PUT_LINE('Salary records updated successfully.');

END;
/