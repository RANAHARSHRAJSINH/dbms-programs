/* Write a trigger to restrict user form using the table on Sunday. */

set serveroutput off
create or replace trigger tr_holiday
before insert or update or delete on NEWEMP
FOR EACH ROW
BEGIN
IF TRIM(TO_CHAR(SYSDATE, 'Day')) = 'Sunday' THEN
	RAISE_APPLICATION_ERROR (-20420,'YOU CAN NOT ACCESS TABLE ON SUNDAY');
END IF;
END;
/