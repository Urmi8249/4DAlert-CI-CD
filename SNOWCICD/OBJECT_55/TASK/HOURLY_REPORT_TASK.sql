create or replace task OBJECT_55.HOURLY_REPORT_TASK
	warehouse=COMPUTE_WH
	schedule='USING CRON 30 * * * * UTC'
	as SELECT 1;