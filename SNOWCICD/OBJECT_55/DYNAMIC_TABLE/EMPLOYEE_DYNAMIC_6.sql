create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_6(
	EMP_ID,
	EMP_NAME,
	SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    101 as EMP_ID,
    'Rahul' as EMP_NAME,
    45000 as SALARY
FROM EMPLOYEE_SOURCE;