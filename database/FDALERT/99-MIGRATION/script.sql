ALTER TABLE SOUMYA.CUSTOMER_TEST ADD EMAIL VARCHAR(100);
-----------------------------------------------------------------------------
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
create or replace TABLE SOUMYA.PRODUCT_NEW (
	PRODUCT_ID NUMBER(38,0),
	PRODUCT_NAME VARCHAR(100),
	PRICE NUMBER(10,2)
);
-----------------------------------------------------------------------------
create or replace TABLE SOUMYA.CUSTOMER_TEST_NEW (
	CUSTOMER_ID NUMBER(38,0) NOT NULL,
	CUSTOMER_NAME VARCHAR(100),
	EMAIL VARCHAR(150),
	PHONE_NUMBER VARCHAR(20),
	primary key (CUSTOMER_ID)
);
-----------------------------------------------------------------------------
create or replace TABLE SOUMYA.ORDERS_NEW_2 (
	ORDER_ID NUMBER(38,0),
	CUSTOMER_ID NUMBER(38,0),
	PRODUCT_ID NUMBER(38,0),
	ORDER_DATE DATE
);