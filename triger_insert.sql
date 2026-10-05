/* Write a trigger to insert the values into the NEWEMP table when the
records are inserted into the EMP table. */


CREATE OR REPLACE TRIGGER TR_insert
BEFORE INSERT ON EMP
FOR EACH ROW

begin
	INSERT INTO NEWEMP VALUES(:NEW.EID,:NEW.ENAME,:NEW.DEPTNO,:NEW.DEPNAME,:NEW.GENDER,:NEW.AGE,:NEW.BASICSAL);
end;
/