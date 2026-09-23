create or replace dynamic table BAIJAYANTI.EMPLOYEE_DYNAMIC_253(
	EMPLOYEE_ID,
	EMP_NAME,
	SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT
    EMP_ID AS EMPLOYEE_ID,
    EMP_NAME,
    SALARY
FROM Baijayanti.EMPLOYEE_DYNAMIC_SOURCE_243;