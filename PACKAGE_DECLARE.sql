/* Write a PACKAGE which includes Package Declaration, Package
Body and call the individual object from the Package. */

CREATE OR REPLACE PACKAGE PK_1 AS
	PROCEDURE PRO_1(E_EID IN NUMBER,GSAL OUT NUMBER);
	FUNCTION FUN_1(E_EID IN NUMBER)
	RETURN VARCHAR2;
END PK_1;
/