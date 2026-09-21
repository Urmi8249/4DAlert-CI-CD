create or replace task OBJECT_55.MULTI_CHANGE_TASK
	warehouse=COMPUTE_WH
	schedule='120 MINUTES'
	COMMENT='Employee data processing'
	as SELECT 2;