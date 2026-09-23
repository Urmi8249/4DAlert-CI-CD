create or replace dynamic table DUMMY3.EMPLOYEE_DYNAMIC(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = MY_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY
FROM DUMMY3.EMPLOYEE_OBJECT_TEST;