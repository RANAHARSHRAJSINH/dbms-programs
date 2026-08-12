--Write a PL/SQL block that calculates the simple interest based on given principal amount, rate of interest and number of years.

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
	SI NUMBER(7,2);
	P NUMBER(7,2);
	R NUMBER(7,2);
	T NUMBER(7,2);	
BEGIN
	P:=&P;
	R:=&R;
	T:=&T;
	SI:=(P*R*T)/100;
	DBMS_OUTPUT.PUT_LINE('ENTER THE PRINCIPAL AMOUNT:= ' || P);
	DBMS_OUTPUT.PUT_LINE('ENTER THE RATE OF INTEREST:= ' || R);
	DBMS_OUTPUT.PUT_LINE('ENTER NUMBER OF YEARS:= ' || T);
	DBMS_OUTPUT.PUT_LINE('SIMPLE INTEREST IS:= ' || SI);
	
END;
/
SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON

