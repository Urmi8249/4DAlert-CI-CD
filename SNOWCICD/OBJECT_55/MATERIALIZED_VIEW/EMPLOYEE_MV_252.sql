create or replace materialized view OBJECT_55.EMPLOYEE_MV_252(
	EMP_ID,
	EMP_NAME,
	SALARY
) COMMENT='Updated employee salary information'
 as
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE;