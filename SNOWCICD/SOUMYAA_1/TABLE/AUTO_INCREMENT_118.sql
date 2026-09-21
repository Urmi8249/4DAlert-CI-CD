create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_118 (
	EMP_ID NUMBER(10,0) autoincrement start 100 increment 5 noorder,
	EMP_NAME VARCHAR(100),
	DEPARTMENT VARCHAR(50),
	SALARY NUMBER(10,2),
	unique (EMP_ID)
);