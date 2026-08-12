/* Write a PL/SQL block which displays gross salary of employees as per
user input EID. (Consider EMP table with EID, EName, Deptno,
Deptname Gender, Age, BasicSal) with appropriate data types.)
Gross_Salary: BASICSAL + (DA + HRA + Medical) – PF. Rules: HRA =
15% of basic, DA = 50% of basic, Medical = Rs. 500, PF = 10% of basic. */

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
	EMPLOYEE EMP%ROWTYPE;
	EMPID NUMBER(3):=&EMPID;
	
	BSAL EMP.BASICSAL%TYPE;
	FIN NUMBER(10,2); 
	HRA NUMBER(7,2);
	DA NUMBER(7,2);
	MEDICAL NUMBER(3):=500;
	PF NUMBER(7,2);   
BEGIN
	SELECT * INTO EMPLOYEE FROM EMP WHERE EID=EMPID;
	BSAL:=EMPLOYEE.BASICSAL;

	HRA := (BSAL*15)/100;
	DA := (BSAL*15)/100;
	PF :=(BSAL*15)/100;
	FIN := (BSAL+15000)-1000;
	
	FIN :=(BSAL+DA+HRA+MEDICAL)-PF;


	DBMS_OUTPUT.PUT_LINE('FINAL HRA IS: -'||HRA);	
	DBMS_OUTPUT.PUT_LINE('FINAL DA IS: -'||DA);
	DBMS_OUTPUT.PUT_LINE('FINAL MEDICAL IS: -'||MEDICAL);
	DBMS_OUTPUT.PUT_LINE('FINAL PF IS: -'||PF);
	DBMS_OUTPUT.PUT_LINE('  ');
	DBMS_OUTPUT.PUT_LINE('FINAL SALLARY IS: -'||FIN);
END;
/
SET SERVEROUTPUT OFF

