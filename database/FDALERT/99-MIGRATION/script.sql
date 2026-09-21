-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIME() on an existing table; cannot alter default for DEFAULT_TIME_30.sql.TIMESTAMP_COL.
-----------------------------------------------------------------------------
-- WARNING: The TIMESTAMP_COL column has DEFAULT CURRENT_TIMESTAMP(). Snowflake does not support setting this default value on an existing table; therefore, we are unable to generate an ALTER script for the datatype conversion.
-----------------------------------------------------------------------------
-- WARNING: The TIME_COL column has DEFAULT CURRENT_TIME(). Snowflake does not support setting this default value on an existing table; therefore, we are unable to generate an ALTER script for the datatype conversion.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_DATE() on an existing table; cannot alter default for DEFAULT_DATE_18.sql.DATE_COL.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIME() on an existing table; cannot alter default for DEFAULT_TIME_19.sql.TIME_COL.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for DEFAULT_TIME_19.sql.TIMESTAMP_COL.
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- WARNING: Adding NOT NULL to an existing ARRAY column is not supported if the table has data; supported only if the table is empty.
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET ARRAY_DATA = '' WHERE ARRAY_DATA IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER ARRAY_DATA SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Adding NOT NULL to an existing OBJECT column is not supported if the table has data; supported only if the table is empty.
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET OBJECT_DATA = '' WHERE OBJECT_DATA IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER OBJECT_DATA SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIME() on an existing table; cannot alter default for DEFAULT_TIME_15.sql.TIME_COL.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for DEFAULT_TIME_15.sql.TIMESTAMP_COL.
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------

-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CAST('2026-01-01' AS DATE) on an existing table; cannot alter default for DEFAULT_DATE_13.sql.DATE_COL.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_DATE() on an existing table; cannot alter default for DEFAULT_DATE.sql.DATE_COL.
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_20.sql.TIMESTAMP_NTZ_COL.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_20.sql.TIMESTAMP_LTZ_COL.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_20.sql.TIMESTAMP_TZ_COL.
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_21.sql.TIMESTAMP_NTZ_COL.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_21.sql.TIMESTAMP_LTZ_COL.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_21.sql.TIMESTAMP_TZ_COL.