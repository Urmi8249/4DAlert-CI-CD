create or replace TABLE SOUMYAA_1.EMPLOYEE_CHECK_IN_175 (
	EMP_ID NUMBER(10,0) NOT NULL,
	EMP_NAME VARCHAR(100),
	DEPARTMENT VARCHAR(50),
	STATUS VARCHAR(20),
	CITY VARCHAR(50),
	constraint CHK_DEPARTMENT check (DEPARTMENT IN ('IT', 'Developer', 'SALES', 'Analyst')),
	constraint CHK_STATUS check (STATUS IN ('ACTIVE', 'INACTIVE')),
	constraint CHK_CITY check (CITY IN ('Soro', 'Cuttack', 'Pune', 'Bangalore')),
	constraint PK_EMPLOYEE_CHECK_IN primary key (EMP_ID)
);