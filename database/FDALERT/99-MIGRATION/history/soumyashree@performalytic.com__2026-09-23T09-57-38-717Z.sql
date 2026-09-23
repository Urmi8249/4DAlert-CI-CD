create or replace TABLE SOUMYA.EMPLOYEE_TEST (
	ID NUMBER(38,0),
	EMP_NAME VARCHAR(100),
	EMAIL VARCHAR(150),
	AGE NUMBER(3,0),
	SALARY NUMBER(10,2),
	DEPARTMENT VARCHAR(50),
	IS_ACTIVE BOOLEAN,
	JOIN_DATE DATE,
	LAST_UPDATED TIMESTAMP_NTZ(9)
);
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
DROP TABLE SOUMYA.ORDERS;