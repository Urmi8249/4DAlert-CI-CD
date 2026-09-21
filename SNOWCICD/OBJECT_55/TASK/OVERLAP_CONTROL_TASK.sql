create or replace task OBJECT_55.OVERLAP_CONTROL_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	allow_overlapping_execution=true
	as SELECT 1;