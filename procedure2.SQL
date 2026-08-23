CREATE OR REPLACE PROCEDURE delete_employee(p_id IN NUMBER)
IS
BEGIN
    DELETE FROM EMP
    WHERE EID = p_id;

    DBMS_OUTPUT.PUT_LINE('deleted successfully');

END;
/