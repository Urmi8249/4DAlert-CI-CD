create or replace task OBJECT_55.WEEKLY_REPORT_TASK
	warehouse=COMPUTE_WH
	schedule='USING CRON 0 9 * * 5 UTC'
	as SELECT 1;