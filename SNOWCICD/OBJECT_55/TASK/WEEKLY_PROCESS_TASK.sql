create or replace task OBJECT_55.WEEKLY_PROCESS_TASK
	warehouse=COMPUTE_WH
	schedule='USING CRON 0 9 * * * UTC'
	as SELECT 1;