create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_4(
	EMP_ID,
	EMP_NAME
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME
FROM EMPLOYEE_SOURCE;