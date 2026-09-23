create or replace TABLE DUMMY4.EMPLOYEE_DETAILS (
	EMPLOYEE_ID NUMBER(38,0) COMMENT 'Unique ID of the employee',
	EMPLOYEE_NAME VARCHAR(100) COMMENT 'Full name of the employee',
	DEPARTMENT VARCHAR(50) COMMENT 'Department where the employee works',
	EMPLOYEE_SALARY NUMBER(10,2) COMMENT 'Monthly salary of the employee',
	JOIN_DATE DATE COMMENT 'Date when the employee joined',
	STATUS VARCHAR(20) COMMENT 'Current employment status'
)COMMENT='Employee details table containing employee information and employment status'
;