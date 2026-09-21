create or replace sequence OBJECT_55.EMP_ID_SEQ_138 start with 1 increment by 1 noorder;
-----------------------------------------------------------------------------
create or replace sequence OBJECT_55."SEQUENCE_TEST@128" start with 1000 increment by 10 noorder;
-----------------------------------------------------------------------------
ALTER SEQUENCE IF EXISTS OBJECT_55.SEQUENCE_TEST_123 SET INCREMENT BY 5 noorder;
-----------------------------------------------------------------------------
-- WARNING: Sequence modification requires recreating the sequence. Dependent applications might be affected.
create or replace sequence OBJECT_55.SEQUENCE_TEST_124 start with 1000 increment by 10 noorder;
-----------------------------------------------------------------------------
-- WARNING: Sequence modification requires recreating the sequence. Dependent applications might be affected.
create or replace sequence OBJECT_55.SEQUENCE_TEST_122 start with 100 increment by 1 noorder;
-----------------------------------------------------------------------------
ALTER SEQUENCE IF EXISTS OBJECT_55.SEQUENCE_TEST_126 SET INCREMENT BY 10 noorder;
-----------------------------------------------------------------------------
create or replace sequence OBJECT_55.SEQUENCE_TEST_129 start with -1000 increment by 10 noorder;
-----------------------------------------------------------------------------
create or replace sequence OBJECT_55.SEQUENCE_TEST_131 start with -100 increment by -10 noorder;
-----------------------------------------------------------------------------
create or replace sequence OBJECT_55.SEQUENCE_TEST_132 start with 100 increment by 10 noorder;
-----------------------------------------------------------------------------
create or replace sequence OBJECT_55.SEQUENCE_TEST_130 start with 1000 increment by 10 noorder;
-----------------------------------------------------------------------------
-- WARNING: Snowflake doesn't allow DEFAULT OBJECT_55.EMP_ID_SEQ_138.NEXTVAL on an existing table; cannot alter default for EMPLOYEE_SEQ_139.sql.EMP_ID.
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.BUILD_ADDRESS("CITY" VARCHAR, "STATE" VARCHAR, "PINCODE" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    CITY || '', '' || STATE
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.BUILD_EMAIL("USER_NAME" VARCHAR, "DOMAIN" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    USER_NAME || ''@'' || DOMAIN
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.BUILD_EMAIL_ID("USERNAME" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    USERNAME || ''@company.com''
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.BUILD_EMPLOYEE_ID("EMP_ID" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    ''EMP-'' || EMP_ID
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.BUILD_PRODUCT_CODE("PRODUCT_ID" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    PRODUCT_ID
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.BUILD_PHONE_LABEL("PHONE" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    ''Phone: '' || REPLACE(PHONE, ''-'', '''')
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.BUILD_PRODUCT_LABEL("PRODUCT" VARCHAR, "CATEGORY" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    CATEGORY || '' : '' || PRODUCT
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.BUILD_REFERENCE("BRANCH" VARCHAR, "NUMBER" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    BRANCH || ''/'' || NUMBER
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CALCULATE_FEE("AMOUNT" NUMBER(38,0))
RETURNS NUMBER(38,0)
LANGUAGE SQL
AS '
    AMOUNT + 0.05
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CALCULATE_COMMISSION("SALES_AMOUNT" NUMBER(20,2))
RETURNS NUMBER(38,0)
LANGUAGE SQL
AS '
    SALES_AMOUNT * 0.05
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CHECK_EMPLOYEE_NAME("EMP_NAME" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    COALESCE(EMP_NAME, ''UNKNOWN'')
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CHECK_SCORE("SCORE" NUMBER(38,0), "PASS_MARK" NUMBER(38,0))
RETURNS VARCHAR
LANGUAGE SQL
AS '
    CASE
        WHEN SCORE >= PASS_MARK THEN ''PASS''
        WHEN SCORE >= 35 THEN ''AVERAGE''
        ELSE ''FAIL''
    END
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CHECK_STOCK("QUANTITY" NUMBER(38,0))
RETURNS VARCHAR
LANGUAGE SQL
AS '
    CASE
        WHEN QUANTITY >= 10 THEN ''AVAILABLE''
        ELSE ''LOW''
    END
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CREATE_CODE("CODE" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    CODE || ''-ACTIVE''
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CREATE_GREETING("NAME" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    ''Welcome '' || NAME
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CREATE_LOGIN("USER_NAME" VARCHAR, "DOMAIN" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    LOWER(USER_NAME) || ''@'' || DOMAIN
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CREATE_STATUS_LABEL("NAME" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    ''Employee: '' || NAME || '' - Active''
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.FORMAT_CATEGORY("CATEGORY" VARCHAR, "CODE" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    ''['' || CATEGORY || ''-'' || CODE || '']''
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.FORMAT_CONTACT("NAME" VARCHAR, "PHONE" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    ''Contact: '' || NAME || '' - '' || PHONE
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.FORMAT_CUSTOMER("FIRST_NAME" VARCHAR, "LAST_NAME" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    INITCAP(FIRST_NAME) || '' '' || INITCAP(LAST_NAME)
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.FORMAT_CUSTOMER_NAME("FIRST_NAME" VARCHAR, "LAST_NAME" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    FIRST_NAME || ''_'' || LAST_NAME
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_JSON_FORMAT_119
	TYPE = JSON
	NULL_IF = ()
	STRIP_OUTER_ARRAY = TRUE
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_111
	SKIP_HEADER = 1
	NULL_IF = ('NA')
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_109
	SKIP_HEADER = 2
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_112
	SKIP_HEADER = 1
	TRIM_SPACE = TRUE
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_114
	SKIP_HEADER = 1
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_118
	SKIP_HEADER = 1
	TIMESTAMP_FORMAT = 'DD-MM-YYYY HH24:MI:SS'
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_107
	FIELD_DELIMITER = '|'
	SKIP_HEADER = 1
COMMENT='Employee CSV file format'
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_115
	SKIP_HEADER = 1
	ENCODING = 'ISO88591'
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_116
	SKIP_HEADER = 1
	DATE_FORMAT = 'DD-MM-YYYY'
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CHECK_AGE_GROUP("AGE" NUMBER(38,0))
RETURNS VARCHAR
LANGUAGE SQL
AS '
    CASE
        WHEN AGE >= 18 THEN ''ADULT''
        ELSE ''MINOR''
    END
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_PARQUET_FORMAT_121
	TYPE = PARQUET
	NULL_IF = ()
	USE_LOGICAL_TYPE = TRUE
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_105
	SKIP_HEADER = 1
COMMENT='Updated employee CSV format'
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_110
	SKIP_HEADER = 1
	COMPRESSION = GZIP
;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_113
	SKIP_HEADER = 1
	ESCAPE = '\\'
;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.DYNAMIC_EMPLOYEE_65(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
BONUS,
JOIN_DATE,
STATUS
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    CITY,
    SALARY,
    BONUS,
    JOIN_DATE,
    STATUS
FROM OBJECT_55.DYNAMIC_EMPLOYEE_SOURCE
WHERE SALARY >= 50000;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.ALICE_DYNAMIC_14(
EMP_ID
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID AS EMPLOYEE_ID
FROM OBJECT_55.EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.FORMAT_NAME("FIRST_NAME" VARCHAR, "LAST_NAME" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    UPPER(FIRST_NAME) || '' '' || UPPER(LAST_NAME)
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.GET_DEPARTMENT_NAME("DEPT" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    COALESCE(DEPT, ''UNKNOWN'')
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.FORMAT_EMPLOYEE_NAME("EMP_NAME" VARCHAR(100))
RETURNS VARCHAR
LANGUAGE SQL
AS '
    UPPER(EMP_NAME)
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.FORMAT_DEPARTMENT("DEPARTMENT" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    UPPER(DEPARTMENT)
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.FORMAT_EMPLOYEE("NAME" VARCHAR, "DEPARTMENT" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    TRIM(NAME) || '' - '' || TRIM(DEPARTMENT)
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.MAKE_ACCOUNT_LABEL("ACCOUNT_ID" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    ''ACCOUNT-'' || ACCOUNT_ID
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.GET_RATING("SCORE" NUMBER(38,0))
RETURNS VARCHAR
LANGUAGE SQL
COMMENT='Returns employee rating'
AS '
    CASE
        WHEN SCORE >= 80 THEN ''A''
        ELSE ''B''
    END
';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.MAKE_CUSTOMER_CODE("CUSTOMER_ID" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    ''CUSTOMER-'' || CUSTOMER_ID || ''-01''
';
-----------------------------------------------------------------------------
create or replace stream OBJECT_55.EMPLOYEE_STREAM_96 on table EMPLOYEE_SOURCE_91;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.TIMEZONE_TASK
	warehouse=COMPUTE_WH
	schedule='USING CRON 0 9 * * * Asia/Kolkata'
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace stream OBJECT_55.EMPLOYEE_STREAM_102 on table EMPLOYEE_SOURCE_91 append_only = true;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.UNIQUE_DEPARTMENT_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as SELECT DISTINCT DEPARTMENT
FROM OBJECT_55.EMPLOYEE;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.WAREHOUSE_CHANGE_TASK
	warehouse=TEST_WH
	schedule='60 MINUTES'
	as INSERT INTO OBJECT_55.EMPLOYEE_LOG
SELECT * FROM OBJECT_55.EMPLOYEE;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.WEEKLY_PROCESS_TASK
	warehouse=COMPUTE_WH
	schedule='USING CRON 0 9 * * * UTC'
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.DYNAMIC_EMPLOYEE_63(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
BONUS,
JOIN_DATE,
STATUS
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 COMMENT='Employee dynamic table containing department, salary, bonus and joining date information'
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    CITY,
    SALARY,
    BONUS,
    JOIN_DATE,
    STATUS
FROM OBJECT_55.DYNAMIC_EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace view OBJECT_55.EMPLOYEE_VIEW_187(
	EMP_ID,
	EMP_NAME,
	SALARY,
	DEPARTMENT
) as
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY,
    DEPARTMENT
FROM OBJECT_55.EMPLOYEE_VIEW_185;
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.MERGE_NAMES("FIRST_NAME" VARCHAR, "LAST_NAME" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    FIRST_NAME || LAST_NAME
';
-----------------------------------------------------------------------------
create or replace view OBJECT_55.EMPLOYEE_VIEW_188(
	EMP_ID,
	EMP_NAME,
	SALARY
) as
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY
FROM OBJECT_55.EMPLOYEE_VIEW_185;
-----------------------------------------------------------------------------
create or replace view OBJECT_55.EMPLOYEE_VIEW_189(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY,
	JOIN_DATE
) as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY,
    JOIN_DATE
FROM OBJECT_55.EMPLOYEE_VIEW_185
WHERE SALARY > 50000;
-----------------------------------------------------------------------------
create or replace view OBJECT_55.EMPLOYEE_VIEW_191(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	JOB_TITLE,
	SALARY,
	BONUS,
	EMAIL,
	PHONE,
	JOIN_DATE,
	IS_ACTIVE,
	LOCATION
) as 
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    JOB_TITLE,
    SALARY,
    BONUS,
    EMAIL,
    PHONE,
    JOIN_DATE,
    IS_ACTIVE,
    LOCATION
FROM OBJECT_55.EMPLOYEE_VIEW_190
WHERE SALARY > 50000
  AND BONUS > 4000
  AND IS_ACTIVE = TRUE
  AND DEPARTMENT = 'IT';
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.MAKE_FULL_NAME("FIRST_NAME" VARCHAR, "LAST_NAME" VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS '
    LAST_NAME || '', '' || FIRST_NAME
';
-----------------------------------------------------------------------------
create or replace view OBJECT_55.EMPLOYEE_VIEW_184(
	EMPLOYEE_ID,
	EMPLOYEE_NAME,
	DEPT_NAME,
	EMPLOYEE_SALARY
) as
SELECT
    EMP_ID AS EMPLOYEE_ID,
    EMP_NAME AS EMPLOYEE_NAME,
    DEPARTMENT AS DEPT_NAME,
    SALARY AS EMPLOYEE_SALARY
FROM OBJECT_55.EMPLOYEE_VIEW_181;
-----------------------------------------------------------------------------
create or replace view OBJECT_55.EMPLOYEE_VIEW_192(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY,
	BONUS,
	IS_ACTIVE
) as 
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY,
    BONUS,
    IS_ACTIVE
FROM OBJECT_55.EMPLOYEE_VIEW_190
WHERE SALARY >= 55000
  AND BONUS >= 5000
  AND IS_ACTIVE = TRUE
  AND DEPARTMENT IN ('HR', 'Finance');
-----------------------------------------------------------------------------
create or replace view OBJECT_55.EMPLOYEE_VIEW_186(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY,
	JOIN_DATE
) as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY,
    JOIN_DATE
FROM OBJECT_55.EMPLOYEE_VIEW_185;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_XML_FORMAT_120
	TYPE = XML
	PRESERVE_SPACE = TRUE
;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.TABLE_TARGET_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as INSERT INTO OBJECT_55.EMPLOYEE_LOG
SELECT * FROM OBJECT_55.EMPLOYEE;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.SALARY_FILTER_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as DELETE FROM OBJECT_55.EMPLOYEE
WHERE SALARY < 30000;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.PROCEDURE_TRIGGER_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as CALL OBJECT_55.PROCESS_EMPLOYEE_DATA();
-----------------------------------------------------------------------------
create or replace task OBJECT_55.ORDER_CLEANUP_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as DELETE FROM OBJECT_55.EMPLOYEE_LOG;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.SORTING_PROCESS_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as SELECT *
FROM OBJECT_55.EMPLOYEE
ORDER BY EMP_ID;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.STATUS_UPDATE_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as UPDATE OBJECT_55.EMPLOYEE
SET DEPARTMENT = 'HR';
-----------------------------------------------------------------------------
create or replace task OBJECT_55.MULTI_CHANGE_TASK
	warehouse=COMPUTE_WH
	schedule='120 MINUTES'
	COMMENT='Employee data processing'
	as SELECT 2;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.SALARY_SUMMARY_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as SELECT AVG(SALARY)
FROM OBJECT_55.EMPLOYEE;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.OVERLAP_CONTROL_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	allow_overlapping_execution=true
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.DYNAMIC_EMPLOYEE_62(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
BONUS,
JOIN_DATE,
STATUS
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    CITY,
    SALARY,
    BONUS,
    JOIN_DATE,
    STATUS
FROM OBJECT_55.DYNAMIC_EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.EMPLOYEE_MV_243(
	EMP_ID,
	STAFF_NAME,
	DEPARTMENT,
	CITY,
	SALARY
) as
SELECT
    EMP_ID,
    EMP_NAME AS STAFF_NAME,
    DEPARTMENT,
    CITY,
    SALARY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE;
-----------------------------------------------------------------------------
create or replace view OBJECT_55.EMPLOYEE_VIEW_193(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY
) as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY
FROM OBJECT_55.EMPLOYEE_VIEW_190;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.EMPLOYEE_MV_245(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY
) as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE
WHERE STATUS = 'INACTIVE';
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.EMPLOYEE_MV_247(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY
) as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE
WHERE STATUS = 'ACTIVE'
  AND SALARY > 60000;
-----------------------------------------------------------------------------
create or replace view OBJECT_55.EMPLOYEE_VIEW_194(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY,
	BONUS,
	IS_ACTIVE,
	TOTAL_SALARY
) as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY,
    BONUS,
    IS_ACTIVE,
    SALARY + BONUS AS TOTAL_SALARY
FROM OBJECT_55.EMPLOYEE_VIEW_190;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.EMPLOYEE_MV_250(
	EMP_ID,
	EMP_NAME,
	SALARY,
	ANNUAL_SALARY
) as
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY,
    SALARY * 12 AS ANNUAL_SALARY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.EMPLOYEE_MV_251(
	EMP_ID,
	EMP_NAME,
	SALARY
) COMMENT='Employee salary materialized view'
 as
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.EMPLOYEE_MV_246(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY
) as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE
WHERE STATUS = 'ACTIVE'
  AND SALARY > 50000;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.EMPLOYEE_MV_249(
	DEPARTMENT,
	CITY
) as
SELECT
    DEPARTMENT,
    CITY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.EMPLOYEE_MV_244(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	CITY,
	SALARY
) as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    CITY,
    SALARY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE
WHERE STATUS = 'ACTIVE';
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.MV_VIEW_253(
	SALE_ID,
	CUSTOMER_NAME,
	SALES_AMOUNT
) as
SELECT
    SALE_ID,
    CUSTOMER_NAME,
    SALES_AMOUNT
FROM OBJECT_55.MATERIALIZED_VIEW_251;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.DAILY_REPORT_TASK
	warehouse=COMPUTE_WH
	schedule='USING CRON 0 9 * * * UTC'
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.EMPLOYEE_SYNC_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as MERGE INTO OBJECT_55.EMPLOYEE T
USING OBJECT_55.EMPLOYEE_LOG S
ON T.EMP_ID = S.EMP_ID
WHEN MATCHED THEN
    UPDATE SET T.SALARY = S.SALARY;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.DATA_CHECK_TASK
	warehouse=COMPUTE_WH
	schedule='30 MINUTES'
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.EMPLOYEE_MV_248(
	DEPARTMENT,
	CITY
) as
SELECT DISTINCT
    DEPARTMENT,
    CITY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.EMPLOYEE_UPDATE_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as UPDATE OBJECT_55.EMPLOYEE
SET SALARY = SALARY + 2000;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.ACTIVE_EMP_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as INSERT INTO OBJECT_55.EMPLOYEE_LOG
SELECT * FROM OBJECT_55.EMPLOYEE
WHERE SALARY > 30000;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.MV_VIEW_255(
	SALE_ID,
	CUSTOMER_NAME,
	PRODUCT_NAME,
	SALES_AMOUNT
) as
SELECT
    SALE_ID,  
    CUSTOMER_NAME,
    PRODUCT_NAME,
    SALES_AMOUNT
FROM OBJECT_55.MATERIALIZED_VIEW_251;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.COMBINED_CHANGE_TASK
	warehouse=COMPUTE_WH
	schedule='120 MINUTES'
	when SYSTEM$STREAM_HAS_DATA('OBJECT_55.EMP_STREAM')
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.CONDITIONAL_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	when SYSTEM$STREAM_HAS_DATA('OBJECT_55.EMP_STREAM')
	as INSERT INTO OBJECT_55.EMPLOYEE_LOG
SELECT * FROM OBJECT_55.EMPLOYEE;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.EMPLOYEE_LOAD_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	COMMENT='Employee data loading task'
	as INSERT INTO OBJECT_55.EMPLOYEE_LOG
SELECT * FROM OBJECT_55.EMPLOYEE;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.LOG_UPDATE_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as UPDATE OBJECT_55.EMPLOYEE
SET SALARY = SALARY + 1000
WHERE DEPARTMENT = 'IT';
-----------------------------------------------------------------------------
create or replace task OBJECT_55.MORNING_DATA_TASK
	warehouse=COMPUTE_WH
	schedule='USING CRON 0 9 * * * UTC'
	as INSERT INTO OBJECT_55.EMPLOYEE_LOG
SELECT * FROM OBJECT_55.EMPLOYEE;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.FAILURE_CONTROL_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	SUSPEND_TASK_AFTER_NUM_FAILURES=5
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.EMPLOYEE_UPDATE_FIELD_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as UPDATE OBJECT_55.EMPLOYEE
SET SALARY = SALARY + 1000;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.EVENT_TRIGGER_TASK
	warehouse=COMPUTE_WH
	schedule='30 MINUTES'
	when SYSTEM$STREAM_HAS_DATA('OBJECT_55.ORDER_STREAM')
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.EMPLOYEE_MV_252(
	EMP_ID,
	EMP_NAME,
	SALARY
) COMMENT='Updated employee salary information'
 as
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY
FROM OBJECT_55.EMPLOYEE_MV_SOURCE;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.HOURLY_REPORT_TASK
	warehouse=COMPUTE_WH
	schedule='USING CRON 30 * * * * UTC'
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace view OBJECT_55.EMPLOYEE_VIEW_195(
	EMP_ID,
	EMP_NAME,
	DEPARTMENT,
	SALARY,
	BONUS,
	IS_ACTIVE
) as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY,
    BONUS,
    IS_ACTIVE
FROM OBJECT_55.EMPLOYEE_VIEW_190;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.MV_VIEW_254(
	SALE_ID,
	CUSTOMER_NAME,
	SALES_AMOUNT
) as
SELECT
    SALE_ID,
    CUSTOMER_NAME,
    SALES_AMOUNT
FROM OBJECT_55.MATERIALIZED_VIEW_251;
-----------------------------------------------------------------------------
create or replace materialized view OBJECT_55.MV_VIEW_256(
	SALE_ID
) as
SELECT
    SALE_ID
    
FROM OBJECT_55.MATERIALIZED_VIEW_251;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.HOURLY_PROCESS_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.DATA_TRANSFORM_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as INSERT INTO OBJECT_55.EMPLOYEE_LOG
SELECT LOWER(EMP_NAME)
FROM OBJECT_55.EMPLOYEE;
-----------------------------------------------------------------------------
create or replace task OBJECT_55.EMPLOYEE_COPY_TASK
	warehouse=COMPUTE_WH
	schedule='60 MINUTES'
	as INSERT INTO OBJECT_55.EMPLOYEE_LOG
SELECT EMP_ID, EMP_NAME, SALARY FROM OBJECT_55.EMPLOYEE;
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.PAYMENT_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (TYPE = CSV);
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.DELIMITER_CHANGE_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (
    TYPE = CSV
    FIELD_DELIMITER = ','
);
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.EMPLOYEE_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE (EMP_ID, EMP_NAME, DEPARTMENT, SALARY)
FROM (
    SELECT
        $1,
        $2,
        $3,
        $4
    FROM @OBJECT_55.EMPLOYEE_STAGE
)
FILE_FORMAT = (TYPE = CSV);
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.ENCLOSED_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (
    TYPE = CSV
    FIELD_OPTIONALLY_ENCLOSED_BY = ''''
);
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.HEADER_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (
    TYPE = CSV
    SKIP_HEADER = 1
);
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.FORMAT_TYPE_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (TYPE = CSV);
-----------------------------------------------------------------------------
create or replace task OBJECT_55.WEEKLY_REPORT_TASK
	warehouse=COMPUTE_WH
	schedule='USING CRON 0 9 * * 5 UTC'
	as SELECT 1;
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.OPTION_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (
    TYPE = CSV
);
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.FILE_FILTER_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
PATTERN = '.employee.'
FILE_FORMAT = (TYPE = CSV);
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.NULL_FIELD_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (
    TYPE = CSV
    EMPTY_FIELD_AS_NULL = TRUE
);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_69
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_TABLE_67
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MIN_SALES as MIN(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace sequence OBJECT_55."SEQUENCE TEST 127" start with 1000 increment by 10 noorder;
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CALCULATE_EARNINGS("SALARY" NUMBER(38,0), "BONUS" NUMBER(38,0))
RETURNS NUMBER(38,0)
LANGUAGE SQL
AS '
    SALARY + BONUS
';
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_11(
EMP_ID,
EMP_NAME,
DEPARTMENT,
SALARY
) target_lag = '5 minutes' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_246(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
JOIN_DATE,
STATUS
) target_lag = '1 minute' refresh_mode = FULL initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT EMP_ID, EMP_NAME, DEPARTMENT, CITY, SALARY, JOIN_DATE, STATUS
FROM OBJECT_55.EMPLOYEE_DYNAMIC_SOURCE_243;
-----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION OBJECT_55.CHECK_ATTENDANCE("DAYS_PRESENT" NUMBER(38,0))
RETURNS VARCHAR
LANGUAGE SQL
AS '
    CASE
        WHEN DAYS_PRESENT >= 25 THEN ''EXCELLENT''
        WHEN DAYS_PRESENT >= 20 THEN ''ELIGIBLE''
        ELSE ''NOT ELIGIBLE''
    END
';
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_250(
EMP_ID,
EMP_NAME,
EMP_DEPARTMENT,
CITY,
SALARY,
SOURCE_DEPARTMENT
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT
    E.EMP_ID,
    E.EMP_NAME,
    E.DEPARTMENT as EMP_DEPARTMENT,
    E.CITY,
    E.SALARY,
    D.DEPARTMENT AS SOURCE_DEPARTMENT
FROM OBJECT_55.EMPLOYEE_DYNAMIC_SOURCE_243 E
JOIN OBJECT_55.DEPARTMENT_SOURCE_247 D
    ON E.DEPARTMENT = D.DEPARTMENT;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.DYNAMIC_EMPLOYEE_64(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
BONUS,
JOIN_DATE,
STATUS
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    CITY,
    SALARY,
    BONUS,
    JOIN_DATE,
    STATUS
FROM OBJECT_55.DYNAMIC_EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_249(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
JOIN_DATE,
STATUS
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT EMP_ID, EMP_NAME, DEPARTMENT, CITY, SALARY, JOIN_DATE, STATUS
FROM OBJECT_55.EMPLOYEE_SOURCE_248;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_252(
EMP_ID,
EMP_NAME,
DEPARTMENT,
SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY
FROM OBJECT_55.EMPLOYEE_DYNAMIC_SOURCE_243;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.DYNAMIC_EMPLOYEE_66(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
BONUS,
JOIN_DATE,
STATUS
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    CITY,
    SALARY,
    BONUS,
    JOIN_DATE,
    STATUS
FROM OBJECT_55.DYNAMIC_EMPLOYEE_SOURCE
WHERE SALARY >= 40000;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.DYNAMIC_EMPLOYEE_78(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
BONUS,
JOIN_DATE,
STATUS
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_SCHEDULE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    CITY,
    SALARY,
    BONUS,
    JOIN_DATE,
    STATUS
FROM OBJECT_55.DYNAMIC_EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_5(
EMP_ID,
EMP_NAME,
SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY
FROM EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.DYNAMIC_EMPLOYEE_67(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
BONUS,
JOIN_DATE,
STATUS
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    CITY,
    SALARY,
    BONUS,
    JOIN_DATE,
    STATUS
FROM OBJECT_55.DYNAMIC_EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_245(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
JOIN_DATE,
STATUS
) target_lag = 'DOWNSTREAM' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT EMP_ID, EMP_NAME, DEPARTMENT, CITY, SALARY, JOIN_DATE, STATUS
FROM OBJECT_55.EMPLOYEE_DYNAMIC_SOURCE_243;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_8(
EMP_ID,
EMP_NAME,
DEPARTMENT,
SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT::varchar(100) as DEPARTMENT,
    SALARY
FROM EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_4(
EMP_ID,
EMP_NAME
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME
FROM EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_6(
EMP_ID,
EMP_NAME,
SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    101 as EMP_ID,
    'Rahul' as EMP_NAME,
    45000 as SALARY
FROM EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
CREATE OR REPLACE FILE FORMAT OBJECT_55.EMPLOYEE_CSV_FORMAT_108
	RECORD_DELIMITER = '|'
	SKIP_HEADER = 1
;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.ALICE_DYNAMIC_10(
EMP_ID,
EMP_NAME,
SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID AS EMPLOYEE_ID,
    EMP_NAME AS EMPLOYEE_NAME,
    SALARY AS EMPLOYEE_SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_12(
EMP_ID,
EMP_NAME,
DEPARTMENT,
SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_251(
EMP_ID,
EMP_NAME,
DEPARTMENT
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT
FROM OBJECT_55.EMPLOYEE_DYNAMIC_SOURCE_243;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_88(
EMP_ID,
EMP_NAME,
DEPARTMENT_ID,
DEPARTMENT_NAME,
SALARY
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    E.EMP_ID,
    E.EMP_NAME,
    E.DEPARTMENT_ID,
    D.DEPARTMENT_NAME,
    E.SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE_82 E
LEFT JOIN OBJECT_55.DEPARTMENT_MASTER_83 D
    ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE E.SALARY >= 30000;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_253(
EMPLOYEE_ID,
EMP_NAME,
SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT
    EMP_ID AS EMPLOYEE_ID,
    EMP_NAME,
    SALARY
FROM OBJECT_55.EMPLOYEE_DYNAMIC_SOURCE_243;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_254(
EMP_ID,
EMP_NAME,
EMP_DEPT,
CITY,
SALARY,
SOURCE_DEPT
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT
    E.EMP_ID,
    E.EMP_NAME,
    E.DEPARTMENT AS EMP_DEPT,
    E.CITY,
    E.SALARY,
    D.DEPARTMENT AS SOURCE_DEPT
FROM OBJECT_55.EMPLOYEE_DYNAMIC_SOURCE_243 E
JOIN OBJECT_55.DEPARTMENT_SOURCE_247 D
    ON E.DEPARTMENT = D.DEPARTMENT;
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_9(
EMP_ID,
DEPARTMENT,
EMP_NAME,
SALARY
) target_lag = '1 minute' refresh_mode = AUTO initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    DEPARTMENT,
    EMP_NAME,
    SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE;
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.TRIM_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (
    TYPE = CSV
    TRIM_SPACE = FALSE
);
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.RECREATE_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (TYPE = CSV);
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.REMOVE_PATTERN_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (TYPE = CSV);
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.STAGE_PATH_PIPE auto_ingest=false as COPY INTO OBJECT_55.EMPLOYEE
FROM @OBJECT_55.EMPLOYEE_STAGE
FILE_FORMAT = (TYPE = CSV);
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_85(
EMP_ID,
EMP_NAME,
DEPARTMENT_ID,
SALARY
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT_ID,
    SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE_82;
-----------------------------------------------------------------------------
create or replace pipe OBJECT_55.SALES_PIPE auto_ingest=false as COPY INTO OBJECT_55.SALES
FROM @OBJECT_55.SALES_STAGE
PATTERN = '.sales.'
FILE_FORMAT = (TYPE = CSV);
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_89(
EMP_ID,
EMP_NAME,
DEPARTMENT_ID,
DEPARTMENT_NAME,
SALARY
) target_lag = '1 minute' refresh_mode = INCREMENTAL initialize = ON_CREATE warehouse = COMPUTE_WH
 as
SELECT
    E.EMP_ID,
    E.EMP_NAME,
    E.DEPARTMENT_ID,
    D.DEPARTMENT_NAME,
    E.SALARY
FROM OBJECT_55.EMPLOYEE_SOURCE_82 E
INNER JOIN OBJECT_55.DEPARTMENT_MASTER_83 D
    ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE E.SALARY >= 40000;
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SALES_SEMANTIC_VIEW_18
	tables (
		SALES as OBJECT_55.SALES_SEMANTIC_15
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_45
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_19
	)
	dimensions (
		SALES.CUSTOMER as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME,
		SALES.CATEGORY as sales.CATEGORY,
		SALES.REGION as sales.REGION,
		SALES.SALE_DATE as sales.SALE_DATE
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_46
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_19
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME,
		SALES.CATEGORY as sales.CATEGORY,
		SALES.REGION as sales.REGION,
		SALES.SALE_DATE as sales.SALE_DATE
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MAX_SALES as MAX(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_50
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_48
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME,
		SALES.CATEGORY as sales.CATEGORY,
		SALES.REGION as sales.REGION,
		SALES.SALE_DATE as sales.SALE_DATE
	)
	metrics (
		SALES.TOTAL_SALES as MAX(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_47
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_19
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME,
		SALES.CATEGORY as sales.CATEGORY,
		SALES.REGION as sales.REGION,
		SALES.SALE_DATE as sales.SALE_DATE
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_49
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_48
	)
	dimensions (
		SALES.CUSTOMER_NAME as UPPER(sales.CUSTOMER_NAME),
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME,
		SALES.CATEGORY as sales.CATEGORY,
		SALES.REGION as sales.REGION,
		SALES.SALE_DATE as sales.SALE_DATE
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_55
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_52
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as MAX(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.MIN_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MAX_SALES as MIN(sales.TOTAL_AMOUNT),
		SALES.TOTAL_QUANTITY as AVG(sales.QUANTITY),
		SALES.TOTAL_DISCOUNT as MAX(sales.DISCOUNT_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_66
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
                                WHEN sales.REGION = 'West' 
                                THEN sales.TOTAL_AMOUNT 
                                ELSE 0 
                        END
                ),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MIN_SALES as MIN(sales.TOTAL_AMOUNT),
		SALES.MAX_SALES as MAX(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_72
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_TABLE_67
	)
	facts (
		SALES.DISCOUNT_AMOUNT as sales.DISCOUNT_AMOUNT
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MIN_SALES as MIN(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_68
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_TABLE_67
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MIN_SALES as MIN(sales.TOTAL_AMOUNT),
		SALES.EAST_REGION_SALES as SUM(
			CASE
				WHEN sales.REGION = 'East'
				THEN sales.TOTAL_AMOUNT
				ELSE 0
			END
		),
		SALES.ELECTRONICS_SALES as SUM(
			CASE
				WHEN sales.CATEGORY = 'Electronics'
				THEN sales.TOTAL_AMOUNT
				ELSE 0
			END
		),
		SALES.CARD_SALES as SUM(
			CASE
				WHEN sales.PAYMENT_METHOD = 'Card'
				THEN sales.TOTAL_AMOUNT
				ELSE 0
			END
		)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_65
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_TABLE_60
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MIN_SALES as MIN(sales.TOTAL_AMOUNT),
		SALES.MAX_SALES as MAX(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_54
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_52
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MIN_SALES as MIN(sales.TOTAL_AMOUNT),
		SALES.MAX_SALES as MAX(sales.TOTAL_AMOUNT),
		SALES.TOTAL_QUANTITY as SUM(sales.QUANTITY),
		SALES.TOTAL_DISCOUNT as SUM(sales.DISCOUNT_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SALES_SEMANTIC_VIEW_17
	tables (
		SALES as OBJECT_55.SALES_SEMANTIC_15
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME,
		SALES.CATEGORY as sales.CATEGORY
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_57
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_TABLE_56
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME,
		SALES.CATEGORY as sales.CATEGORY,
		SALES.REGION as sales.REGION,
		SALES.SALE_DATE as sales.SALE_DATE
	)
	metrics (
		SALES.TOTAL_SALES as MAX(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as SUM(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_53
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_52
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
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
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_51
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_48
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME,
		SALES.CATEGORY as sales.CATEGORY,
		SALES.REGION as sales.REGION,
		SALES.SALE_DATE as sales.SALE_DATE
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace dynamic table OBJECT_55.EMPLOYEE_DYNAMIC_244(
EMP_ID,
EMP_NAME,
DEPARTMENT,
CITY,
SALARY,
JOIN_DATE,
STATUS
) target_lag = '1 hour' refresh_mode = AUTO initialize = ON_CREATE warehouse = TEST_WH
 as
SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    CITY,
    SALARY,
    JOIN_DATE,
    STATUS
FROM OBJECT_55.EMPLOYEE_DYNAMIC_SOURCE_243;
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_58
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_TABLE_56
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME,
		SALES.CATEGORY as sales.CATEGORY,
		SALES.REGION as sales.REGION,
		SALES.SALE_DATE as sales.SALE_DATE
	)
	metrics (
		SALES.GRAND_TOTAL as MAX(sales.TOTAL_AMOUNT),
		SALES.MEAN_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.LOWEST_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.HIGHEST_SALES as MIN(sales.TOTAL_AMOUNT),
		SALES.QUANTITY_TOTAL as AVG(sales.QUANTITY),
		SALES.DISCOUNT_TOTAL as MAX(sales.DISCOUNT_AMOUNT),
		SALES.TAX_TOTAL as MIN(sales.TAX_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_70
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_TABLE_67
	)
	facts (
		SALES.QUANTITY as sales.QUANTITY
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MIN_SALES as MIN(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
create or replace semantic view OBJECT_55.SEMANTIC_VIEW_73
	tables (
		SALES as OBJECT_55.SEMANTIC_VIEW_TABLE_67
	)
	dimensions (
		SALES.CUSTOMER_NAME as sales.CUSTOMER_NAME,
		SALES.PRODUCT_NAME as sales.PRODUCT_NAME
	)
	metrics (
		SALES.TOTAL_SALES as SUM(sales.TOTAL_AMOUNT),
		SALES.AVERAGE_SALES as AVG(sales.TOTAL_AMOUNT),
		SALES.MIN_SALES as MIN(sales.TOTAL_AMOUNT)
	);
-----------------------------------------------------------------------------
DROP FUNCTION IF EXISTS OBJECT_55.CALCULATE_BONUS(NUMBER(38,0),NUMBER(38,0));
-----------------------------------------------------------------------------
DROP SEQUENCE IF EXISTS OBJECT_55.EMP_ID_SEQ_143;
-----------------------------------------------------------------------------
DROP TABLE OBJECT_55.EMPLOYEE_BACKUP;
-----------------------------------------------------------------------------
DROP MATERIALIZED VIEW IF EXISTS OBJECT_55.MV_VIEW_257;
-----------------------------------------------------------------------------
DROP DYNAMIC TABLE IF EXISTS OBJECT_55.EMPLOYEE_DYNAMIC_DROP;
-----------------------------------------------------------------------------
DROP STREAM IF EXISTS OBJECT_55.EMPLOYEE_STREAM_93;
-----------------------------------------------------------------------------
DROP FILE FORMAT IF EXISTS OBJECT_55.EMPLOYEE_CSV_FORMAT_106;
-----------------------------------------------------------------------------
DROP TASK IF EXISTS OBJECT_55.DATA_REFRESH_TASK;