create or replace dynamic table BAIJAYANTI.EMPLOYEE_DYNAMIC_251(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT
FROM Baijayanti.EMPLOYEE_DYNAMIC_SOURCE_243;