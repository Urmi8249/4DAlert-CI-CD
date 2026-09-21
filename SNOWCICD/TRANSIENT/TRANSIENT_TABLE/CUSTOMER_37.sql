create or replace TRANSIENT TABLE TRANSIENT.CUSTOMER_37 (
	CUSTOMER_ID_NEW NUMBER(38,0) autoincrement start 2 increment 2 noorder,
	PRODUCT_ID NUMBER(38,0) autoincrement start 3 increment 1 noorder,
	CUSTOMER_NAME VARCHAR(100),
	EMAIL VARCHAR(150),
	PHONE_NUMBER VARCHAR(15)
);