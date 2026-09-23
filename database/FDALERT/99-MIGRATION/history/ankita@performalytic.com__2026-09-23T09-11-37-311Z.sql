ALTER TABLE ANKITA.CUSTOMER DROP COLUMN STATE;
-----------------------------------------------------------------------------
create or replace TABLE ANKITA.DATA_LOAD_REF (
	REF_ID NUMBER(38,0) NOT NULL,
	DATA_LOAD_ID NUMBER(38,0) NOT NULL,
	DESCRIPTION VARCHAR(200),
	STATUS VARCHAR(50),
	CREATED_DATE DATE,
	primary key (REF_ID)
);
-----------------------------------------------------------------------------
create or replace TABLE ANKITA.ORDERS (
	ORDER_DATE DATE DEFAULT CURRENT_DATE()
);
-----------------------------------------------------------------------------
create or replace TABLE ANKITA.ORDERS_22 (
	ORDER_TIME TIME(9) DEFAULT CURRENT_TIME()
);
-----------------------------------------------------------------------------
ALTER TABLE ANKITA.DATA_LOAD DROP COLUMN NAME;