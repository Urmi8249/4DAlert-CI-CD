ALTER TABLE SOUMYA.ORDERS DROP COLUMN ORD_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYA.ORDERS ADD ORDER_ID NUMBER(38,0);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYA.ORDERS ADD CUSTOMER_NAME VARCHAR(20);
-----------------------------------------------------------------------------
