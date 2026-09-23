create or replace task DUMMY2.EMPLOYEE_TASK
	warehouse=MY_WH
	schedule='USING CRON 0 12 * * * UTC'
	as SELECT CURRENT_TIMESTAMP();