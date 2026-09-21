create or replace semantic view OBJECT_55.SEMANTIC_VIEW_64
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_TABLE_60
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.EAST_REGION_SALES as SUM(
                        CASE 
                                WHEN sales.REGION = 'East' 
                                THEN sales.TOTAL_AMOUNT 
                                ELSE 0 
                        END
                ),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MIN_SALES as MIN(sales.TOTAL_AMOUNT),
		SALES.MAX_SALES as MAX(sales.TOTAL_AMOUNT)
	);