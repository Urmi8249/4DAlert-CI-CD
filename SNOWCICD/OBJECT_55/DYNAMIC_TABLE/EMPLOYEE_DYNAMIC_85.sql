create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_85(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT_ID,
	SALARY
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT_ID,
    SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE_82;