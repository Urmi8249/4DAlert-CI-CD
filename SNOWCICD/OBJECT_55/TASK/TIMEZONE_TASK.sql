create or replace task OBJECT_55.TIMEZONE_TASK
	warehouse=COMPUTE_WH
	schedule='USING CRON 0 9 * * * Asia/Kolkata'
	as SELECT 1;