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