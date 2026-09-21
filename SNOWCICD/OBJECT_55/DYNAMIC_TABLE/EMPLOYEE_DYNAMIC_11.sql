create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_11(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY
) target_lag = '5 minutes' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE;