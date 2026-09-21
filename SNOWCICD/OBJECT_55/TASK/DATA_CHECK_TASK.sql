create or replace task OBJECT_55.DATA_CHECK_TASK
	warehouse=COMPUTE_WH
	schedule='30 MINUTES'
	as SELECT 1;