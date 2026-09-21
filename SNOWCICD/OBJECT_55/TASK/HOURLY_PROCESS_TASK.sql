create or replace task OBJECT_55.HOURLY_PROCESS_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as SELECT 1;