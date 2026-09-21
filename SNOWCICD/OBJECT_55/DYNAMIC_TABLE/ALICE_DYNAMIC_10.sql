create or replace dynamic table OBJECT_55.ALICE_DYNAMIC_10(
	EMP_ID,
	EMP_NAME,
	SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID AS EMPLOYEE_ID,
    EMP_NAME AS EMPLOYEE_NAME,
    SALARY AS EMPLOYEE_SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE;