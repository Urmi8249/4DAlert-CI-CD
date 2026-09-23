-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for ORDERS_23.sql.ORDER_TIME.
-----------------------------------------------------------------------------
ALTER TABLE ANKITA.ORDERS_23 ADD ADDRESS VARCHAR(250);
-----------------------------------------------------------------------------
create or replace TABLE ANKITA.ORDER_ITEMS (
	ITEM_ID NUMBER(38,0) NOT NULL,
	ORDER_ID NUMBER(38,0),
	PRODUCT_NAME VARCHAR(150),
	primary key (ITEM_ID)
);
-----------------------------------------------------------------------------
create or replace TABLE ANKITA.CUSTOMER (
	CUSTOMER_ID NUMBER(38,0) NOT NULL,
	FIRST_NAME VARCHAR(100),
	LAST_NAME VARCHAR(100),
	EMAIL VARCHAR(150),
	PHONE VARCHAR(20),
	CITY VARCHAR(100),
	STATE VARCHAR(100),
	primary key (CUSTOMER_ID)
);
-----------------------------------------------------------------------------
create or replace TABLE ANKITA.DATA_LOAD (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	ADDRESS VARCHAR(250),
	TIME TIME(9),
	DATE DATE,
	primary key (ID)
);
-----------------------------------------------------------------------------
DROP TABLE ANKITA.DATE_TYPE_COL;
-----------------------------------------------------------------------------
DROP TABLE ANKITA.ORDERS_22;
-----------------------------------------------------------------------------
DROP TABLE ANKITA.ORDERS;
-----------------------------------------------------------------------------
DROP TABLE ANKITA.CUSTOMERS;
-----------------------------------------------------------------------------
DROP TABLE ANKITA.CUSTOMER_ORDERS;