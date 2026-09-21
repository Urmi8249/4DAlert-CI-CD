create or replace dynamic table OBJECT_55.ALICE_DYNAMIC_14(
	EMP_ID
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID AS EMPLOYEE_ID
FROM OBJECT_55.EMPLOYEE_SOURCE;