create or replace dynamic table OBJECT_55.DYNAMIC_EMPLOYEE_63(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	CITY,
	SALARY,
	BONUS,
	JOIN_DATE,
	STATUS
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 COMMENT='Employee dynamic table containing department, salary, bonus and joining date information'
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    CITY,
    SALARY,
    BONUS,
    JOIN_DATE,
    STATUS
FROM OBJECT_55.DYNAMIC_EMPLOYEE_SOURCE;