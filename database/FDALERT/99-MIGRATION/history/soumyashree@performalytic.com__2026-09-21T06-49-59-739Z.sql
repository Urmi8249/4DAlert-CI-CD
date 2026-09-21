ALTER TABLE SOUMYAA_1.A53 ADD constraint UQ_HOTEL_BOOKING_ID unique (BOOKING_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.A54 DROP CONSTRAINT UQ_HOTEL_BOOKING_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.A54 DROP COLUMN BOOKING_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.A55 DROP CONSTRAINT "UQ_HOTEL_EMAIL";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.A55 DROP COLUMN EMAIL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.A55 ADD CUST_EMAIL VARCHAR(100);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.A55 ADD constraint UQ_HOTEL_EMAIL unique (CUST_EMAIL);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.ARRAY_VARCHAR_SRC RENAME COLUMN DETAILS TO "temp_DETAILS";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.ARRAY_VARCHAR_SRC ADD DETAILS VARCHAR(16777216);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.ARRAY_VARCHAR_SRC SET DETAILS = TO_VARCHAR(TO_JSON("temp_DETAILS")) WHERE "temp_DETAILS" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.ARRAY_VARCHAR_SRC DROP COLUMN "temp_DETAILS";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.ARRAY_VARIANT_SRC RENAME COLUMN DETAILS TO "temp_DETAILS";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.ARRAY_VARIANT_SRC ADD DETAILS VARIANT;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.ARRAY_VARIANT_SRC SET DETAILS = "temp_DETAILS" WHERE "temp_DETAILS" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.ARRAY_VARIANT_SRC DROP COLUMN "temp_DETAILS";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_109  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_109";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_109 (
EMP_ID NUMBER(10,0) autoincrement start 100 increment 10 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_109 (EMP_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMP_ID,EMP_NAME,DEPARTMENT,SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_109";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_109";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_110  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_110";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_110 (
EMP_ID NUMBER(10,0) autoincrement start 200 increment 5 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_110 (EMP_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMP_ID,EMP_NAME,DEPARTMENT,SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_110";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_110";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_114  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_114";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_114 (
EMP_ID NUMBER(10,0) NOT NULL autoincrement start 100 increment 5 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2),
unique (EMP_ID)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_114 (EMP_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMP_ID,EMP_NAME,DEPARTMENT,SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_114";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_114";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_114 ADD unique (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_115 DROP CONSTRAINT "UK_AUTO_INCREMENT_115_EMP_ID";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_115 DROP COLUMN EMP_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_115 ADD EMPLOYEE_ID NUMBER(10,0);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_115  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_115";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_115 (
EMPLOYEE_ID NUMBER(10,0) autoincrement start 100 increment 5 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2),
constraint UK_AUTO_INCREMENT_115_EMP_ID unique (EMPLOYEE_ID)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_115 (EMPLOYEE_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMPLOYEE_ID, EMP_NAME, DEPARTMENT, SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_115";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed)
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_115";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_115 ADD constraint UK_AUTO_INCREMENT_115_EMP_ID unique (EMPLOYEE_ID);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_116  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_116";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_116 (
EMP_ID NUMBER(10,0) NOT NULL autoincrement start 100 increment 5 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2),
primary key (EMP_ID)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_116 (EMP_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMP_ID,EMP_NAME,DEPARTMENT,SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_116";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_116";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_116 ADD primary key (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_117 ALTER EMP_ID DROP DEFAULT;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_118 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_118 ALTER EMP_ID DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_118 ADD unique (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_120 DROP unique (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_119 ALTER EMP_ID DROP DEFAULT;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_122  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_122";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_122 (
EMP_ID NUMBER(10,0) NOT NULL autoincrement start 100 increment 5 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2),
primary key (EMP_ID)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_122 (EMP_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMP_ID,EMP_NAME,DEPARTMENT,SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_122";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_122";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_152  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_152";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_152 (
EMP_ID NUMBER(10,0) autoincrement start 200 increment 10 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2),
check (EMP_ID >= 200)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_152 (EMP_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMP_ID,EMP_NAME,DEPARTMENT,SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_152";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_152";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_152  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_152";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_152 (
EMP_ID NUMBER(10,0) autoincrement start 200 increment 10 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2),
check (EMP_ID >= 200)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_152 (EMP_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMP_ID,EMP_NAME,DEPARTMENT,SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_152";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_152";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_153 DROP COLUMN EMP_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_153 ADD EMPLOYEE_ID NUMBER(10,0);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_153  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_153";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_153 (
EMPLOYEE_ID NUMBER(10,0) autoincrement start 100 increment 5 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2),
check (EMPLOYEE_ID >= 100)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_153 (EMPLOYEE_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMPLOYEE_ID, EMP_NAME, DEPARTMENT, SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_153";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed)
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_153";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_153  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_153";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_153 (
EMPLOYEE_ID NUMBER(10,0) autoincrement start 100 increment 5 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2),
check (EMPLOYEE_ID >= 100)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_153 (EMPLOYEE_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMPLOYEE_ID,EMP_NAME,DEPARTMENT,SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_153";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_153";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_156 ADD constraint UQ_EMP_ID_NAME unique (EMP_ID, EMP_NAME);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.AUTO_INCREMENT_NEW  RENAME TO SOUMYAA_1."temp_AUTO_INCREMENT_NEW";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.AUTO_INCREMENT_NEW (
EMP_ID NUMBER(10,0) NOT NULL autoincrement start 100 increment 5 noorder,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
SALARY NUMBER(10,2),
unique (EMP_ID)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.AUTO_INCREMENT_NEW (EMP_ID,EMP_NAME,DEPARTMENT,SALARY)
SELECT EMP_ID,EMP_NAME,DEPARTMENT,SALARY
FROM SOUMYAA_1."temp_AUTO_INCREMENT_NEW";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_AUTO_INCREMENT_NEW";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.BINARY_VARCHAR_SRC RENAME COLUMN DATA_VALUE TO "temp_DATA_VALUE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.BINARY_VARCHAR_SRC ADD DATA_VALUE VARCHAR(16777216);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.BINARY_VARCHAR_SRC SET DATA_VALUE = TO_VARCHAR("temp_DATA_VALUE") WHERE "temp_DATA_VALUE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.BINARY_VARCHAR_SRC DROP COLUMN "temp_DATA_VALUE";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.BOOLEAN_VARCHAR_SRC RENAME COLUMN IS_ACTIVE TO "temp_IS_ACTIVE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.BOOLEAN_VARCHAR_SRC ADD IS_ACTIVE VARCHAR(16777216);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.BOOLEAN_VARCHAR_SRC SET IS_ACTIVE = "temp_IS_ACTIVE" WHERE "temp_IS_ACTIVE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.BOOLEAN_VARCHAR_SRC DROP COLUMN "temp_IS_ACTIVE";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CLUSTER_81 DROP CLUSTERING KEY;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CLUSTER_81 CLUSTER BY (DEPARTMENT, CITY);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CLUSTER_82 DROP CLUSTERING KEY;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COLUMN_LVL_UNIQUE_57 DROP unique (EMPLOYEE_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COLUMN_LVL_UNIQUE_57 DROP COLUMN EMPLOYEE_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COLUMN_LVL_UNIQUE_57 ADD EMP_ID NUMBER(10,0);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COLUMN_LVL_UNIQUE_57 ADD unique (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COLUMN_LVL_UNIQUE_58 ALTER EMAIL SET DATA TYPE VARCHAR(150);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COLUMN_LVL_UNIQUE_59 DROP unique (PHONE);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COLUMN_LVL_UNIQUE_59 DROP COLUMN PHONE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_97 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_96 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_96 DROP COLUMN EMP_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_96 ADD EMPLOYEE_ID NUMBER(38,0);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.COMPOSITE_PK_96 SET EMPLOYEE_ID = 0 WHERE EMPLOYEE_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_96 ALTER EMPLOYEE_ID SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_96 ADD primary key (EMPLOYEE_ID, PROJECT_ID);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_66 RENAME COLUMN EMP_ID_NEW TO "temp_EMP_ID_NEW";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_66 ADD EMP_ID_NEW VARCHAR(10);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE SOUMYAA_1.COMPOSITE_PK_TEST_66 SET EMP_ID_NEW = '' WHERE EMP_ID_NEW  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_66 MODIFY EMP_ID_NEW SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.COMPOSITE_PK_TEST_66 SET EMP_ID_NEW = "temp_EMP_ID_NEW" WHERE "temp_EMP_ID_NEW" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_66 DROP COLUMN "temp_EMP_ID_NEW";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_66 RENAME COLUMN PROJECT_ID_NEW TO "temp_PROJECT_ID_NEW";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_66 ADD PROJECT_ID_NEW VARCHAR(12);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE SOUMYAA_1.COMPOSITE_PK_TEST_66 SET PROJECT_ID_NEW = '' WHERE PROJECT_ID_NEW  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_66 MODIFY PROJECT_ID_NEW SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.COMPOSITE_PK_TEST_66 SET PROJECT_ID_NEW = "temp_PROJECT_ID_NEW" WHERE "temp_PROJECT_ID_NEW" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_66 DROP COLUMN "temp_PROJECT_ID_NEW";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_66 ADD constraint PK_EMP_PROJECT primary key (EMP_ID_NEW, PROJECT_ID_NEW);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_23 ALTER SUBJECT_NAME DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_23 ALTER TRAINER_NAME DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_72 DROP CONSTRAINT PK_EMP_PROJECT;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_72 ALTER EMP_ID_NEW DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COMPOSITE_PK_TEST_72 ALTER PROJECT_ID_NEW DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_24 DROP COLUMN SUBJECT_NAME;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_24 ADD SUBJECT_TITLE VARCHAR(100);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.COURSE_DETAILS_24 SET SUBJECT_TITLE = '' WHERE SUBJECT_TITLE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_24 ALTER SUBJECT_TITLE SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_25 ADD TRAINING_ID NUMBER(38,0);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.COURSE_DETAILS_25 SET TRAINING_ID = 0 WHERE TRAINING_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_25 ALTER TRAINING_ID SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_25 ADD TRAINING_MODE VARCHAR(50);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.COURSE_DETAILS_25 SET TRAINING_MODE = '' WHERE TRAINING_MODE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_25 ALTER TRAINING_MODE SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_28 ALTER SUBJECT_TITLE DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_28 ALTER TRAINER_NAME DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_28 ALTER TRAINING_MODE DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_26 DROP COLUMN TRAINING_ID;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_27 RENAME COLUMN SUBJECT_TITLE TO "temp_SUBJECT_TITLE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_27 ADD SUBJECT_TITLE VARCHAR(100)  DEFAULT 'SQL';
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE SOUMYAA_1.COURSE_DETAILS_27 SET SUBJECT_TITLE = '' WHERE SUBJECT_TITLE  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_27 MODIFY SUBJECT_TITLE SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.COURSE_DETAILS_27 SET SUBJECT_TITLE = "temp_SUBJECT_TITLE" WHERE "temp_SUBJECT_TITLE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_27 DROP COLUMN "temp_SUBJECT_TITLE";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_29 RENAME COLUMN SUBJECT_TITLE TO "temp_SUBJECT_TITLE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_29 ADD SUBJECT_TITLE VARCHAR(50) DEFAULT 'SQL';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.COURSE_DETAILS_29 SET SUBJECT_TITLE = "temp_SUBJECT_TITLE" WHERE "temp_SUBJECT_TITLE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_29 DROP COLUMN "temp_SUBJECT_TITLE";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_29 RENAME COLUMN TRAINER_NAME TO "temp_TRAINER_NAME";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_29 ADD TRAINER_NAME VARCHAR(50);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.COURSE_DETAILS_29 SET TRAINER_NAME = "temp_TRAINER_NAME" WHERE "temp_TRAINER_NAME" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_29 DROP COLUMN "temp_TRAINER_NAME";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_29 RENAME COLUMN TRAINING_MODE TO "temp_TRAINING_MODE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_29 ADD TRAINING_MODE VARCHAR(20);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.COURSE_DETAILS_29 SET TRAINING_MODE = "temp_TRAINING_MODE" WHERE "temp_TRAINING_MODE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.COURSE_DETAILS_29 DROP COLUMN "temp_TRAINING_MODE";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.CUSTOMER_42  RENAME TO SOUMYAA_1."temp_CUSTOMER_42";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.CUSTOMER_42 (
CUSTOMER_ID_NEW NUMBER(10,0) autoincrement start 2 increment 2 noorder,
CUSTOMER_NAME VARCHAR(100),
EMAIL VARCHAR(150),
PHONE_NUMBER VARCHAR(15)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.CUSTOMER_42 (CUSTOMER_ID_NEW,CUSTOMER_NAME,EMAIL,PHONE_NUMBER)
SELECT CUSTOMER_ID_NEW,CUSTOMER_NAME,EMAIL,PHONE_NUMBER
FROM SOUMYAA_1."temp_CUSTOMER_42";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_CUSTOMER_42";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_13 DROP COLUMN CUSTOMER_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_13 ADD CUSTOMER_ID_NEW NUMBER(38,0);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup
ALTER TABLE SOUMYAA_1.CUSTOMER_13  RENAME TO SOUMYAA_1."temp_CUSTOMER_13";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure
create or replace TABLE SOUMYAA_1.CUSTOMER_13 (
CUSTOMER_ID_NEW NUMBER(38,0) autoincrement start 2 increment 2 noorder,
CUSTOMER_NAME VARCHAR(100),
EMAIL VARCHAR(150),
PHONE_NUMBER VARCHAR(15)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table
INSERT INTO SOUMYAA_1.CUSTOMER_13 (CUSTOMER_ID_NEW,CUSTOMER_NAME,EMAIL,PHONE_NUMBER)
SELECT CUSTOMER_ID_NEW, CUSTOMER_NAME, EMAIL, PHONE_NUMBER
FROM SOUMYAA_1."temp_CUSTOMER_13";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed)
DROP TABLE SOUMYAA_1."temp_CUSTOMER_13";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.CUSTOMER_12  RENAME TO SOUMYAA_1."temp_CUSTOMER_12";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.CUSTOMER_12 (
CUSTOMER_ID NUMBER(38,0) autoincrement start 2 increment 2 noorder,
CUSTOMER_NAME VARCHAR(100),
EMAIL VARCHAR(150),
PHONE_NUMBER VARCHAR(15)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.CUSTOMER_12 (CUSTOMER_ID,CUSTOMER_NAME,EMAIL,PHONE_NUMBER)
SELECT CUSTOMER_ID,CUSTOMER_NAME,EMAIL,PHONE_NUMBER
FROM SOUMYAA_1."temp_CUSTOMER_12";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_CUSTOMER_12";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_37 ADD PRODUCT_ID NUMBER(38,0);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup
ALTER TABLE SOUMYAA_1.CUSTOMER_37  RENAME TO SOUMYAA_1."temp_CUSTOMER_37";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure
create or replace TABLE SOUMYAA_1.CUSTOMER_37 (
CUSTOMER_ID_NEW NUMBER(38,0) autoincrement start 2 increment 2 noorder,
PRODUCT_ID NUMBER(38,0) autoincrement start 3 increment 1 noorder,
CUSTOMER_NAME VARCHAR(100),
EMAIL VARCHAR(150),
PHONE_NUMBER VARCHAR(15)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table
INSERT INTO SOUMYAA_1.CUSTOMER_37 (CUSTOMER_ID_NEW,PRODUCT_ID,CUSTOMER_NAME,EMAIL,PHONE_NUMBER)
SELECT CUSTOMER_ID_NEW, PRODUCT_ID, CUSTOMER_NAME, EMAIL, PHONE_NUMBER
FROM SOUMYAA_1."temp_CUSTOMER_37";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed)
DROP TABLE SOUMYAA_1."temp_CUSTOMER_37";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_43 DROP COLUMN PRODUCT_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_44 ALTER CUSTOMER_ID_NEW DROP DEFAULT;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_SRC_176 ALTER CUSTOMER_EMAIL SET DATA TYPE VARCHAR(200);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT ADD constraint UQ_CUSTOMER_EMAIL unique (CUSTOMER_EMAIL);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_161 DROP CONSTRAINT UQ_CUSTOMER_EMAIL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_161 ADD constraint UQ_CUSTOMER_EMAIL_PHONE unique (CUSTOMER_EMAIL, CUSTOMER_PHONE);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_162 DROP CONSTRAINT "UQ_CUSTOMER_EMAIL_PHONE";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_162 ADD constraint UQ_CUSTOMER_EMAIL_PHONE unique (CUSTOMER_EMAIL);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_177 DROP CONSTRAINT "UQ_CUSTOMER_EMAIL";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_177 DROP CONSTRAINT "UQ_CUSTOMER_PHONE";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_177 ADD constraint "UQ_CUSTOMER_EMAIL" unique (CUSTOMER_PHONE);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_177 ADD constraint "UQ_CUSTOMER_PHONE" unique (CUSTOMER_EMAIL);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEFAULT_10 DROP COLUMN STATUS;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.DEFAULT_8 RENAME COLUMN DEPARTMENT TO "temp_DEPARTMENT";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.DEFAULT_8 ADD DEPARTMENT VARCHAR(50) DEFAULT 'HR';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.DEFAULT_8 SET DEPARTMENT = "temp_DEPARTMENT" WHERE "temp_DEPARTMENT" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.DEFAULT_8 DROP COLUMN "temp_DEPARTMENT";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.DEFAULT_8 RENAME COLUMN CITY TO "temp_CITY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.DEFAULT_8 ADD CITY VARCHAR(50) DEFAULT 'soro';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.DEFAULT_8 SET CITY = "temp_CITY" WHERE "temp_CITY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.DEFAULT_8 DROP COLUMN "temp_CITY";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.DEFAULT_8 RENAME COLUMN SALARY TO "temp_SALARY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.DEFAULT_8 ADD SALARY NUMBER(10,2) DEFAULT 15000;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.DEFAULT_8 SET SALARY = "temp_SALARY" WHERE "temp_SALARY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.DEFAULT_8 DROP COLUMN "temp_SALARY";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_178 DROP CONSTRAINT UQ_CUSTOMER_EMAIL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_178 DROP CONSTRAINT UQ_CUSTOMER_PHONE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.CUSTOMER_TGT_178 ADD constraint UQ_CUSTOMER_EMAIL_PHONE unique (CUSTOMER_EMAIL, CUSTOMER_PHONE);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEFAULT_9 DROP COLUMN SALARY;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEFAULT_9 ADD EMP_SAL NUMBER(10,2) DEFAULT 15000;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEPARTMENT_74 DROP CONSTRAINT "PK_DEPARTMENT";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEPARTMENT_74 DROP COLUMN DEPT_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEPARTMENT_74 ADD DEPT_ID_NEW NUMBER(38,0);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.DEPARTMENT_74 SET DEPT_ID_NEW = 0 WHERE DEPT_ID_NEW IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEPARTMENT_74 ALTER DEPT_ID_NEW SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEPARTMENT_74 ADD constraint PK_DEPARTMENT primary key (DEPT_ID_NEW);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TYPECAST_2 RENAME COLUMN JOIN_TIME TO "temp_JOIN_TIME";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TYPECAST_2 ADD JOIN_TIME VARCHAR(100);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TYPECAST_2 SET JOIN_TIME = "temp_JOIN_TIME" WHERE "temp_JOIN_TIME" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TYPECAST_2 DROP COLUMN "temp_JOIN_TIME";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.VARIANT_ARRAY_SRC RENAME COLUMN DETAILS TO "temp_DETAILS";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.VARIANT_ARRAY_SRC ADD DETAILS ARRAY;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.VARIANT_ARRAY_SRC SET DETAILS = "temp_DETAILS" WHERE "temp_DETAILS" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.VARIANT_ARRAY_SRC DROP COLUMN "temp_DETAILS";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TYPECASTING_ALL_91 RENAME COLUMN JOIN_DATE TO "temp_JOIN_DATE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TYPECASTING_ALL_91 ADD JOIN_DATE VARCHAR(16777216);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TYPECASTING_ALL_91 SET JOIN_DATE = "temp_JOIN_DATE" WHERE "temp_JOIN_DATE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TYPECASTING_ALL_91 DROP COLUMN "temp_JOIN_DATE";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TYPECAST_1 RENAME COLUMN JOIN_DATE TO "temp_JOIN_DATE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TYPECAST_1 ADD JOIN_DATE DATE;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TYPECAST_1 SET JOIN_DATE = "temp_JOIN_DATE" WHERE "temp_JOIN_DATE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TYPECAST_1 DROP COLUMN "temp_JOIN_DATE";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.VARIANT_OBJECT_SRC_136 RENAME COLUMN DETAILS TO "temp_DETAILS";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.VARIANT_OBJECT_SRC_136 ADD DETAILS VARIANT;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.VARIANT_OBJECT_SRC_136 SET DETAILS = "temp_DETAILS" WHERE "temp_DETAILS" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.VARIANT_OBJECT_SRC_136 DROP COLUMN "temp_DETAILS";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TYPECASTING_69 RENAME COLUMN STATUS TO "temp_STATUS";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TYPECASTING_69 ADD STATUS BOOLEAN;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TYPECASTING_69 SET STATUS = TRY_TO_BOOLEAN("temp_STATUS") WHERE "temp_STATUS" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TYPECASTING_69 DROP COLUMN "temp_STATUS";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TYPECASTING_93 RENAME COLUMN CREATED_AT TO "temp_CREATED_AT";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TYPECASTING_93 ADD CREATED_AT DATE;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TYPECASTING_93 SET CREATED_AT = "temp_CREATED_AT" WHERE "temp_CREATED_AT" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TYPECASTING_93 DROP COLUMN "temp_CREATED_AT";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TYPECASTING_71 RENAME COLUMN AGE TO "temp_AGE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TYPECASTING_71 ADD AGE NUMBER(38,0);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TYPECASTING_71 SET AGE = "temp_AGE" WHERE "temp_AGE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TYPECASTING_71 DROP COLUMN "temp_AGE";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TYPECASTING_70 RENAME COLUMN PHONE_NUMBER TO "temp_PHONE_NUMBER";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TYPECASTING_70 ADD PHONE_NUMBER BINARY(8388608);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TYPECASTING_70 SET PHONE_NUMBER = "temp_PHONE_NUMBER" WHERE "temp_PHONE_NUMBER" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TYPECASTING_70 DROP COLUMN "temp_PHONE_NUMBER";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.VARIANT_OBJECT_SRC RENAME COLUMN DETAILS TO "temp_DETAILS";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.VARIANT_OBJECT_SRC ADD DETAILS OBJECT;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.VARIANT_OBJECT_SRC SET DETAILS = "temp_DETAILS" WHERE "temp_DETAILS" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.VARIANT_OBJECT_SRC DROP COLUMN "temp_DETAILS";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TYPECASTING_ALL_89 RENAME COLUMN EMP_ID TO "temp_EMP_ID";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TYPECASTING_ALL_89 ADD EMP_ID VARCHAR(16777216);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TYPECASTING_ALL_89 SET EMP_ID = "temp_EMP_ID" WHERE "temp_EMP_ID" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TYPECASTING_ALL_89 DROP COLUMN "temp_EMP_ID";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TYPECASTING_68 RENAME COLUMN SALARY TO "temp_SALARY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TYPECASTING_68 ADD SALARY NUMBER(10,2);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TYPECASTING_68 SET SALARY = "temp_SALARY" WHERE "temp_SALARY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TYPECASTING_68 DROP COLUMN "temp_SALARY";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE SOUMYAA_1.EMPLOYEE_CHECK_IN_175  RENAME TO SOUMYAA_1."temp_EMPLOYEE_CHECK_IN_175";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE SOUMYAA_1.EMPLOYEE_CHECK_IN_175 (
EMP_ID NUMBER(10,0) NOT NULL,
EMP_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50),
STATUS VARCHAR(20),
CITY VARCHAR(50),
constraint CHK_DEPARTMENT check (DEPARTMENT IN ('IT', 'Developer', 'SALES', 'Analyst')),
constraint CHK_STATUS check (STATUS IN ('ACTIVE', 'INACTIVE')),
constraint CHK_CITY check (CITY IN ('Soro', 'Cuttack', 'Pune', 'Bangalore')),
constraint PK_EMPLOYEE_CHECK_IN primary key (EMP_ID)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO SOUMYAA_1.EMPLOYEE_CHECK_IN_175 (EMP_ID,EMP_NAME,DEPARTMENT,STATUS,CITY)
SELECT EMP_ID,EMP_NAME,DEPARTMENT,STATUS,CITY
FROM SOUMYAA_1."temp_EMPLOYEE_CHECK_IN_175";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE SOUMYAA_1."temp_EMPLOYEE_CHECK_IN_175";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_134 DROP COLUMN IS_PERMANENT;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEPARTMENT_76 DROP CONSTRAINT "PK_DEPARTMENT";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEPARTMENT_76 ALTER DEPT_ID_NEW DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEPARTMENT_76 ADD NEW_ID NUMBER(38,0);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.DEPARTMENT_76 SET NEW_ID = 0 WHERE NEW_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEPARTMENT_76 ALTER NEW_ID SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.DEPARTMENT_76 ADD constraint PK_DEPARTMENT primary key (NEW_ID);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.EMPLOYEE_121 RENAME COLUMN DEPARTMENT TO "temp_DEPARTMENT";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_121 ADD DEPARTMENT VARCHAR(50) DEFAULT 'HR';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.EMPLOYEE_121 SET DEPARTMENT = "temp_DEPARTMENT" WHERE "temp_DEPARTMENT" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.EMPLOYEE_121 DROP COLUMN "temp_DEPARTMENT";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_75 DROP CONSTRAINT FK_EMPLOYEE_DEPARTMENT;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_129 ADD STATUS VARCHAR(20) DEFAULT 'ACTIVE';
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TIME_TIMESTAMP_SRC RENAME COLUMN LOGIN_TIME TO "temp_LOGIN_TIME";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TIME_TIMESTAMP_SRC ADD LOGIN_TIME TIMESTAMP_NTZ(9);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TIME_TIMESTAMP_SRC SET LOGIN_TIME = TO_TIMESTAMP_NTZ(CURRENT_DATE() || ' ' || "temp_LOGIN_TIME"::VARCHAR) WHERE "temp_LOGIN_TIME" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TIME_TIMESTAMP_SRC DROP COLUMN "temp_LOGIN_TIME";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.TRAINING_PROGRAM_39  RENAME TO SOUMYAA_1."temp_TRAINING_PROGRAM_39";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.TRAINING_PROGRAM_39 (
PROGRAM_ID NUMBER(38,0) autoincrement start 100 increment 1 noorder,
PROGRAM_NAME VARCHAR(100) NOT NULL,
INSTRUCTOR_NAME VARCHAR(100) NOT NULL,
PROGRAM_TYPE VARCHAR(50) DEFAULT 'ONLINE',
DURATION_WEEKS NUMBER(38,0) DEFAULT 8
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.TRAINING_PROGRAM_39 (PROGRAM_ID,PROGRAM_NAME,INSTRUCTOR_NAME,PROGRAM_TYPE,DURATION_WEEKS)
SELECT PROGRAM_ID,PROGRAM_NAME,INSTRUCTOR_NAME,PROGRAM_TYPE,DURATION_WEEKS
FROM SOUMYAA_1."temp_TRAINING_PROGRAM_39";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_TRAINING_PROGRAM_39";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.TABLE_79 DROP COLUMN DEPT_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.TABLE_79 ADD DEPT_ID_NEW NUMBER(38,0);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.TABLE_79 ADD foreign key (DEPT_ID_NEW) references SOUMYAA_1.TABLE_1("DEPT_ID_NEW");
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.TABLE_1 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.TABLE_1 DROP COLUMN DEPT_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.TABLE_1 ADD DEPT_ID_NEW NUMBER(38,0);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.TABLE_1 SET DEPT_ID_NEW = 0 WHERE DEPT_ID_NEW IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.TABLE_1 ALTER DEPT_ID_NEW SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.TABLE_1 ADD primary key (DEPT_ID_NEW);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE SOUMYAA_1.STUDENT_DETAILS_19  RENAME TO SOUMYAA_1."temp_STUDENT_DETAILS_19";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE SOUMYAA_1.STUDENT_DETAILS_19 (
STUDENT_ID NUMBER(38,0) NOT NULL,
STUDENT_NAME VARCHAR(100),
AGE NUMBER(3,0),
MARKS NUMBER(5,2),
CITY VARCHAR(50),
constraint CHK_AGE_VALIDATION check (AGE >= 21),
constraint CHK_STUDENT_MARKS check (MARKS BETWEEN 35 AND 100),
constraint PK_STUDENT primary key (STUDENT_ID)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO SOUMYAA_1.STUDENT_DETAILS_19 (STUDENT_ID,STUDENT_NAME,AGE,MARKS,CITY)
SELECT STUDENT_ID,STUDENT_NAME,AGE,MARKS,CITY
FROM SOUMYAA_1."temp_STUDENT_DETAILS_19";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE SOUMYAA_1."temp_STUDENT_DETAILS_19";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.STUDENT_DETAILS_18 DROP CONSTRAINT CHK_STUDENT_AGE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.STUDENT_DETAILS_18 ADD constraint CHK_AGE_VALIDATION check (AGE >= 18) ENABLE NOVALIDATE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.STUDENT_DETAILS_20 DROP CONSTRAINT CHK_STUDENT_MARKS;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.TYPECASTING_67 RENAME COLUMN SALARY TO "temp_SALARY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.TYPECASTING_67 ADD SALARY NUMBER(38,0);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.TYPECASTING_67 SET SALARY = "temp_SALARY" WHERE "temp_SALARY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.TYPECASTING_67 DROP COLUMN "temp_SALARY";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.TRAINING_PROGRAM_40 ALTER PROGRAM_ID DROP DEFAULT;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.STUDENT_DETAILS_21 ADD constraint CHK_AGE_MARKS check (AGE >= 18 AND MARKS >= 35) ENABLE NOVALIDATE;
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.SCENARIO_98 SET EMP_ID = 0 WHERE EMP_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_98 ALTER EMP_ID SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.SCENARIO_98 SET PROJECT_ID = 0 WHERE PROJECT_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_98 ALTER PROJECT_ID SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_98 ADD primary key (EMP_ID, PROJECT_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_99 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_99 DROP COLUMN EMP_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_99 ADD EMPLOYEE_ID NUMBER(38,0);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.SCENARIO_99 SET EMPLOYEE_ID = 0 WHERE EMPLOYEE_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_99 ALTER EMPLOYEE_ID SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_99 ADD primary key (EMPLOYEE_ID, PROJECT_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_COMMENT_172 SET COMMENT='Employee master information table'
;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_172 RENAME COLUMN EMAIL TO "temp_EMAIL";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_172 ADD EMAIL VARCHAR(100)  DEFAULT 'unknown@email.com';
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE SOUMYAA_1.EMPLOYEE_CONSTRAINT_172 SET EMAIL = '' WHERE EMAIL  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_172 MODIFY EMAIL SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.EMPLOYEE_CONSTRAINT_172 SET EMAIL = "temp_EMAIL" WHERE "temp_EMAIL" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_172 DROP COLUMN "temp_EMAIL";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_172 ADD constraint UQ_EMPLOYEE_EMAIL unique (EMAIL);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CURRENT_DATE_128 DROP COLUMN JOIN_DATE;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT 4600 + 1000 on an existing table; cannot alter default for EMPLOYEE_DEFAULT_EXPRESSION_147.sql.BONUS.
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT 15000 * 2 on an existing table; cannot alter default for EMPLOYEE_DEFAULT_EXPRESSION_147.sql.TOTAL_AMOUNT.
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_DEFAULT_EXPRESSION_149 DROP COLUMN TOTAL_AMOUNT;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_174 DROP CONSTRAINT UQ_EMPLOYEE_EMAIL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_170 ADD EMAIL VARCHAR(100);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.EMPLOYEE_CONSTRAINT_170 SET EMAIL = '' WHERE EMAIL IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_170 ALTER EMAIL SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_170 ADD constraint UQ_EMPLOYEE_EMAIL unique (EMAIL);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_123 RENAME COLUMN IS_ACTIVE TO "temp_IS_ACTIVE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_123 ADD IS_ACTIVE BOOLEAN DEFAULT FALSE;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_123 SET IS_ACTIVE = "temp_IS_ACTIVE" WHERE "temp_IS_ACTIVE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_123 DROP COLUMN "temp_IS_ACTIVE";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_123 RENAME COLUMN IS_PERMANENT TO "temp_IS_PERMANENT";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_123 ADD IS_PERMANENT BOOLEAN DEFAULT TRUE;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_123 SET IS_PERMANENT = "temp_IS_PERMANENT" WHERE "temp_IS_PERMANENT" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_123 DROP COLUMN "temp_IS_PERMANENT";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_171 DROP CONSTRAINT UQ_EMPLOYEE_EMAIL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_171 DROP COLUMN EMAIL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.EMPLOYEE_DROP_122 RENAME COLUMN STATUS TO "temp_STATUS";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_DROP_122 ADD STATUS VARCHAR(20);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.EMPLOYEE_DROP_122 SET STATUS = "temp_STATUS" WHERE "temp_STATUS" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.EMPLOYEE_DROP_122 DROP COLUMN "temp_STATUS";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_133 DROP COLUMN IS_ACTIVE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_BOOLEAN_DEFAULT_133 ADD ACTIVE BOOLEAN DEFAULT FALSE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_DEFAULT_EXPRESSION_148 DROP COLUMN BONUS;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT 4600 + 1000 on an existing table; cannot alter default for EMPLOYEE_DEFAULT_EXPRESSION_148.sql.EMP_BONUS.
-- Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_DEFAULT_EXPRESSION_148 ADD EMP_BONUS NUMBER(10,2);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_DEFAULT_NULL_131 ALTER EMP_NAME DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CURRENT_DATE_127 DROP COLUMN JOIN_DATE;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_DATE() on an existing table; cannot alter default for EMPLOYEE_CURRENT_DATE_127.sql.JOINING_DATE.
-- Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_CURRENT_DATE_127 ADD JOINING_DATE DATE;
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.EMPLOYEE_CONSTRAINT_157 SET EMP_ID = 0 WHERE EMP_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_157 ALTER EMP_ID SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_CONSTRAINT_157 ADD constraint PK_EMPLOYEE primary key (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_88 ADD AGE NUMBER(38,0);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_88 ADD DEPARTMENT VARCHAR(100);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_88 ADD JOIN_DATE DATE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_88 ADD IS_ACTIVE BOOLEAN;
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.SCENARIO_84 SET ID = 0 WHERE ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_84 ALTER ID SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_84 ADD primary key (ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_85 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_85 DROP COLUMN ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_85 ADD EMP_ID NUMBER(38,0);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.SCENARIO_85 SET EMP_ID = 0 WHERE EMP_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_85 ALTER EMP_ID SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_85 ADD primary key (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_86 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_86 DROP COLUMN EMP_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SALES_TRANSACTION_SOURCE_35 SET COMMENT='Sales transaction source table'
;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_90 DROP COLUMN AGE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_90 DROP COLUMN DEPARTMENT;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_90 DROP COLUMN JOIN_DATE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SALES_TRANSACTION_SOURCE_34 ALTER COLUMN TOTAL_AMOUNT UNSET COMMENT;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_92 DROP COLUMN ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_92 ADD EMP_ID NUMBER(38,0);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_100 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_100 ALTER EMPLOYEE_ID DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SCENARIO_100 ALTER PROJECT_ID DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SALES_TRANSACTION_SOURCE_36 UNSET COMMENT;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup 
ALTER TABLE SOUMYAA_1.SCENARIO_83  RENAME TO SOUMYAA_1."temp_SCENARIO_83";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure 
create or replace TABLE SOUMYAA_1.SCENARIO_83 (
ID NUMBER(38,0) autoincrement start 1 increment 1 noorder,
NAME VARCHAR(100),
CODE VARCHAR(10),
SALARY NUMBER(10,2),
RATING FLOAT,
IS_ACTIVE BOOLEAN,
JOIN_DATE DATE,
JOIN_TIME TIME(9),
CREATED_AT TIMESTAMP_NTZ(9)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table 
INSERT INTO SOUMYAA_1.SCENARIO_83 (ID,NAME,CODE,SALARY,RATING,IS_ACTIVE,JOIN_DATE,JOIN_TIME,CREATED_AT)
SELECT ID,NAME,CODE,SALARY,RATING,IS_ACTIVE,JOIN_DATE,JOIN_TIME,CREATED_AT
FROM SOUMYAA_1."temp_SCENARIO_83";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) 
DROP TABLE SOUMYAA_1."temp_SCENARIO_83";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_77 ADD NEW_ID NUMBER(38,0);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_77 ADD constraint FK_EMPLOYEE_DEPARTMENT foreign key (NEW_ID) references SOUMYAA_1.DEPARTMENT_76("NEW_ID");
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.EMPLOYEE_MASTER_41 RENAME COLUMN PRIORITY TO "temp_PRIORITY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_MASTER_41 ADD PRIORITY VARCHAR(20) DEFAULT 'high';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.EMPLOYEE_MASTER_41 SET PRIORITY = "temp_PRIORITY" WHERE "temp_PRIORITY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.EMPLOYEE_MASTER_41 DROP COLUMN "temp_PRIORITY";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_163 DROP CONSTRAINT "PK_EMPLOYEE";
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.EMPLOYEE_PK_163 SET EMP_CODE = '' WHERE EMP_CODE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_163 ALTER EMP_CODE SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_163 ADD constraint PK_EMPLOYEE primary key (EMP_ID, EMP_CODE);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_159 RENAME COLUMN EMP_ID TO "temp_EMP_ID";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_159 ADD EMP_ID NUMBER(10,0);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE SOUMYAA_1.EMPLOYEE_PK_159 SET EMP_ID = 0 WHERE EMP_ID  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_159 MODIFY EMP_ID SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.EMPLOYEE_PK_159 SET EMP_ID = "temp_EMP_ID" WHERE "temp_EMP_ID" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_159 DROP COLUMN "temp_EMP_ID";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_159 ADD primary key (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_166 DROP CONSTRAINT "PK_EMPLOYEE";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_166 DROP COLUMN EMP_CODE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_166 ADD EMPLOYEE_CODE VARCHAR(20);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.EMPLOYEE_PK_166 SET EMPLOYEE_CODE = '' WHERE EMPLOYEE_CODE IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_166 ALTER EMPLOYEE_CODE SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_166 ADD constraint PK_EMPLOYEE primary key (EMPLOYEE_CODE);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_164 DROP CONSTRAINT "PK_EMPLOYEE";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_164 ALTER EMP_CODE DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_164 ADD constraint PK_EMPLOYEE primary key (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.OBJECT_TABLE_DROP DROP COLUMN EMP_DETAILS;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.NUMBER_FLOAT_SRC RENAME COLUMN SALARY TO "temp_SALARY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.NUMBER_FLOAT_SRC ADD SALARY FLOAT;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.NUMBER_FLOAT_SRC SET SALARY = "temp_SALARY" WHERE "temp_SALARY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.NUMBER_FLOAT_SRC DROP COLUMN "temp_SALARY";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.NUMBER_TYPE_TEST_101 RENAME COLUMN ID TO "temp_ID";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.NUMBER_TYPE_TEST_101 ADD ID VARCHAR(10);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.NUMBER_TYPE_TEST_101 SET ID = "temp_ID" WHERE "temp_ID" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.NUMBER_TYPE_TEST_101 DROP COLUMN "temp_ID";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.NUMBER_TYPE_TEST_101 RENAME COLUMN AGE TO "temp_AGE";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.NUMBER_TYPE_TEST_101 ADD AGE VARCHAR(12);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.NUMBER_TYPE_TEST_101 SET AGE = "temp_AGE" WHERE "temp_AGE" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.NUMBER_TYPE_TEST_101 DROP COLUMN "temp_AGE";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_165 DROP CONSTRAINT "PK_EMPLOYEE";
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.EMPLOYEE_PK_165 SET EMP_ID = 0 WHERE EMP_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_165 ALTER EMP_ID SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_165 ALTER EMP_CODE DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_165 ADD constraint PK_EMPLOYEE primary key (EMP_ID);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_47 RENAME COLUMN EMP_ID_NEW TO "temp_EMP_ID_NEW";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_47 ADD EMP_ID_NEW NUMBER(10,0);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE SOUMYAA_1.PRIMARY_KEY_TABLE_47 SET EMP_ID_NEW = 0 WHERE EMP_ID_NEW  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_47 MODIFY EMP_ID_NEW SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.PRIMARY_KEY_TABLE_47 SET EMP_ID_NEW = "temp_EMP_ID_NEW" WHERE "temp_EMP_ID_NEW" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_47 DROP COLUMN "temp_EMP_ID_NEW";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_47 ADD primary key (EMP_ID_NEW);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE SOUMYAA_1.HOTEL_BOOKINGS_16  RENAME TO SOUMYAA_1."temp_HOTEL_BOOKINGS_16";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE SOUMYAA_1.HOTEL_BOOKINGS_16 (
BOOKING_ID NUMBER(38,0),
GUEST_NAME VARCHAR(100),
ROOMS NUMBER(38,0),
CHECK_IN DATE,
CHECK_OUT DATE,
check (rooms >=0),
check (check_out > check_in)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO SOUMYAA_1.HOTEL_BOOKINGS_16 (BOOKING_ID,GUEST_NAME,ROOMS)
SELECT BOOKING_ID,GUEST_NAME,ROOMS
FROM SOUMYAA_1."temp_HOTEL_BOOKINGS_16";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE SOUMYAA_1."temp_HOTEL_BOOKINGS_16";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_61 RENAME COLUMN EMPLOYEE_ID TO "temp_EMPLOYEE_ID";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_61 ADD EMPLOYEE_ID VARCHAR(10);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE SOUMYAA_1.PRIMARY_SCENARIO_61 SET EMPLOYEE_ID = '' WHERE EMPLOYEE_ID  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_61 MODIFY EMPLOYEE_ID SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.PRIMARY_SCENARIO_61 SET EMPLOYEE_ID = "temp_EMPLOYEE_ID" WHERE "temp_EMPLOYEE_ID" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_61 DROP COLUMN "temp_EMPLOYEE_ID";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_61 ADD constraint PK_PRIMARY_SCENARIO primary key (EMPLOYEE_ID);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing target table to create a backup for check constraint
ALTER TABLE SOUMYAA_1.HOTEL_BOOKINGS_15  RENAME TO SOUMYAA_1."temp_HOTEL_BOOKINGS_15";
-----------------------------------------------------------------------------
-- Step 2: Recreate the target table with the correct structure for check constraint
create or replace TABLE SOUMYAA_1.HOTEL_BOOKINGS_15 (
BOOKING_ID NUMBER(38,0),
GUEST_NAME VARCHAR(100),
ROOMS NUMBER(38,0),
CHECK_IN DATE,
CHECK_OUT DATE,
check (check_out > check_in)
);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the backup table to the new table for check constraint
INSERT INTO SOUMYAA_1.HOTEL_BOOKINGS_15 (BOOKING_ID,GUEST_NAME,ROOMS)
SELECT BOOKING_ID,GUEST_NAME,ROOMS
FROM SOUMYAA_1."temp_HOTEL_BOOKINGS_15";
-----------------------------------------------------------------------------
-- Step 4: Drop the backup table (optional, only if backup is no longer needed) for check constraint
DROP TABLE SOUMYAA_1."temp_HOTEL_BOOKINGS_15";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SALES_TRANSACTION_SOURCE_32 ALTER COLUMN TOTAL_AMOUNT COMMENT 'Total transaction amount';
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT PARSE_JSON('{department:IT}') on an existing table; cannot alter default for OBJECT_TABLE_103.sql.EMP_DETAILS.
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.OBJECT_DATA RENAME COLUMN EMP_ID TO "temp_EMP_ID";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.OBJECT_DATA ADD EMP_ID OBJECT;
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.OBJECT_DATA SET EMP_ID = OBJECT_CONSTRUCT('value', "temp_EMP_ID");
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.OBJECT_DATA DROP COLUMN "temp_EMP_ID";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.OBJECT_DATA ADD primary key (EMP_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_49 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_49 ALTER EMP_ID_NEW DROP NOT NULL;
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_48 RENAME COLUMN EMP_ID_NEW TO "temp_EMP_ID_NEW";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_48 ADD EMP_ID_NEW VARCHAR(15);
-----------------------------------------------------------------------------
--Step 3: Update NULL value to NOT NULL 
UPDATE SOUMYAA_1.PRIMARY_KEY_TABLE_48 SET EMP_ID_NEW = '' WHERE EMP_ID_NEW  IS NULL;
-----------------------------------------------------------------------------
--Step 4: Set the column to NOT NULL
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_48 MODIFY EMP_ID_NEW SET NOT NULL;
-----------------------------------------------------------------------------
-- Step 5: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.PRIMARY_KEY_TABLE_48 SET EMP_ID_NEW = "temp_EMP_ID_NEW" WHERE "temp_EMP_ID_NEW" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 6: Drop the temporary column
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_48 DROP COLUMN "temp_EMP_ID_NEW";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_48 ADD primary key (EMP_ID_NEW);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_63 DROP CONSTRAINT PK_PRIMARY_SCENARIO_NEW;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_63 ALTER EMPLOYEE_ID DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_46 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_46 DROP COLUMN EMP_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_46 ADD EMP_ID_NEW NUMBER(38,0);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.PRIMARY_KEY_TABLE_46 SET EMP_ID_NEW = 0 WHERE EMP_ID_NEW IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_46 ALTER EMP_ID_NEW SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_KEY_TABLE_46 ADD primary key (EMP_ID_NEW);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_62 DROP CONSTRAINT PK_PRIMARY_SCENARIO;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_62 ADD constraint PK_PRIMARY_SCENARIO_NEW primary key (EMPLOYEE_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_60 DROP CONSTRAINT "PK_PRIMARY_SCENARIO";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_60 DROP COLUMN EMP_ID;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_60 ADD EMPLOYEE_ID NUMBER(38,0);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.PRIMARY_SCENARIO_60 SET EMPLOYEE_ID = 0 WHERE EMPLOYEE_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_60 ALTER EMPLOYEE_ID SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.PRIMARY_SCENARIO_60 ADD constraint PK_PRIMARY_SCENARIO primary key (EMPLOYEE_ID);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_153 DROP primary key;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_153 ALTER EMP_ID DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_155 DROP CONSTRAINT PK_EMPLOYEE;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_155 ALTER EMP_ID DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_155 ALTER DEPARTMENT DROP NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_156 DROP CONSTRAINT "PK_EMPLOYEE";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_156 ADD constraint "PK_EMPLOYEE" primary key (DEPARTMENT, EMP_ID);
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.EMPLOYEE_PK_154 SET EMP_ID = 0 WHERE EMP_ID IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_154 ALTER EMP_ID SET NOT NULL;
-----------------------------------------------------------------------------
UPDATE SOUMYAA_1.EMPLOYEE_PK_154 SET DEPARTMENT = '' WHERE DEPARTMENT IS NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_154 ALTER DEPARTMENT SET NOT NULL;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_PK_154 ADD constraint PK_EMPLOYEE primary key (EMP_ID, DEPARTMENT);
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.SALES_TRANSACTION_SOURCE_33 ALTER COLUMN TOTAL_AMOUNT COMMENT ' Updated total amount for the transaction';
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 RENAME COLUMN DEPARTMENT TO "temp_DEPARTMENT";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 ADD DEPARTMENT VARCHAR(50) DEFAULT ' HR';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 SET DEPARTMENT = "temp_DEPARTMENT" WHERE "temp_DEPARTMENT" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 DROP COLUMN "temp_DEPARTMENT";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 RENAME COLUMN STATUS TO "temp_STATUS";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 ADD STATUS VARCHAR(20) DEFAULT 'Active';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 SET STATUS = "temp_STATUS" WHERE "temp_STATUS" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 DROP COLUMN "temp_STATUS";
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 RENAME COLUMN CITY TO "temp_CITY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 ADD CITY VARCHAR(50) DEFAULT 'cuttack';
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 SET CITY = "temp_CITY" WHERE "temp_CITY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.EMPLOYEE_MULTI_DEFAULT_132 DROP COLUMN "temp_CITY";
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_TIMESTAMP_DEFAULT_145 DROP COLUMN UPDATED_AT;
-----------------------------------------------------------------------------
ALTER TABLE SOUMYAA_1.EMPLOYEE_TIMESTAMP_DEFAULT_144 DROP COLUMN CREATED_AT;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT CURRENT_TIMESTAMP() on an existing table; cannot alter default for EMPLOYEE_TIMESTAMP_DEFAULT_144.sql.CREATE_TIME.
-- Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.EMPLOYEE_TIMESTAMP_DEFAULT_144 ADD CREATE_TIME TIMESTAMP_NTZ(9);
-----------------------------------------------------------------------------
-- WARNING: Possible Data Truncation - Changes may cause truncation, loss, or inconsistency in existing data.
-- Step 1: Rename the existing column to a temporary column name
ALTER TABLE SOUMYAA_1.PRECISION_1 RENAME COLUMN SALARY TO "temp_SALARY";
-----------------------------------------------------------------------------
-- Step 2: Add a new column with the original column's name
ALTER TABLE SOUMYAA_1.PRECISION_1 ADD SALARY NUMBER(15,2);
-----------------------------------------------------------------------------
-- Step 3: Copy data from the temporary column to the newly created column
UPDATE SOUMYAA_1.PRECISION_1 SET SALARY = "temp_SALARY" WHERE "temp_SALARY" IS NOT NULL;
-----------------------------------------------------------------------------
-- Step 4: Drop the temporary column
ALTER TABLE SOUMYAA_1.PRECISION_1 DROP COLUMN "temp_SALARY";