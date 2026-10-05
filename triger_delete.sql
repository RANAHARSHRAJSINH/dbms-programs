/* Write a trigger to insert the existing values of the EMP table into
NEWEMP table when the record is deleted from EMP table. */


create or replace trigger tr_delete
before delete on emp
for each row

begin
	INSERT INTO NEWEMP VALUES(:OLD.EID,:OLD.ENAME,:OLD.DEPTNO,:OLD.DEPNAME,:OLD.GENDER,:OLD.AGE,:OLD.BASICSAL);
end;
/