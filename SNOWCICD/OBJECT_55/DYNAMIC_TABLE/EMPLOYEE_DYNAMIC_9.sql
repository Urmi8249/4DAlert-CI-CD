create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_9(
	EMP_ID,
	DEPARTMENT,
	EMP_NAME,
	SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    DEPARTMENT,
    EMP_NAME,
    SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE;