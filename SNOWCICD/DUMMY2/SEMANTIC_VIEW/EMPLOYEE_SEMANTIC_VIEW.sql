create or replace semantic view DUMMY2.EMPLOYEE_SEMANTIC_VIEW
	tables (
		EMPLOYEE as DUMMY2.EMPLOYEE_OBJECT_TEST
	)
	dimensions (
		EMPLOYEE.EMPLOYEE_NAME as employee.EMP_NAME,
		EMPLOYEE.DEPARTMENT_NAME as employee.DEPARTMENT
	)
	metrics (
		EMPLOYEE.TOTAL_SALARY as SUM(employee.SALARY)
	);