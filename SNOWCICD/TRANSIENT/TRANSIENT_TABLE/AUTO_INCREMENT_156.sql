create or replace TRANSIENT TABLE TRANSIENT.AUTO_INCREMENT_156 (
	EMP_ID NUMBER(10,0) autoincrement start 100 increment 5 noorder,
	EMP_NAME VARCHAR(100),
	DEPARTMENT VARCHAR(50),
	SALARY NUMBER(10,2),
	check (EMP_ID >= 100),
	constraint UQ_EMP_ID_NAME unique (EMP_ID, EMP_NAME)
);