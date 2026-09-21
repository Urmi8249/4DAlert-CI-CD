ALTER TABLE DATAA_1.ALL_DATATYPE_CHECK ADD EMAIL VARCHAR(150);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.ALL_DATATYPE_CHECK  RENAME TO DATAA_1."temp_ALL_DATATYPE_CHECK";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.ALL_DATATYPE_CHECK (
ID NUMBER(38,0),
EMP_NAME VARCHAR(100),
AGE NUMBER(38,0),
EMP_CODE VARCHAR(10),
STATUS VARCHAR(20),
JOINING_DATE DATE,
JOINING_TIME TIME(9),
CREATED_AT TIMESTAMP_NTZ(9),
IS_ACTIVE BOOLEAN,
EMAIL VARCHAR(150),
RATING NUMBER(38,0),
BONUS NUMBER(10,2),
check (ID > 0),
check (LENGTH(EMP_NAME) >= 3),
check (AGE BETWEEN 18 AND 60),
check (LENGTH(TRIM(EMP_CODE)) = 10),
check (STATUS IN ('ACTIVE', 'INACTIVE', 'ON_LEAVE')),
check (JOINING_DATE >= '2000-01-01'),
check (JOINING_TIME >= '09:00:00'),
check (CREATED_AT >= '2000-01-01 00:00:00'),
check (IS_ACTIVE IN (TRUE, FALSE)),
check (EMAIL LIKE '%@%'),
check (RATING BETWEEN 1 AND 5),
check (BONUS >= 0)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.ALL_DATATYPE_CHECK (ID,EMP_NAME,AGE,EMP_CODE,STATUS,JOINING_DATE,JOINING_TIME,CREATED_AT,IS_ACTIVE,EMAIL,RATING,BONUS)
SELECT ID,EMP_NAME,AGE,EMP_CODE,STATUS,JOINING_DATE,JOINING_TIME,CREATED_AT,IS_ACTIVE,EMAIL,RATING,BONUS
FROM DATAA_1."temp_ALL_DATATYPE_CHECK";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_ALL_DATATYPE_CHECK";
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET ID = 0 WHERE ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER ID SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET EMP_NAME = '' WHERE EMP_NAME IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER EMP_NAME SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET DESCRIPTION = '' WHERE DESCRIPTION IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER DESCRIPTION SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET AGE = 0 WHERE AGE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER AGE SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET SALARY = 0 WHERE SALARY IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER SALARY SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET BONUS = 0 WHERE BONUS IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER BONUS SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET RATING = 0 WHERE RATING IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER RATING SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET IS_ACTIVE = false WHERE IS_ACTIVE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER IS_ACTIVE SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET JOIN_DATE = '1900-01-01' WHERE JOIN_DATE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER JOIN_DATE SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET JOIN_TIME = '00:00:00' WHERE JOIN_TIME IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER JOIN_TIME SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET CREATED_AT = '1900-01-01 00:00:00' WHERE CREATED_AT IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER CREATED_AT SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET CREATED_AT_NTZ = '1900-01-01 00:00:00' WHERE CREATED_AT_NTZ IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER CREATED_AT_NTZ SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET CREATED_AT_LTZ = '1900-01-01 00:00:00' WHERE CREATED_AT_LTZ IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER CREATED_AT_LTZ SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET CREATED_AT_TZ = '1900-01-01 00:00:00 +00:00' WHERE CREATED_AT_TZ IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER CREATED_AT_TZ SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET BIRTH_YEAR = 0 WHERE BIRTH_YEAR IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER BIRTH_YEAR SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET TOTAL_COUNT = 0 WHERE TOTAL_COUNT IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER TOTAL_COUNT SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET DATA_BINARY = '' WHERE DATA_BINARY IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER DATA_BINARY SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Adding NOT NULL to an existing VARIANT column is not supported if the table has data; supported only if the table is empty.
UPDATE DATAA_1.ALL_DATATYPE_NOT_NULL_200 SET JSON_DATA = '' WHERE JSON_DATA IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_NOT_NULL_200 ALTER JSON_DATA SET NOT NULL;
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
ALTER TABLE DATAA_1.ALL_DATATYPE_UNIQUE_58 ADD constraint UQ_SALARY unique (SALARY);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_UNIQUE_58 ADD constraint UQ_AGE unique (AGE);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_UNIQUE_58 ADD constraint UQ_BONUS unique (BONUS);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ALL_DATATYPE_UNIQUE_58 ADD constraint UQ_IS_ACTIVE unique (IS_ACTIVE);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.BOOLEAN_BINARY_38 RENAME COLUMN BOOLEAN_COL TO "temp_BOOLEAN_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.BOOLEAN_BINARY_38 ADD BOOLEAN_COL BOOLEAN  DEFAULT TRUE;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.BOOLEAN_BINARY_38 SET BOOLEAN_COL = false WHERE BOOLEAN_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.BOOLEAN_BINARY_38 MODIFY BOOLEAN_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.BOOLEAN_BINARY_38 SET BOOLEAN_COL = "temp_BOOLEAN_COL" WHERE "temp_BOOLEAN_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.BOOLEAN_BINARY_38 DROP COLUMN "temp_BOOLEAN_COL";
-----------------------------------------------------------------------------
UPDATE DATAA_1.BOOLEAN_BINARY_38 SET BINARY_COL = '' WHERE BINARY_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.BOOLEAN_BINARY_38 ALTER BINARY_COL SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE DATAA_1.BOOLEAN_BINARY_38 SET BINARY_10_COL = '' WHERE BINARY_10_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.BOOLEAN_BINARY_38 ALTER BINARY_10_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.BOOLEAN_BINARY_39 ADD BOOLEAN_COL BOOLEAN  DEFAULT TRUE;
-----------------------------------------------------------------------------
UPDATE DATAA_1.BOOLEAN_BINARY_39 SET BOOLEAN_COL = false WHERE BOOLEAN_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.BOOLEAN_BINARY_39 ALTER BOOLEAN_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.BOOLEAN_BINARY_39 ADD BINARY_COL BINARY(8388608);
-----------------------------------------------------------------------------
UPDATE DATAA_1.BOOLEAN_BINARY_39 SET BINARY_COL = '' WHERE BINARY_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.BOOLEAN_BINARY_39 ALTER BINARY_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.BOOLEAN_BINARY_39 ADD BINARY_10_COL BINARY(10);
-----------------------------------------------------------------------------
UPDATE DATAA_1.BOOLEAN_BINARY_39 SET BINARY_10_COL = '' WHERE BINARY_10_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.BOOLEAN_BINARY_39 ALTER BINARY_10_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.BOOLEAN_BINARY_41 RENAME COLUMN BOOLEAN_COL TO "temp_BOOLEAN_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.BOOLEAN_BINARY_41 ADD BOOLEAN_COL BOOLEAN;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.BOOLEAN_BINARY_41 SET BOOLEAN_COL = "temp_BOOLEAN_COL" WHERE "temp_BOOLEAN_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.BOOLEAN_BINARY_41 DROP COLUMN "temp_BOOLEAN_COL";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.BOOLEAN_BINARY_41 ALTER BINARY_COL DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.BOOLEAN_BINARY_41 ALTER BINARY_10_COL DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DATATYPE_CHECK15 ADD EMP_BIGINT NUMBER(38,0);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DATATYPE_CHECK15 ADD EMP_INT NUMBER(38,0);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DATATYPE_CHECK15 ADD EMP_SMALLINT NUMBER(38,0);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DATATYPE_CHECK15 ADD EMP_BYTEINT NUMBER(38,0);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DATATYPE_CHECK15 ADD EMP_FLOAT FLOAT;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DATATYPE_CHECK15 ADD EMP_DECIMAL NUMBER(10,2);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DATATYPE_CHECK15 ADD EMP_DOUBLE FLOAT;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.DATATYPE_CHECK15  RENAME TO DATAA_1."temp_DATATYPE_CHECK15";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.DATATYPE_CHECK15 (
ID NUMBER(38,0),
NAME VARCHAR(50),
EMP_BIGINT NUMBER(38,0),
EMP_INT NUMBER(38,0),
EMP_SMALLINT NUMBER(38,0),
EMP_BYTEINT NUMBER(38,0),
EMP_FLOAT FLOAT,
EMP_DECIMAL NUMBER(10,2),
EMP_DOUBLE FLOAT,
check (EMP_BIGINT > 0),
check (EMP_INT >= 100),
check (EMP_SMALLINT BETWEEN 1 AND 100),
check (EMP_BYTEINT >= 0),
check (EMP_FLOAT > 0),
check (EMP_DECIMAL >= 1000),
check (EMP_DOUBLE BETWEEN 0 AND 1000)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.DATATYPE_CHECK15 (ID,NAME,EMP_BIGINT,EMP_INT,EMP_SMALLINT,EMP_BYTEINT,EMP_FLOAT,EMP_DECIMAL,EMP_DOUBLE)
SELECT ID,NAME,EMP_BIGINT,EMP_INT,EMP_SMALLINT,EMP_BYTEINT,EMP_FLOAT,EMP_DECIMAL,EMP_DOUBLE
FROM DATAA_1."temp_DATATYPE_CHECK15";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_DATATYPE_CHECK15";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DATE_TEST_48 RENAME COLUMN DATE_COL TO "temp_DATE_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DATE_TEST_48 ADD DATE_COL TIME(9);
-----------------------------------------------------------------------------
-- Step 3: Drop the temporary column
ALTER TABLE DATAA_1.DATE_TEST_48 DROP COLUMN "temp_DATE_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 RENAME COLUMN BOOLEAN_COL TO "temp_BOOLEAN_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 ADD BOOLEAN_COL VARCHAR(10)  DEFAULT 'TRUE';
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.BOOLEAN_BINARY_40 SET BOOLEAN_COL = '' WHERE BOOLEAN_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 MODIFY BOOLEAN_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.BOOLEAN_BINARY_40 SET BOOLEAN_COL = "temp_BOOLEAN_COL" WHERE "temp_BOOLEAN_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 DROP COLUMN "temp_BOOLEAN_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 RENAME COLUMN BINARY_COL TO "temp_BINARY_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 ADD BINARY_COL VARCHAR(100);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.BOOLEAN_BINARY_40 SET BINARY_COL = '' WHERE BINARY_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 MODIFY BINARY_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.BOOLEAN_BINARY_40 SET BINARY_COL = TO_VARCHAR("temp_BINARY_COL") WHERE "temp_BINARY_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 DROP COLUMN "temp_BINARY_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 RENAME COLUMN BINARY_10_COL TO "temp_BINARY_10_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 ADD BINARY_10_COL VARCHAR(20);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.BOOLEAN_BINARY_40 SET BINARY_10_COL = '' WHERE BINARY_10_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 MODIFY BINARY_10_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.BOOLEAN_BINARY_40 SET BINARY_10_COL = TO_VARCHAR("temp_BINARY_10_COL") WHERE "temp_BINARY_10_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.BOOLEAN_BINARY_40 DROP COLUMN "temp_BINARY_10_COL";
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_DATE() on an existing table; cannot alter default for DEFAULT_DATE.sql.DATE_COL.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CAST('2026-01-01' AS DATE) on an existing table; cannot alter default for DEFAULT_DATE_13.sql.DATE_COL.
-----------------------------------------------------------------------------
--Step 1: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_DATE_13 SET DATE_COL = '1900-01-01' WHERE DATE_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 2: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_DATE_13 MODIFY DATE_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_DATE_14 RENAME COLUMN DATE_COL TO "temp_DATE_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_DATE_14 ADD DATE_COL VARCHAR(100)  DEFAULT '2026-01-01';
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_DATE_14 SET DATE_COL = '' WHERE DATE_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_DATE_14 MODIFY DATE_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_DATE_14 SET DATE_COL = "temp_DATE_COL" WHERE "temp_DATE_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_DATE_14 DROP COLUMN "temp_DATE_COL";
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_DATE() on an existing table; cannot alter default for DEFAULT_DATE_18.sql.DATE_COL.
-- Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_DATE_18 ADD DATE_COL DATE;
-----------------------------------------------------------------------------
--Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_DATE_18 SET DATE_COL = '1900-01-01' WHERE DATE_COL  IS NULL;
-----------------------------------------------------------------------------
--Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_DATE_18 MODIFY DATE_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ADD FLOAT_COL FLOAT  DEFAULT 10.5;
-----------------------------------------------------------------------------
UPDATE DATAA_1.DEFAULT_FLOAT_32 SET FLOAT_COL = 0 WHERE FLOAT_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ALTER FLOAT_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ADD FLOAT4_COL FLOAT  DEFAULT 20.5;
-----------------------------------------------------------------------------
UPDATE DATAA_1.DEFAULT_FLOAT_32 SET FLOAT4_COL = 0 WHERE FLOAT4_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ALTER FLOAT4_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ADD FLOAT8_COL FLOAT  DEFAULT 30.5;
-----------------------------------------------------------------------------
UPDATE DATAA_1.DEFAULT_FLOAT_32 SET FLOAT8_COL = 0 WHERE FLOAT8_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ALTER FLOAT8_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ADD DOUBLE_COL FLOAT  DEFAULT 40.5;
-----------------------------------------------------------------------------
UPDATE DATAA_1.DEFAULT_FLOAT_32 SET DOUBLE_COL = 0 WHERE DOUBLE_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ALTER DOUBLE_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ADD DOUBLE_PRECISION_COL FLOAT  DEFAULT 50.5;
-----------------------------------------------------------------------------
UPDATE DATAA_1.DEFAULT_FLOAT_32 SET DOUBLE_PRECISION_COL = 0 WHERE DOUBLE_PRECISION_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ALTER DOUBLE_PRECISION_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ADD REAL_COL FLOAT  DEFAULT 60.5;
-----------------------------------------------------------------------------
UPDATE DATAA_1.DEFAULT_FLOAT_32 SET REAL_COL = 0 WHERE REAL_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEFAULT_FLOAT_32 ALTER REAL_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 RENAME COLUMN FLOAT_COL TO "temp_FLOAT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 ADD FLOAT_COL NUMBER(10,2)  DEFAULT 10.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET FLOAT_COL = 0 WHERE FLOAT_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 MODIFY FLOAT_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET FLOAT_COL = "temp_FLOAT_COL" WHERE "temp_FLOAT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 DROP COLUMN "temp_FLOAT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 RENAME COLUMN FLOAT4_COL TO "temp_FLOAT4_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 ADD FLOAT4_COL VARCHAR(50)  DEFAULT '20.5';
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET FLOAT4_COL = '' WHERE FLOAT4_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 MODIFY FLOAT4_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET FLOAT4_COL = "temp_FLOAT4_COL" WHERE "temp_FLOAT4_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 DROP COLUMN "temp_FLOAT4_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 RENAME COLUMN FLOAT8_COL TO "temp_FLOAT8_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 ADD FLOAT8_COL NUMBER(15,3)  DEFAULT 30.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET FLOAT8_COL = 0 WHERE FLOAT8_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 MODIFY FLOAT8_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET FLOAT8_COL = "temp_FLOAT8_COL" WHERE "temp_FLOAT8_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 DROP COLUMN "temp_FLOAT8_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 RENAME COLUMN DOUBLE_COL TO "temp_DOUBLE_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 ADD DOUBLE_COL NUMBER(10,2)  DEFAULT 40.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET DOUBLE_COL = 0 WHERE DOUBLE_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 MODIFY DOUBLE_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET DOUBLE_COL = "temp_DOUBLE_COL" WHERE "temp_DOUBLE_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 DROP COLUMN "temp_DOUBLE_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 RENAME COLUMN DOUBLE_PRECISION_COL TO "temp_DOUBLE_PRECISION_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 ADD DOUBLE_PRECISION_COL NUMBER(10,2)  DEFAULT 50.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET DOUBLE_PRECISION_COL = 0 WHERE DOUBLE_PRECISION_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 MODIFY DOUBLE_PRECISION_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET DOUBLE_PRECISION_COL = "temp_DOUBLE_PRECISION_COL" WHERE "temp_DOUBLE_PRECISION_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 DROP COLUMN "temp_DOUBLE_PRECISION_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 RENAME COLUMN REAL_COL TO "temp_REAL_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 ADD REAL_COL NUMBER(10,2)  DEFAULT 60.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET REAL_COL = 0 WHERE REAL_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 MODIFY REAL_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_FLOAT_33 SET REAL_COL = "temp_REAL_COL" WHERE "temp_REAL_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_FLOAT_33 DROP COLUMN "temp_REAL_COL";
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIME() on an existing table; cannot alter default for DEFAULT_TIME_15.sql.TIME_COL.
-----------------------------------------------------------------------------
--Step 1: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_15 SET TIME_COL = '00:00:00' WHERE TIME_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 2: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_15 MODIFY TIME_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for DEFAULT_TIME_15.sql.TIMESTAMP_COL.
-----------------------------------------------------------------------------
--Step 1: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_15 SET TIMESTAMP_COL = '1900-01-01 00:00:00' WHERE TIMESTAMP_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 2: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_15 MODIFY TIMESTAMP_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: The TIME_COL column has DEFAULT CURRENT_TIME(). Snowflake does not support setting this default value on an existing table; therefore, we are unable to generate an ALTER script for the datatype conversion.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIME() on an existing table; cannot alter default for DEFAULT_TIME_19.sql.TIME_COL.
-- Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_TIME_19 ADD TIME_COL TIME(9);
-----------------------------------------------------------------------------
--Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_19 SET TIME_COL = '00:00:00' WHERE TIME_COL  IS NULL;
-----------------------------------------------------------------------------
--Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_19 MODIFY TIME_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for DEFAULT_TIME_19.sql.TIMESTAMP_COL.
-- Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_TIME_19 ADD TIMESTAMP_COL TIMESTAMP_NTZ(9);
-----------------------------------------------------------------------------
--Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_19 SET TIMESTAMP_COL = '1900-01-01 00:00:00' WHERE TIMESTAMP_COL  IS NULL;
-----------------------------------------------------------------------------
--Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_19 MODIFY TIMESTAMP_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_TIME_30 RENAME COLUMN TIME_COL TO "temp_TIME_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_TIME_30 ADD TIME_COL VARCHAR(20)  DEFAULT '12:08:05';
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_30 SET TIME_COL = '' WHERE TIME_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_30 MODIFY TIME_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_TIME_30 SET TIME_COL = "temp_TIME_COL" WHERE "temp_TIME_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_TIME_30 DROP COLUMN "temp_TIME_COL";
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIME() on an existing table; cannot alter default for DEFAULT_TIME_30.sql.TIMESTAMP_COL.
-----------------------------------------------------------------------------
-- WARNING: The TIMESTAMP_COL column has DEFAULT CURRENT_TIMESTAMP(). Snowflake does not support setting this default value on an existing table; therefore, we are unable to generate an ALTER script for the datatype conversion.
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 RENAME COLUMN ID TO "temp_ID";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 ADD ID NUMBER(38,0)  DEFAULT 1;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_31 SET ID = 0 WHERE ID  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_31 MODIFY ID SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_TIME_31 SET ID = "temp_ID" WHERE "temp_ID" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_TIME_31 DROP COLUMN "temp_ID";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 RENAME COLUMN FLOAT_COL TO "temp_FLOAT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 ADD FLOAT_COL FLOAT  DEFAULT 10.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_31 SET FLOAT_COL = 0 WHERE FLOAT_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_31 MODIFY FLOAT_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_TIME_31 SET FLOAT_COL = "temp_FLOAT_COL" WHERE "temp_FLOAT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_TIME_31 DROP COLUMN "temp_FLOAT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 RENAME COLUMN FLOAT4_COL TO "temp_FLOAT4_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 ADD FLOAT4_COL FLOAT  DEFAULT 20.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_31 SET FLOAT4_COL = 0 WHERE FLOAT4_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_31 MODIFY FLOAT4_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_TIME_31 SET FLOAT4_COL = "temp_FLOAT4_COL" WHERE "temp_FLOAT4_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_TIME_31 DROP COLUMN "temp_FLOAT4_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 RENAME COLUMN FLOAT8_COL TO "temp_FLOAT8_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 ADD FLOAT8_COL FLOAT  DEFAULT 30.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_31 SET FLOAT8_COL = 0 WHERE FLOAT8_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_31 MODIFY FLOAT8_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_TIME_31 SET FLOAT8_COL = "temp_FLOAT8_COL" WHERE "temp_FLOAT8_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_TIME_31 DROP COLUMN "temp_FLOAT8_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 RENAME COLUMN DOUBLE_COL TO "temp_DOUBLE_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 ADD DOUBLE_COL FLOAT  DEFAULT 40.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_31 SET DOUBLE_COL = 0 WHERE DOUBLE_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_31 MODIFY DOUBLE_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_TIME_31 SET DOUBLE_COL = "temp_DOUBLE_COL" WHERE "temp_DOUBLE_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_TIME_31 DROP COLUMN "temp_DOUBLE_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 RENAME COLUMN DOUBLE_PRECISION_COL TO "temp_DOUBLE_PRECISION_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 ADD DOUBLE_PRECISION_COL FLOAT  DEFAULT 50.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_31 SET DOUBLE_PRECISION_COL = 0 WHERE DOUBLE_PRECISION_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_31 MODIFY DOUBLE_PRECISION_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_TIME_31 SET DOUBLE_PRECISION_COL = "temp_DOUBLE_PRECISION_COL" WHERE "temp_DOUBLE_PRECISION_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_TIME_31 DROP COLUMN "temp_DOUBLE_PRECISION_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 RENAME COLUMN REAL_COL TO "temp_REAL_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEFAULT_TIME_31 ADD REAL_COL FLOAT  DEFAULT 60.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEFAULT_TIME_31 SET REAL_COL = 0 WHERE REAL_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEFAULT_TIME_31 MODIFY REAL_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEFAULT_TIME_31 SET REAL_COL = "temp_REAL_COL" WHERE "temp_REAL_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEFAULT_TIME_31 DROP COLUMN "temp_REAL_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.DEPARTMENT_FK_198 RENAME COLUMN DEPT_CODE TO "temp_DEPT_CODE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.DEPARTMENT_FK_198 ADD DEPT_CODE VARCHAR(10);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.DEPARTMENT_FK_198 SET DEPT_CODE = '' WHERE DEPT_CODE  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.DEPARTMENT_FK_198 MODIFY DEPT_CODE SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.DEPARTMENT_FK_198 SET DEPT_CODE = "temp_DEPT_CODE" WHERE "temp_DEPT_CODE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.DEPARTMENT_FK_198 DROP COLUMN "temp_DEPT_CODE";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.DEPARTMENT_FK_198 ADD constraint UQ_DEPT_CODE unique (DEPT_CODE);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.EMPLOYEE_CHECK10  RENAME TO DATAA_1."temp_EMPLOYEE_CHECK10";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.EMPLOYEE_CHECK10 (
EMP_ID NUMBER(38,0),
EMP_NAME VARCHAR(50),
AGE NUMBER(38,0),
SALARY NUMBER(10,2),
STATUS VARCHAR(20),
check (EMP_ID > 0),
check (AGE >= 18),
check (SALARY > 0),
check (STATUS IN ('ACTIVE', 'INACTIVE'))
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.EMPLOYEE_CHECK10 (EMP_ID,EMP_NAME,AGE,SALARY,STATUS)
SELECT EMP_ID,EMP_NAME,AGE,SALARY,STATUS
FROM DATAA_1."temp_EMPLOYEE_CHECK10";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_EMPLOYEE_CHECK10";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_CHECK16 ADD constraint CK_NAME_START check (EMP_NAME LIKE 'R%') ENABLE NOVALIDATE;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_CHECK16 ADD constraint CK_STATUS check (STATUS IN ('ACTIVE', 'INACTIVE', 'ON_LEAVE')) ENABLE NOVALIDATE;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_CHECK16 ADD constraint CK_JOIN_DATE check (JOIN_DATE >= '2020-01-01') ENABLE NOVALIDATE;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_CHECK17 DROP COLUMN EMP_NAME;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_CHECK17 DROP COLUMN EXPERIENCE;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_CHECK17 ADD EMPLOYEE_NAME VARCHAR(100);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_CHECK17 ADD EXP NUMBER(38,0);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.EMPLOYEE_CHECK17  RENAME TO DATAA_1."temp_EMPLOYEE_CHECK17";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.EMPLOYEE_CHECK17 (
EMP_ID NUMBER(38,0),
EMPLOYEE_NAME VARCHAR(100),
AGE NUMBER(38,0),
SALARY NUMBER(10,2),
STATUS VARCHAR(20),
EXP NUMBER(38,0),
check (EMP_ID > 0),
check (LENGTH(EMPLOYEE_NAME) >= 3),
check (AGE BETWEEN 18 AND 60),
check (SALARY > 0),
check (STATUS IN ('ACTIVE', 'INACTIVE')),
check (EXP >= 0)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.EMPLOYEE_CHECK17 (EMP_ID,EMPLOYEE_NAME,AGE,SALARY,STATUS,EXP)
SELECT EMP_ID,EMPLOYEE_NAME,AGE,SALARY,STATUS,EXP
FROM DATAA_1."temp_EMPLOYEE_CHECK17";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_EMPLOYEE_CHECK17";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.EMPLOYEE_CHECK23 RENAME COLUMN STATUS TO "temp_STATUS";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.EMPLOYEE_CHECK23 ADD STATUS VARCHAR(20) DEFAULT 'ACTIVE';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.EMPLOYEE_CHECK23 SET STATUS = "temp_STATUS" WHERE "temp_STATUS" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.EMPLOYEE_CHECK23 DROP COLUMN "temp_STATUS";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.EMPLOYEE_CHECK23  RENAME TO DATAA_1."temp_EMPLOYEE_CHECK23";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.EMPLOYEE_CHECK23 (
EMP_ID NUMBER(38,0),
EMP_NAME VARCHAR(100),
AGE NUMBER(38,0) DEFAULT 25,
SALARY NUMBER(10,2) DEFAULT 30000,
STATUS VARCHAR(20) DEFAULT 'ACTIVE',
check (EMP_ID > 0),
check (AGE >= 18),
check (SALARY > 0),
check (STATUS IN ('ACTIVE', 'INACTIVE'))
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.EMPLOYEE_CHECK23 (EMP_ID,EMP_NAME,AGE,SALARY,STATUS)
SELECT EMP_ID,EMP_NAME,AGE,SALARY,STATUS
FROM DATAA_1."temp_EMPLOYEE_CHECK23";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_EMPLOYEE_CHECK23";
-----------------------------------------------------------------------------
UPDATE DATAA_1.EMPLOYEE_CHECK24 SET AGE = 0 WHERE AGE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_CHECK24 ALTER AGE SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.EMPLOYEE_CHECK24  RENAME TO DATAA_1."temp_EMPLOYEE_CHECK24";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.EMPLOYEE_CHECK24 (
EMP_ID NUMBER(38,0) NOT NULL,
EMP_NAME VARCHAR(100) NOT NULL,
AGE NUMBER(38,0) NOT NULL,
SALARY NUMBER(10,2) NOT NULL,
STATUS VARCHAR(20) NOT NULL,
check (EMP_ID > 0),
check (LENGTH(EMP_NAME) >= 3),
check (AGE BETWEEN 18 AND 60),
check (SALARY > 0),
check (STATUS IN ('ACTIVE', 'INACTIVE'))
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.EMPLOYEE_CHECK24 (EMP_ID,EMP_NAME,AGE,SALARY,STATUS)
SELECT EMP_ID,EMP_NAME,AGE,SALARY,STATUS
FROM DATAA_1."temp_EMPLOYEE_CHECK24";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_EMPLOYEE_CHECK24";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.EMPLOYEE_CHECK25 RENAME COLUMN STATUS TO "temp_STATUS";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.EMPLOYEE_CHECK25 ADD STATUS VARCHAR(20)  DEFAULT 'ACTIVE';
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.EMPLOYEE_CHECK25 SET STATUS = '' WHERE STATUS  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.EMPLOYEE_CHECK25 MODIFY STATUS SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.EMPLOYEE_CHECK25 SET STATUS = "temp_STATUS" WHERE "temp_STATUS" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.EMPLOYEE_CHECK25 DROP COLUMN "temp_STATUS";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.EMPLOYEE_CHECK25  RENAME TO DATAA_1."temp_EMPLOYEE_CHECK25";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.EMPLOYEE_CHECK25 (
EMP_ID NUMBER(38,0) NOT NULL,
EMP_NAME VARCHAR(100) NOT NULL,
AGE NUMBER(38,0) NOT NULL DEFAULT 25,
SALARY NUMBER(10,2) NOT NULL DEFAULT 30000,
STATUS VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
check (EMP_ID > 0),
check (AGE >= 18),
check (SALARY > 0),
check (STATUS IN ('ACTIVE', 'INACTIVE'))
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.EMPLOYEE_CHECK25 (EMP_ID,EMP_NAME,AGE,SALARY,STATUS)
SELECT EMP_ID,EMP_NAME,AGE,SALARY,STATUS
FROM DATAA_1."temp_EMPLOYEE_CHECK25";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_EMPLOYEE_CHECK25";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_CHECK26 ALTER STATUS DROP NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.EMPLOYEE_CHECK26  RENAME TO DATAA_1."temp_EMPLOYEE_CHECK26";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.EMPLOYEE_CHECK26 (
EMP_ID NUMBER(38,0) NOT NULL,
EMP_NAME VARCHAR(100) NOT NULL,
AGE NUMBER(38,0) NOT NULL DEFAULT 25,
SALARY NUMBER(10,2) NOT NULL DEFAULT 30000,
STATUS VARCHAR(20) DEFAULT 'ACTIVE',
check (EMP_ID > 0),
check (AGE >= 18),
check (SALARY > 0)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.EMPLOYEE_CHECK26 (EMP_ID,EMP_NAME,AGE,SALARY,STATUS)
SELECT EMP_ID,EMP_NAME,AGE,SALARY,STATUS
FROM DATAA_1."temp_EMPLOYEE_CHECK26";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_EMPLOYEE_CHECK26";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.EMPLOYEE_CHECK31  RENAME TO DATAA_1."temp_EMPLOYEE_CHECK31";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.EMPLOYEE_CHECK31 (
EMP_ID NUMBER(38,0),
EMP_NAME VARCHAR(100),
STATUS_CODE NUMBER(38,0),
constraint CK_STATUS_CODE check (NOT (STATUS_CODE IN (1, 2, 3)))
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.EMPLOYEE_CHECK31 (EMP_ID,EMP_NAME,STATUS_CODE)
SELECT EMP_ID,EMP_NAME,STATUS_CODE
FROM DATAA_1."temp_EMPLOYEE_CHECK31";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_EMPLOYEE_CHECK31";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.EMPLOYEE_CHECK30  RENAME TO DATAA_1."temp_EMPLOYEE_CHECK30";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.EMPLOYEE_CHECK30 (
EMP_ID NUMBER(38,0),
EMP_NAME VARCHAR(100),
STATUS_CODE NUMBER(38,0),
constraint CK_STATUS_CODE check (EMP_ID > 0 AND STATUS_CODE IN (1, 2, 3))
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.EMPLOYEE_CHECK30 (EMP_ID,EMP_NAME,STATUS_CODE)
SELECT EMP_ID,EMP_NAME,STATUS_CODE
FROM DATAA_1."temp_EMPLOYEE_CHECK30";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_EMPLOYEE_CHECK30";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.EMPLOYEE_CHECK32  RENAME TO DATAA_1."temp_EMPLOYEE_CHECK32";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.EMPLOYEE_CHECK32 (
EMP_ID NUMBER(38,0),
EMP_NAME VARCHAR(100),
STATUS_CODE NUMBER(38,0),
constraint CK_STATUS_CODE check (STATUS_CODE BETWEEN 1 AND 3)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.EMPLOYEE_CHECK32 (EMP_ID,EMP_NAME,STATUS_CODE)
SELECT EMP_ID,EMP_NAME,STATUS_CODE
FROM DATAA_1."temp_EMPLOYEE_CHECK32";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_EMPLOYEE_CHECK32";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_FK_193 DROP CONSTRAINT FK_EMP_PROJECT;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.EMPLOYEE_FK_198 RENAME COLUMN DEPT_CODE TO "temp_DEPT_CODE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.EMPLOYEE_FK_198 ADD DEPT_CODE VARCHAR(10);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.EMPLOYEE_FK_198 SET DEPT_CODE = "temp_DEPT_CODE" WHERE "temp_DEPT_CODE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.EMPLOYEE_FK_198 DROP COLUMN "temp_DEPT_CODE";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_FK_198 ADD constraint FK_EMP_DEPT foreign key (DEPT_CODE) references DATAA_1.DEPARTMENT_FK_198(DEPT_CODE);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_FK_191 DROP CONSTRAINT "FK_EMP_DEPT";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_FK_191 DROP COLUMN DEPARTMENT_ID;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_FK_191 ADD DEPT_ID NUMBER(10,0);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_FK_191 ADD constraint FK_EMP_DEPT foreign key (DEPT_ID) references DATAA_1.DEPARTMENT_FK_191("DEPT_ID");
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ADD EMAIL VARCHAR(100);
-----------------------------------------------------------------------------
UPDATE DATAA_1.EMPLOYEE_UNIQUE_59 SET EMAIL = '' WHERE EMAIL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ALTER EMAIL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ADD PHONE VARCHAR(15);
-----------------------------------------------------------------------------
UPDATE DATAA_1.EMPLOYEE_UNIQUE_59 SET PHONE = '' WHERE PHONE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ALTER PHONE SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ADD EMP_CODE VARCHAR(20);
-----------------------------------------------------------------------------
UPDATE DATAA_1.EMPLOYEE_UNIQUE_59 SET EMP_CODE = '' WHERE EMP_CODE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ALTER EMP_CODE SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ADD PAN_NUMBER VARCHAR(20);
-----------------------------------------------------------------------------
UPDATE DATAA_1.EMPLOYEE_UNIQUE_59 SET PAN_NUMBER = '' WHERE PAN_NUMBER IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ALTER PAN_NUMBER SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ADD unique (EMAIL);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ADD unique (PHONE);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ADD unique (EMP_CODE);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_59 ADD unique (PAN_NUMBER);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_60 DROP COLUMN DEPARTMENT;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_60 ADD DEPT VARCHAR(50);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_60 ADD unique (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_60 ADD unique (EMP_NAME);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_60 ADD unique (EMAIL);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_60 ADD unique (DEPT);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_61 DROP CONSTRAINT UQ_EMP_EMAIL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.EMPLOYEE_UNIQUE_61 ADD constraint UQ_EMPLOYEE_EMAIL unique (EMAIL);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.INT_DATATYPE_28 RENAME COLUMN BIGINT_COL TO "temp_BIGINT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.INT_DATATYPE_28 ADD BIGINT_COL NUMBER(38,0)  DEFAULT 100000;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.INT_DATATYPE_28 SET BIGINT_COL = 0 WHERE BIGINT_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.INT_DATATYPE_28 MODIFY BIGINT_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.INT_DATATYPE_28 SET BIGINT_COL = "temp_BIGINT_COL" WHERE "temp_BIGINT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.INT_DATATYPE_28 DROP COLUMN "temp_BIGINT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.INT_DATATYPE_28 RENAME COLUMN SMALLINT_COL TO "temp_SMALLINT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.INT_DATATYPE_28 ADD SMALLINT_COL NUMBER(38,0)  DEFAULT 1000;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.INT_DATATYPE_28 SET SMALLINT_COL = 0 WHERE SMALLINT_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.INT_DATATYPE_28 MODIFY SMALLINT_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.INT_DATATYPE_28 SET SMALLINT_COL = "temp_SMALLINT_COL" WHERE "temp_SMALLINT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.INT_DATATYPE_28 DROP COLUMN "temp_SMALLINT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.INT_DATATYPE_28 RENAME COLUMN TINYINT_COL TO "temp_TINYINT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.INT_DATATYPE_28 ADD TINYINT_COL NUMBER(38,0)  DEFAULT 10;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.INT_DATATYPE_28 SET TINYINT_COL = 0 WHERE TINYINT_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.INT_DATATYPE_28 MODIFY TINYINT_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.INT_DATATYPE_28 SET TINYINT_COL = "temp_TINYINT_COL" WHERE "temp_TINYINT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.INT_DATATYPE_28 DROP COLUMN "temp_TINYINT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.INT_DATATYPE_28 RENAME COLUMN BYTEINT_COL TO "temp_BYTEINT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.INT_DATATYPE_28 ADD BYTEINT_COL NUMBER(38,0)  DEFAULT 20;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.INT_DATATYPE_28 SET BYTEINT_COL = 0 WHERE BYTEINT_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.INT_DATATYPE_28 MODIFY BYTEINT_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.INT_DATATYPE_28 SET BYTEINT_COL = "temp_BYTEINT_COL" WHERE "temp_BYTEINT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.INT_DATATYPE_28 DROP COLUMN "temp_BYTEINT_COL";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.INT_DATATYPE_29 ADD BIGINT_COL NUMBER(38,0)  DEFAULT 100000;
-----------------------------------------------------------------------------
UPDATE DATAA_1.INT_DATATYPE_29 SET BIGINT_COL = 0 WHERE BIGINT_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.INT_DATATYPE_29 ALTER BIGINT_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.INT_DATATYPE_29 ADD SMALLINT_COL NUMBER(38,0)  DEFAULT 1000;
-----------------------------------------------------------------------------
UPDATE DATAA_1.INT_DATATYPE_29 SET SMALLINT_COL = 0 WHERE SMALLINT_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.INT_DATATYPE_29 ALTER SMALLINT_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.INT_DATATYPE_29 ADD TINYINT_COL NUMBER(38,0)  DEFAULT 10;
-----------------------------------------------------------------------------
UPDATE DATAA_1.INT_DATATYPE_29 SET TINYINT_COL = 0 WHERE TINYINT_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.INT_DATATYPE_29 ALTER TINYINT_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.INT_DATATYPE_29 ADD BYTEINT_COL NUMBER(38,0)  DEFAULT 20;
-----------------------------------------------------------------------------
UPDATE DATAA_1.INT_DATATYPE_29 SET BYTEINT_COL = 0 WHERE BYTEINT_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.INT_DATATYPE_29 ALTER BYTEINT_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 RENAME COLUMN ID TO "temp_ID";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 ADD ID NUMBER(38,0)  DEFAULT 1;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET ID = 0 WHERE ID  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 MODIFY ID SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET ID = "temp_ID" WHERE "temp_ID" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 DROP COLUMN "temp_ID";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 RENAME COLUMN NUMBER_COL TO "temp_NUMBER_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 ADD NUMBER_COL NUMBER(38,0)  DEFAULT 1000;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET NUMBER_COL = 0 WHERE NUMBER_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 MODIFY NUMBER_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET NUMBER_COL = "temp_NUMBER_COL" WHERE "temp_NUMBER_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 DROP COLUMN "temp_NUMBER_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 RENAME COLUMN NUMBER_PRECISION_COL TO "temp_NUMBER_PRECISION_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 ADD NUMBER_PRECISION_COL NUMBER(10,2)  DEFAULT 100.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET NUMBER_PRECISION_COL = 0 WHERE NUMBER_PRECISION_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 MODIFY NUMBER_PRECISION_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET NUMBER_PRECISION_COL = "temp_NUMBER_PRECISION_COL" WHERE "temp_NUMBER_PRECISION_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 DROP COLUMN "temp_NUMBER_PRECISION_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 RENAME COLUMN NUMERIC_COL TO "temp_NUMERIC_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 ADD NUMERIC_COL NUMBER(12,3)  DEFAULT 300.125;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET NUMERIC_COL = 0 WHERE NUMERIC_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 MODIFY NUMERIC_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET NUMERIC_COL = "temp_NUMERIC_COL" WHERE "temp_NUMERIC_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 DROP COLUMN "temp_NUMERIC_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 RENAME COLUMN INT_COL TO "temp_INT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 ADD INT_COL NUMBER(38,0)  DEFAULT 10;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET INT_COL = 0 WHERE INT_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 MODIFY INT_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET INT_COL = "temp_INT_COL" WHERE "temp_INT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 DROP COLUMN "temp_INT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 RENAME COLUMN INTEGER_COL TO "temp_INTEGER_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 ADD INTEGER_COL NUMBER(38,0)  DEFAULT 20;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET INTEGER_COL = 0 WHERE INTEGER_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 MODIFY INTEGER_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_22 SET INTEGER_COL = "temp_INTEGER_COL" WHERE "temp_INTEGER_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_22 DROP COLUMN "temp_INTEGER_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 RENAME COLUMN ID TO "temp_ID";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 ADD ID VARCHAR(50)  DEFAULT '1';
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_23 SET ID = '' WHERE ID  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 MODIFY ID SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_23 SET ID = "temp_ID" WHERE "temp_ID" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 DROP COLUMN "temp_ID";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 RENAME COLUMN NUMBER_COL TO "temp_NUMBER_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 ADD NUMBER_COL VARCHAR(100)  DEFAULT '1000';
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_23 SET NUMBER_COL = '' WHERE NUMBER_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 MODIFY NUMBER_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_23 SET NUMBER_COL = "temp_NUMBER_COL" WHERE "temp_NUMBER_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 DROP COLUMN "temp_NUMBER_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 RENAME COLUMN INT_COL TO "temp_INT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 ADD INT_COL NUMBER(10,2)  DEFAULT 10;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_23 SET INT_COL = 0 WHERE INT_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 MODIFY INT_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_23 SET INT_COL = "temp_INT_COL" WHERE "temp_INT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 DROP COLUMN "temp_INT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 RENAME COLUMN INTEGER_COL TO "temp_INTEGER_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 ADD INTEGER_COL FLOAT  DEFAULT 20;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_23 SET INTEGER_COL = 0 WHERE INTEGER_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 MODIFY INTEGER_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_23 SET INTEGER_COL = "temp_INTEGER_COL" WHERE "temp_INTEGER_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_23 DROP COLUMN "temp_INTEGER_COL";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.NUMBER_DATATYPE_24 ADD NUMBER_COL NUMBER(38,0)  DEFAULT 1000;
-----------------------------------------------------------------------------
UPDATE DATAA_1.NUMBER_DATATYPE_24 SET NUMBER_COL = 0 WHERE NUMBER_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.NUMBER_DATATYPE_24 ALTER NUMBER_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.NUMBER_DATATYPE_24 ADD NUMBER_PRECISION_COL NUMBER(10,2)  DEFAULT 100.5;
-----------------------------------------------------------------------------
UPDATE DATAA_1.NUMBER_DATATYPE_24 SET NUMBER_PRECISION_COL = 0 WHERE NUMBER_PRECISION_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.NUMBER_DATATYPE_24 ALTER NUMBER_PRECISION_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.NUMBER_DATATYPE_24 ADD NUMERIC_COL NUMBER(12,3)  DEFAULT 300.125;
-----------------------------------------------------------------------------
UPDATE DATAA_1.NUMBER_DATATYPE_24 SET NUMERIC_COL = 0 WHERE NUMERIC_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.NUMBER_DATATYPE_24 ALTER NUMERIC_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.NUMBER_DATATYPE_24 ADD INT_COL NUMBER(38,0)  DEFAULT 10;
-----------------------------------------------------------------------------
UPDATE DATAA_1.NUMBER_DATATYPE_24 SET INT_COL = 0 WHERE INT_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.NUMBER_DATATYPE_24 ALTER INT_COL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.NUMBER_DATATYPE_24 ADD INTEGER_COL NUMBER(38,0)  DEFAULT 20;
-----------------------------------------------------------------------------
UPDATE DATAA_1.NUMBER_DATATYPE_24 SET INTEGER_COL = 0 WHERE INTEGER_COL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.NUMBER_DATATYPE_24 ALTER INTEGER_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_25 RENAME COLUMN NUMBER_PRECISION_COL TO "temp_NUMBER_PRECISION_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_25 ADD NUMBER_PRECISION_COL NUMBER(10,2)  DEFAULT 100.5;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_25 SET NUMBER_PRECISION_COL = 0 WHERE NUMBER_PRECISION_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_25 MODIFY NUMBER_PRECISION_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_25 SET NUMBER_PRECISION_COL = "temp_NUMBER_PRECISION_COL" WHERE "temp_NUMBER_PRECISION_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_25 DROP COLUMN "temp_NUMBER_PRECISION_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_25 RENAME COLUMN NUMERIC_COL TO "temp_NUMERIC_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMBER_DATATYPE_25 ADD NUMERIC_COL NUMBER(12,3)  DEFAULT 300.125;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.NUMBER_DATATYPE_25 SET NUMERIC_COL = 0 WHERE NUMERIC_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.NUMBER_DATATYPE_25 MODIFY NUMERIC_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMBER_DATATYPE_25 SET NUMERIC_COL = "temp_NUMERIC_COL" WHERE "temp_NUMERIC_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.NUMBER_DATATYPE_25 DROP COLUMN "temp_NUMERIC_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 RENAME COLUMN BIGINT_COL TO "temp_BIGINT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 ADD BIGINT_COL DATE;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMERIC_TO_DATE_TEST_60 SET BIGINT_COL = "temp_BIGINT_COL" WHERE "temp_BIGINT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 DROP COLUMN "temp_BIGINT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 RENAME COLUMN SMALLINT_COL TO "temp_SMALLINT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 ADD SMALLINT_COL TIME(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMERIC_TO_DATE_TEST_60 SET SMALLINT_COL = "temp_SMALLINT_COL" WHERE "temp_SMALLINT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 DROP COLUMN "temp_SMALLINT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 RENAME COLUMN INTEGER_COL TO "temp_INTEGER_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 ADD INTEGER_COL TIMESTAMP_NTZ(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMERIC_TO_DATE_TEST_60 SET INTEGER_COL = "temp_INTEGER_COL" WHERE "temp_INTEGER_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 DROP COLUMN "temp_INTEGER_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 RENAME COLUMN NUMERIC_COL TO "temp_NUMERIC_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 ADD NUMERIC_COL TIMESTAMP_LTZ(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMERIC_TO_DATE_TEST_60 SET NUMERIC_COL = "temp_NUMERIC_COL" WHERE "temp_NUMERIC_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 DROP COLUMN "temp_NUMERIC_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 RENAME COLUMN NUMBER_COL TO "temp_NUMBER_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 ADD NUMBER_COL TIMESTAMP_TZ(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.NUMERIC_TO_DATE_TEST_60 SET NUMBER_COL = "temp_NUMBER_COL" WHERE "temp_NUMBER_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.NUMERIC_TO_DATE_TEST_60 DROP COLUMN "temp_NUMBER_COL";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ORDER_CHECK27 ADD constraint CK_TOTAL_AMOUNT check (TOTAL_AMOUNT = QUANTITY * UNIT_PRICE) ENABLE NOVALIDATE;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.ORDER_CHECK28  RENAME TO DATAA_1."temp_ORDER_CHECK28";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.ORDER_CHECK28 (
ORDER_ID NUMBER(38,0),
UNIT_PRICE NUMBER(10,2),
constraint CK_UNIT_PRICE check (UNIT_PRICE >= 100.50)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.ORDER_CHECK28 (ORDER_ID,UNIT_PRICE)
SELECT ORDER_ID,UNIT_PRICE
FROM DATAA_1."temp_ORDER_CHECK28";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_ORDER_CHECK28";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.ORDER_CHECK29  RENAME TO DATAA_1."temp_ORDER_CHECK29";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.ORDER_CHECK29 (
ORDER_ID NUMBER(38,0),
UNIT_PRICE NUMBER(10,2),
constraint CK_UNIT_PRICE check (UNIT_PRICE IS NULL OR UNIT_PRICE > 0)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.ORDER_CHECK29 (ORDER_ID,UNIT_PRICE)
SELECT ORDER_ID,UNIT_PRICE
FROM DATAA_1."temp_ORDER_CHECK29";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_ORDER_CHECK29";
-----------------------------------------------------------------------------
UPDATE DATAA_1.ORDER_CHECK29 SET CK_UNIT_PRICE =  WHERE CK_UNIT_PRICE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.ORDER_CHECK29 ALTER CK_UNIT_PRICE SET NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.PK_ORDER_187 DROP CONSTRAINT "PK_EMP_PROJECT_LOCATION";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.PK_ORDER_187 ADD constraint "PK_EMP_PROJECT_LOCATION" primary key (EMP_ID, PROJECT_ID, LOCATION_ID);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 RENAME COLUMN VARCHAR_COL TO "temp_VARCHAR_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 ADD VARCHAR_COL VARCHAR(100) DEFAULT 'New VARCHAR';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_36 SET VARCHAR_COL = "temp_VARCHAR_COL" WHERE "temp_VARCHAR_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_36 DROP COLUMN "temp_VARCHAR_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 RENAME COLUMN VARCHAR_50_COL TO "temp_VARCHAR_50_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 ADD VARCHAR_50_COL NUMBER(10,2) DEFAULT 250.75;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_36 SET VARCHAR_50_COL = "temp_VARCHAR_50_COL" WHERE "temp_VARCHAR_50_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_36 DROP COLUMN "temp_VARCHAR_50_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 RENAME COLUMN CHAR_COL TO "temp_CHAR_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 ADD CHAR_COL VARCHAR(5) DEFAULT 'X';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_36 SET CHAR_COL = "temp_CHAR_COL" WHERE "temp_CHAR_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_36 DROP COLUMN "temp_CHAR_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 RENAME COLUMN CHAR_20_COL TO "temp_CHAR_20_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 ADD CHAR_20_COL VARCHAR(30) DEFAULT 'New CHAR Value';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_36 SET CHAR_20_COL = "temp_CHAR_20_COL" WHERE "temp_CHAR_20_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_36 DROP COLUMN "temp_CHAR_20_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 RENAME COLUMN CHARACTER_COL TO "temp_CHARACTER_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 ADD CHARACTER_COL VARCHAR(10) DEFAULT 'Y';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_36 SET CHARACTER_COL = "temp_CHARACTER_COL" WHERE "temp_CHARACTER_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_36 DROP COLUMN "temp_CHARACTER_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 RENAME COLUMN CHARACTER_30_COL TO "temp_CHARACTER_30_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 ADD CHARACTER_30_COL VARCHAR(40) DEFAULT 'New Character Value';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_36 SET CHARACTER_30_COL = "temp_CHARACTER_30_COL" WHERE "temp_CHARACTER_30_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_36 DROP COLUMN "temp_CHARACTER_30_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 RENAME COLUMN STRING_COL TO "temp_STRING_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 ADD STRING_COL VARCHAR(16777216) DEFAULT 'New String Value';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_36 SET STRING_COL = "temp_STRING_COL" WHERE "temp_STRING_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_36 DROP COLUMN "temp_STRING_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 RENAME COLUMN TEXT_COL TO "temp_TEXT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_36 ADD TEXT_COL VARCHAR(100) DEFAULT 'New Text Value';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_36 SET TEXT_COL = "temp_TEXT_COL" WHERE "temp_TEXT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_36 DROP COLUMN "temp_TEXT_COL";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.PK_SCENARIO_181 ADD constraint PK_EMP_CODE primary key (EMP_CODE);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.PRECISION_DATATYPE_26 RENAME COLUMN NUMBER_PRECISION_COL TO "temp_NUMBER_PRECISION_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.PRECISION_DATATYPE_26 ADD NUMBER_PRECISION_COL NUMBER(10,2)  DEFAULT 250.3;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.PRECISION_DATATYPE_26 SET NUMBER_PRECISION_COL = 0 WHERE NUMBER_PRECISION_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.PRECISION_DATATYPE_26 MODIFY NUMBER_PRECISION_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.PRECISION_DATATYPE_26 SET NUMBER_PRECISION_COL = "temp_NUMBER_PRECISION_COL" WHERE "temp_NUMBER_PRECISION_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.PRECISION_DATATYPE_26 DROP COLUMN "temp_NUMBER_PRECISION_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.PRECISION_DATATYPE_26 RENAME COLUMN NUMERIC_COL TO "temp_NUMERIC_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.PRECISION_DATATYPE_26 ADD NUMERIC_COL NUMBER(12,3)  DEFAULT 206.106;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.PRECISION_DATATYPE_26 SET NUMERIC_COL = 0 WHERE NUMERIC_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.PRECISION_DATATYPE_26 MODIFY NUMERIC_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.PRECISION_DATATYPE_26 SET NUMERIC_COL = "temp_NUMERIC_COL" WHERE "temp_NUMERIC_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.PRECISION_DATATYPE_26 DROP COLUMN "temp_NUMERIC_COL";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.PK_SCENARIO_186 ADD constraint PK_EMP_PROJECT_LOCATION primary key (EMP_ID, PROJECT_ID, LOCATION_ID);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 RENAME COLUMN ID TO "temp_ID";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 ADD ID VARCHAR(50);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.PRECISION_DATATYPE_27 SET ID = "temp_ID" WHERE "temp_ID" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 DROP COLUMN "temp_ID";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 RENAME COLUMN NUMBER_PRECISION_COL TO "temp_NUMBER_PRECISION_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 ADD NUMBER_PRECISION_COL FLOAT  DEFAULT 250.3;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.PRECISION_DATATYPE_27 SET NUMBER_PRECISION_COL = 0 WHERE NUMBER_PRECISION_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 MODIFY NUMBER_PRECISION_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.PRECISION_DATATYPE_27 SET NUMBER_PRECISION_COL = "temp_NUMBER_PRECISION_COL" WHERE "temp_NUMBER_PRECISION_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 DROP COLUMN "temp_NUMBER_PRECISION_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 RENAME COLUMN NUMERIC_COL TO "temp_NUMERIC_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 ADD NUMERIC_COL NUMBER(15,2)  DEFAULT 206.106;
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.PRECISION_DATATYPE_27 SET NUMERIC_COL = 0 WHERE NUMERIC_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 MODIFY NUMERIC_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.PRECISION_DATATYPE_27 SET NUMERIC_COL = "temp_NUMERIC_COL" WHERE "temp_NUMERIC_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.PRECISION_DATATYPE_27 DROP COLUMN "temp_NUMERIC_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 RENAME COLUMN VARCHAR_COL TO "temp_VARCHAR_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 ADD VARCHAR_COL VARCHAR(16777216) DEFAULT 'Default VARCHAR';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_34 SET VARCHAR_COL = "temp_VARCHAR_COL" WHERE "temp_VARCHAR_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_34 DROP COLUMN "temp_VARCHAR_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 RENAME COLUMN VARCHAR_50_COL TO "temp_VARCHAR_50_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 ADD VARCHAR_50_COL VARCHAR(50) DEFAULT 'Default VARCHAR 50';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_34 SET VARCHAR_50_COL = "temp_VARCHAR_50_COL" WHERE "temp_VARCHAR_50_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_34 DROP COLUMN "temp_VARCHAR_50_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 RENAME COLUMN CHAR_COL TO "temp_CHAR_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 ADD CHAR_COL VARCHAR(1) DEFAULT 'A';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_34 SET CHAR_COL = "temp_CHAR_COL" WHERE "temp_CHAR_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_34 DROP COLUMN "temp_CHAR_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 RENAME COLUMN CHAR_20_COL TO "temp_CHAR_20_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 ADD CHAR_20_COL VARCHAR(20) DEFAULT 'Default CHAR 20';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_34 SET CHAR_20_COL = "temp_CHAR_20_COL" WHERE "temp_CHAR_20_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_34 DROP COLUMN "temp_CHAR_20_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 RENAME COLUMN CHARACTER_COL TO "temp_CHARACTER_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 ADD CHARACTER_COL VARCHAR(1) DEFAULT 'B';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_34 SET CHARACTER_COL = "temp_CHARACTER_COL" WHERE "temp_CHARACTER_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_34 DROP COLUMN "temp_CHARACTER_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 RENAME COLUMN CHARACTER_30_COL TO "temp_CHARACTER_30_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 ADD CHARACTER_30_COL VARCHAR(30) DEFAULT 'Default Character 30';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_34 SET CHARACTER_30_COL = "temp_CHARACTER_30_COL" WHERE "temp_CHARACTER_30_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_34 DROP COLUMN "temp_CHARACTER_30_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 RENAME COLUMN STRING_COL TO "temp_STRING_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 ADD STRING_COL VARCHAR(16777216) DEFAULT 'Default String';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_34 SET STRING_COL = "temp_STRING_COL" WHERE "temp_STRING_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_34 DROP COLUMN "temp_STRING_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 RENAME COLUMN TEXT_COL TO "temp_TEXT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_34 ADD TEXT_COL VARCHAR(16777216) DEFAULT 'Default Text';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_34 SET TEXT_COL = "temp_TEXT_COL" WHERE "temp_TEXT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_34 DROP COLUMN "temp_TEXT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_35 RENAME COLUMN VARCHAR_COL TO "temp_VARCHAR_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_35 ADD VARCHAR_COL VARCHAR(100) DEFAULT 'Default VARCHAR';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_35 SET VARCHAR_COL = "temp_VARCHAR_COL" WHERE "temp_VARCHAR_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_35 DROP COLUMN "temp_VARCHAR_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_35 RENAME COLUMN VARCHAR_50_COL TO "temp_VARCHAR_50_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_35 ADD VARCHAR_50_COL NUMBER(10,2) DEFAULT 100.5;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_35 SET VARCHAR_50_COL = "temp_VARCHAR_50_COL" WHERE "temp_VARCHAR_50_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_35 DROP COLUMN "temp_VARCHAR_50_COL";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STRING_DATATYPE_35 ALTER CHAR_COL SET DATA TYPE VARCHAR(5);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STRING_DATATYPE_35 ALTER CHAR_20_COL SET DATA TYPE VARCHAR(30);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STRING_DATATYPE_35 ALTER CHARACTER_COL SET DATA TYPE VARCHAR(10);
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STRING_DATATYPE_35 ALTER CHARACTER_30_COL SET DATA TYPE VARCHAR(40);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_35 RENAME COLUMN TEXT_COL TO "temp_TEXT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_35 ADD TEXT_COL VARCHAR(100) DEFAULT 'Default Text';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_35 SET TEXT_COL = "temp_TEXT_COL" WHERE "temp_TEXT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_35 DROP COLUMN "temp_TEXT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 RENAME COLUMN VARCHAR_COL TO "temp_VARCHAR_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 ADD VARCHAR_COL VARCHAR(100);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_37 SET VARCHAR_COL = "temp_VARCHAR_COL" WHERE "temp_VARCHAR_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_37 DROP COLUMN "temp_VARCHAR_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 RENAME COLUMN VARCHAR_50_COL TO "temp_VARCHAR_50_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 ADD VARCHAR_50_COL NUMBER(10,2);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_37 SET VARCHAR_50_COL = "temp_VARCHAR_50_COL" WHERE "temp_VARCHAR_50_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_37 DROP COLUMN "temp_VARCHAR_50_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 RENAME COLUMN CHAR_COL TO "temp_CHAR_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 ADD CHAR_COL VARCHAR(5);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_37 SET CHAR_COL = "temp_CHAR_COL" WHERE "temp_CHAR_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_37 DROP COLUMN "temp_CHAR_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 RENAME COLUMN CHAR_20_COL TO "temp_CHAR_20_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 ADD CHAR_20_COL VARCHAR(30);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_37 SET CHAR_20_COL = "temp_CHAR_20_COL" WHERE "temp_CHAR_20_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_37 DROP COLUMN "temp_CHAR_20_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 RENAME COLUMN CHARACTER_COL TO "temp_CHARACTER_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 ADD CHARACTER_COL VARCHAR(10);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_37 SET CHARACTER_COL = "temp_CHARACTER_COL" WHERE "temp_CHARACTER_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_37 DROP COLUMN "temp_CHARACTER_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 RENAME COLUMN CHARACTER_30_COL TO "temp_CHARACTER_30_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 ADD CHARACTER_30_COL VARCHAR(40);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_37 SET CHARACTER_30_COL = "temp_CHARACTER_30_COL" WHERE "temp_CHARACTER_30_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_37 DROP COLUMN "temp_CHARACTER_30_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 RENAME COLUMN STRING_COL TO "temp_STRING_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 ADD STRING_COL VARCHAR(16777216);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_37 SET STRING_COL = "temp_STRING_COL" WHERE "temp_STRING_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_37 DROP COLUMN "temp_STRING_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 RENAME COLUMN TEXT_COL TO "temp_TEXT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.STRING_DATATYPE_37 ADD TEXT_COL VARCHAR(100);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.STRING_DATATYPE_37 SET TEXT_COL = "temp_TEXT_COL" WHERE "temp_TEXT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.STRING_DATATYPE_37 DROP COLUMN "temp_TEXT_COL";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STUDENT_CHECK11 DROP CONSTRAINT CK_STUDENT_AGE;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STUDENT_CHECK14 DROP CONSTRAINT CK_STUDENT_MARKS;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STUDENT_CHECK14 ADD constraint CK_MARKS check (MARKS BETWEEN 0 AND 100) ENABLE NOVALIDATE;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STUDENT_CHECK12 ADD COURSE_FEE NUMBER(10,2);
-----------------------------------------------------------------------------
UPDATE DATAA_1.STUDENT_CHECK12 SET COURSE_FEE = 0 WHERE COURSE_FEE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STUDENT_CHECK12 ALTER COURSE_FEE SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.STUDENT_CHECK12  RENAME TO DATAA_1."temp_STUDENT_CHECK12";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.STUDENT_CHECK12 (
STUDENT_ID NUMBER(38,0),
STUDENT_NAME VARCHAR(50),
MARKS NUMBER(38,0),
AGE NUMBER(38,0),
COURSE_FEE NUMBER(10,2) NOT NULL,
constraint CK_STUDENT_MARKS check (MARKS BETWEEN 0 AND 100),
constraint CK_STUDENT_AGE check (AGE >= 18),
check (COURSE_FEE > 0)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.STUDENT_CHECK12 (STUDENT_ID,STUDENT_NAME,MARKS,AGE,COURSE_FEE)
SELECT STUDENT_ID,STUDENT_NAME,MARKS,AGE,COURSE_FEE
FROM DATAA_1."temp_STUDENT_CHECK12";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_STUDENT_CHECK12";
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STUDENT_CHECK10 ADD constraint CK_STUDENT_MARKS check (MARKS BETWEEN 0 AND 100) ENABLE NOVALIDATE;
-----------------------------------------------------------------------------
ALTER TABLE DATAA_1.STUDENT_CHECK10 ADD constraint CK_STUDENT_AGE check (AGE >= 18) ENABLE NOVALIDATE;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE DATAA_1.STUDENT_CHECK_13  RENAME TO DATAA_1."temp_STUDENT_CHECK_13";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE DATAA_1.STUDENT_CHECK_13 (
STUDENT_ID NUMBER(38,0),
STUDENT_NAME VARCHAR(50),
MARKS NUMBER(38,0),
AGE NUMBER(38,0),
constraint CK_MARKS check (MARKS BETWEEN 0 AND 100),
constraint CK_AGE check (AGE >= 18)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO DATAA_1.STUDENT_CHECK_13 (STUDENT_ID,STUDENT_NAME,MARKS,AGE)
SELECT STUDENT_ID,STUDENT_NAME,MARKS,AGE
FROM DATAA_1."temp_STUDENT_CHECK_13";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE DATAA_1."temp_STUDENT_CHECK_13";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TEXT_TEST_58 RENAME COLUMN TEXT_COL TO "temp_TEXT_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TEXT_TEST_58 ADD TEXT_COL NUMBER(38,0);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TEXT_TEST_58 SET TEXT_COL = "temp_TEXT_COL" WHERE "temp_TEXT_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TEXT_TEST_58 DROP COLUMN "temp_TEXT_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE DATAA_1.TEXT_TEST_59  RENAME TO DATAA_1."temp_TEXT_TEST_59";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE DATAA_1.TEXT_TEST_59 (
ID NUMBER(38,0),
TEXT_COL_1 NUMBER(38,0),
TEXT_COL_2 NUMBER(38,0),
TEXT_COL_3 NUMBER(12,3),
TEXT_COL_4 NUMBER(38,0) autoincrement start 1 increment 1 noorder,
TEXT_COL_5 NUMBER(38,0) autoincrement start 1 increment 1 noorder
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO DATAA_1.TEXT_TEST_59 (ID,TEXT_COL_1,TEXT_COL_2,TEXT_COL_3,TEXT_COL_4,TEXT_COL_5)
SELECT ID,TEXT_COL_1,TEXT_COL_2,TEXT_COL_3,TEXT_COL_4,TEXT_COL_5
FROM DATAA_1."temp_TEXT_TEST_59";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE DATAA_1."temp_TEXT_TEST_59";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TEXT_TEST_59 RENAME COLUMN TEXT_COL_1 TO "temp_TEXT_COL_1";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TEXT_TEST_59 ADD TEXT_COL_1 NUMBER(38,0);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TEXT_TEST_59 SET TEXT_COL_1 = "temp_TEXT_COL_1" WHERE "temp_TEXT_COL_1" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TEXT_TEST_59 DROP COLUMN "temp_TEXT_COL_1";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TEXT_TEST_59 RENAME COLUMN TEXT_COL_2 TO "temp_TEXT_COL_2";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TEXT_TEST_59 ADD TEXT_COL_2 NUMBER(38,0);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TEXT_TEST_59 SET TEXT_COL_2 = "temp_TEXT_COL_2" WHERE "temp_TEXT_COL_2" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TEXT_TEST_59 DROP COLUMN "temp_TEXT_COL_2";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TEXT_TEST_59 RENAME COLUMN TEXT_COL_3 TO "temp_TEXT_COL_3";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TEXT_TEST_59 ADD TEXT_COL_3 NUMBER(12,3);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TEXT_TEST_59 SET TEXT_COL_3 = "temp_TEXT_COL_3" WHERE "temp_TEXT_COL_3" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TEXT_TEST_59 DROP COLUMN "temp_TEXT_COL_3";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TYPE_CAST_45 RENAME COLUMN PHONE_NUMBER TO "temp_PHONE_NUMBER";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TYPE_CAST_45 ADD PHONE_NUMBER BINARY(8388608);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TYPE_CAST_45 SET PHONE_NUMBER = "temp_PHONE_NUMBER" WHERE "temp_PHONE_NUMBER" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TYPE_CAST_45 DROP COLUMN "temp_PHONE_NUMBER";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TIME_TEST_57 RENAME COLUMN TIME_COL TO "temp_TIME_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TIME_TEST_57 ADD TIME_COL TIMESTAMP_TZ(9);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.TIME_TEST_57 SET TIME_COL = '1900-01-01 00:00:00 +00:00' WHERE TIME_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.TIME_TEST_57 MODIFY TIME_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TIME_TEST_57 SET TIME_COL = TO_TIMESTAMP_TZ(CURRENT_DATE() || ' ' || "temp_TIME_COL"::VARCHAR) WHERE "temp_TIME_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.TIME_TEST_57 DROP COLUMN "temp_TIME_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TIME_TEST_52 RENAME COLUMN DATE_COL TO "temp_DATE_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TIME_TEST_52 ADD DATE_COL TIMESTAMP_LTZ(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TIME_TEST_52 SET DATE_COL = "temp_DATE_COL" WHERE "temp_DATE_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TIME_TEST_52 DROP COLUMN "temp_DATE_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TIME_TEST_56 RENAME COLUMN TIME_COL TO "temp_TIME_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TIME_TEST_56 ADD TIME_COL TIMESTAMP_LTZ(9);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.TIME_TEST_56 SET TIME_COL = '1900-01-01 00:00:00' WHERE TIME_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.TIME_TEST_56 MODIFY TIME_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TIME_TEST_56 SET TIME_COL = TO_TIMESTAMP_LTZ(CURRENT_DATE() || ' ' || "temp_TIME_COL"::VARCHAR) WHERE "temp_TIME_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.TIME_TEST_56 DROP COLUMN "temp_TIME_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TYPE_CAST_44 RENAME COLUMN SALARY TO "temp_SALARY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TYPE_CAST_44 ADD SALARY BOOLEAN;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TYPE_CAST_44 SET SALARY = TRY_TO_BOOLEAN("temp_SALARY") WHERE "temp_SALARY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TYPE_CAST_44 DROP COLUMN "temp_SALARY";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TIME_TEST_49 RENAME COLUMN DATE_COL TO "temp_DATE_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TIME_TEST_49 ADD DATE_COL TIMESTAMP_NTZ(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TIME_TEST_49 SET DATE_COL = "temp_DATE_COL" WHERE "temp_DATE_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TIME_TEST_49 DROP COLUMN "temp_DATE_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TIME_TEST_55 RENAME COLUMN TIME_COL TO "temp_TIME_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TIME_TEST_55 ADD TIME_COL TIMESTAMP_NTZ(9);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE DATAA_1.TIME_TEST_55 SET TIME_COL = '1900-01-01 00:00:00' WHERE TIME_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE DATAA_1.TIME_TEST_55 MODIFY TIME_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TIME_TEST_55 SET TIME_COL = TO_TIMESTAMP_NTZ(CURRENT_DATE() || ' ' || "temp_TIME_COL"::VARCHAR) WHERE "temp_TIME_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE DATAA_1.TIME_TEST_55 DROP COLUMN "temp_TIME_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TIME_TEST_46 RENAME COLUMN TIME_COL TO "temp_TIME_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TIME_TEST_46 ADD TIME_COL TIMESTAMP_TZ(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TIME_TEST_46 SET TIME_COL = TO_TIMESTAMP_TZ(CURRENT_DATE() || ' ' || "temp_TIME_COL"::VARCHAR) WHERE "temp_TIME_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TIME_TEST_46 DROP COLUMN "temp_TIME_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TIME_TEST_51 RENAME COLUMN DATE_COL TO "temp_DATE_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TIME_TEST_51 ADD DATE_COL TIMESTAMP_NTZ(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TIME_TEST_51 SET DATE_COL = "temp_DATE_COL" WHERE "temp_DATE_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TIME_TEST_51 DROP COLUMN "temp_DATE_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TIME_TEST_47 RENAME COLUMN TIME_COL TO "temp_TIME_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TIME_TEST_47 ADD TIME_COL TIMESTAMP_NTZ(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TIME_TEST_47 SET TIME_COL = TO_TIMESTAMP_NTZ(CURRENT_DATE() || ' ' || "temp_TIME_COL"::VARCHAR) WHERE "temp_TIME_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TIME_TEST_47 DROP COLUMN "temp_TIME_COL";
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_20.sql.TIMESTAMP_NTZ_COL.
-----------------------------------------------------------------------------
--Step 1: Update NULL value to NOT NULL 
UPDATE DATAA_1.TIMESTAMP_20 SET TIMESTAMP_NTZ_COL = '1900-01-01 00:00:00' WHERE TIMESTAMP_NTZ_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 2: Set the column to NOT NULL
ALTER TABLE DATAA_1.TIMESTAMP_20 MODIFY TIMESTAMP_NTZ_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_20.sql.TIMESTAMP_LTZ_COL.
-----------------------------------------------------------------------------
--Step 1: Update NULL value to NOT NULL 
UPDATE DATAA_1.TIMESTAMP_20 SET TIMESTAMP_LTZ_COL = '1900-01-01 00:00:00' WHERE TIMESTAMP_LTZ_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 2: Set the column to NOT NULL
ALTER TABLE DATAA_1.TIMESTAMP_20 MODIFY TIMESTAMP_LTZ_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_20.sql.TIMESTAMP_TZ_COL.
-----------------------------------------------------------------------------
--Step 1: Update NULL value to NOT NULL 
UPDATE DATAA_1.TIMESTAMP_20 SET TIMESTAMP_TZ_COL = '1900-01-01 00:00:00 +00:00' WHERE TIMESTAMP_TZ_COL  IS NULL;
-----------------------------------------------------------------------------
--Step 2: Set the column to NOT NULL
ALTER TABLE DATAA_1.TIMESTAMP_20 MODIFY TIMESTAMP_TZ_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_21.sql.TIMESTAMP_NTZ_COL.
-- Add a new column with the original column's name
ALTER TABLE DATAA_1.TIMESTAMP_21 ADD TIMESTAMP_NTZ_COL TIMESTAMP_NTZ(9);
-----------------------------------------------------------------------------
--Update NULL value to NOT NULL 
UPDATE DATAA_1.TIMESTAMP_21 SET TIMESTAMP_NTZ_COL = '1900-01-01 00:00:00' WHERE TIMESTAMP_NTZ_COL  IS NULL;
-----------------------------------------------------------------------------
--Set the column to NOT NULL
ALTER TABLE DATAA_1.TIMESTAMP_21 MODIFY TIMESTAMP_NTZ_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_21.sql.TIMESTAMP_LTZ_COL.
-- Add a new column with the original column's name
ALTER TABLE DATAA_1.TIMESTAMP_21 ADD TIMESTAMP_LTZ_COL TIMESTAMP_LTZ(9);
-----------------------------------------------------------------------------
--Update NULL value to NOT NULL 
UPDATE DATAA_1.TIMESTAMP_21 SET TIMESTAMP_LTZ_COL = '1900-01-01 00:00:00' WHERE TIMESTAMP_LTZ_COL  IS NULL;
-----------------------------------------------------------------------------
--Set the column to NOT NULL
ALTER TABLE DATAA_1.TIMESTAMP_21 MODIFY TIMESTAMP_LTZ_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for TIMESTAMP_21.sql.TIMESTAMP_TZ_COL.
-- Add a new column with the original column's name
ALTER TABLE DATAA_1.TIMESTAMP_21 ADD TIMESTAMP_TZ_COL TIMESTAMP_TZ(9);
-----------------------------------------------------------------------------
--Update NULL value to NOT NULL 
UPDATE DATAA_1.TIMESTAMP_21 SET TIMESTAMP_TZ_COL = '1900-01-01 00:00:00 +00:00' WHERE TIMESTAMP_TZ_COL  IS NULL;
-----------------------------------------------------------------------------
--Set the column to NOT NULL
ALTER TABLE DATAA_1.TIMESTAMP_21 MODIFY TIMESTAMP_TZ_COL SET NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TYPE_CAST_42 RENAME COLUMN SALARY TO "temp_SALARY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TYPE_CAST_42 ADD SALARY NUMBER(10,2);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TYPE_CAST_42 SET SALARY = "temp_SALARY" WHERE "temp_SALARY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TYPE_CAST_42 DROP COLUMN "temp_SALARY";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TIME_TEST_54 RENAME COLUMN TIME_COL TO "temp_TIME_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TIME_TEST_54 ADD TIME_COL DATE;
-----------------------------------------------------------------------------
-- Step 3: Drop the temporary column
ALTER TABLE DATAA_1.TIME_TEST_54 DROP COLUMN "temp_TIME_COL";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TYPE_CAST_43 RENAME COLUMN SALARY TO "temp_SALARY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TYPE_CAST_43 ADD SALARY NUMBER(15,3);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TYPE_CAST_43 SET SALARY = "temp_SALARY" WHERE "temp_SALARY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TYPE_CAST_43 DROP COLUMN "temp_SALARY";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE DATAA_1.TIME_TEST_50 RENAME COLUMN DATE_COL TO "temp_DATE_COL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE DATAA_1.TIME_TEST_50 ADD DATE_COL TIMESTAMP_TZ(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE DATAA_1.TIME_TEST_50 SET DATE_COL = "temp_DATE_COL" WHERE "temp_DATE_COL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE DATAA_1.TIME_TEST_50 DROP COLUMN "temp_DATE_COL";