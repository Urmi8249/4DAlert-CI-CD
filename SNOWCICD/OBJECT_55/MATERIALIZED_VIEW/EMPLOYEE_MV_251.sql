create or replace materialized view OBJECT_55.EMPLOYEE_MV_251(
	EMP_ID,
	EMP_NAME,
	SALARY
) COMMENT='Employee salary materialized view'
 as
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE;