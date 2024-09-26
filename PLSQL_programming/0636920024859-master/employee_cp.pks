CREATE OR REPLACE PACKAGE EMPLOYEE_CP
/*
| Generated by or retrieved from Qnxo - DO NOT MODIFY!
| Qnxo - "Get it right, do it fast" - www.qnxo.com
| Qnxo Universal ID: 1bd37a66-ea60-4927-9a64-f6dd89237236
| Created On: April     04, 2005 07:31:52 Created By: QNXO_DEMO
*/
IS

   -- Insert one row, providing primary key if present
   PROCEDURE ins (
      employee_id_in IN EMPLOYEE_TP.EMPLOYEE_ID_t,
      last_name_in IN EMPLOYEE_TP.LAST_NAME_t DEFAULT NULL,
      first_name_in IN EMPLOYEE_TP.FIRST_NAME_t DEFAULT NULL,
      middle_initial_in IN EMPLOYEE_TP.MIDDLE_INITIAL_t DEFAULT NULL,
      job_id_in IN EMPLOYEE_TP.JOB_ID_t DEFAULT NULL,
      manager_id_in IN EMPLOYEE_TP.MANAGER_ID_t DEFAULT NULL,
      hire_date_in IN EMPLOYEE_TP.HIRE_DATE_t DEFAULT SYSDATE,
      salary_in IN EMPLOYEE_TP.SALARY_t DEFAULT NULL,
      commission_in IN EMPLOYEE_TP.COMMISSION_t DEFAULT NULL,
      department_id_in IN EMPLOYEE_TP.DEPARTMENT_ID_t DEFAULT NULL,
      empno_in IN EMPLOYEE_TP.EMPNO_t DEFAULT NULL,
      ename_in IN EMPLOYEE_TP.ENAME_t DEFAULT NULL,
      created_by_in IN EMPLOYEE_TP.CREATED_BY_t DEFAULT USER,
      created_on_in IN EMPLOYEE_TP.CREATED_ON_t DEFAULT SYSDATE,
      changed_by_in IN EMPLOYEE_TP.CHANGED_BY_t DEFAULT USER,
      changed_on_in IN EMPLOYEE_TP.CHANGED_ON_t DEFAULT SYSDATE,
      -- Pass false if you want errors to propagate out unhandled
      handle_error_in IN BOOLEAN := TRUE
      );

   -- Insert a row based on a record. You can specify whether or not
   -- a primary key value should be generated IF you have a single
   -- primary key column.
   PROCEDURE ins (
      rec_in IN EMPLOYEE_TP.EMPLOYEE_rt
     ,gen_pky_in IN BOOLEAN DEFAULT FALSE
     ,sequence_in IN VARCHAR2 := NULL
     ,handle_error_in IN BOOLEAN := TRUE
   );

   -- Insert a collection of rows using FORALL; all primary key values
   -- must have already been generated, or are handled in triggers.
   PROCEDURE ins (
      rows_in IN EMPLOYEE_TP.EMPLOYEE_tc
     ,rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
   );
   -- Return next primary key value using the named sequence.
   FUNCTION next_key (sequence_in IN VARCHAR2 := NULL) RETURN EMPLOYEE_TP.EMPLOYEE_ID_t;

   -- Insert one row, generating hidden primary key using a sequence
   PROCEDURE ins (
      last_name_in IN EMPLOYEE_TP.LAST_NAME_t DEFAULT NULL,
      first_name_in IN EMPLOYEE_TP.FIRST_NAME_t DEFAULT NULL,
      middle_initial_in IN EMPLOYEE_TP.MIDDLE_INITIAL_t DEFAULT NULL,
      job_id_in IN EMPLOYEE_TP.JOB_ID_t DEFAULT NULL,
      manager_id_in IN EMPLOYEE_TP.MANAGER_ID_t DEFAULT NULL,
      hire_date_in IN EMPLOYEE_TP.HIRE_DATE_t DEFAULT SYSDATE,
      salary_in IN EMPLOYEE_TP.SALARY_t DEFAULT NULL,
      commission_in IN EMPLOYEE_TP.COMMISSION_t DEFAULT NULL,
      department_id_in IN EMPLOYEE_TP.DEPARTMENT_ID_t DEFAULT NULL,
      empno_in IN EMPLOYEE_TP.EMPNO_t DEFAULT NULL,
      ename_in IN EMPLOYEE_TP.ENAME_t DEFAULT NULL,
      created_by_in IN EMPLOYEE_TP.CREATED_BY_t DEFAULT USER,
      created_on_in IN EMPLOYEE_TP.CREATED_ON_t DEFAULT SYSDATE,
      changed_by_in IN EMPLOYEE_TP.CHANGED_BY_t DEFAULT USER,
      changed_on_in IN EMPLOYEE_TP.CHANGED_ON_t DEFAULT SYSDATE,
      -- Pass false if you want errors to propagate out unhandled
      handle_error_in IN BOOLEAN := TRUE
      );

   -- Insert one row, returning primary key generated by sequence
   PROCEDURE ins (
      last_name_in IN EMPLOYEE_TP.LAST_NAME_t DEFAULT NULL,
      first_name_in IN EMPLOYEE_TP.FIRST_NAME_t DEFAULT NULL,
      middle_initial_in IN EMPLOYEE_TP.MIDDLE_INITIAL_t DEFAULT NULL,
      job_id_in IN EMPLOYEE_TP.JOB_ID_t DEFAULT NULL,
      manager_id_in IN EMPLOYEE_TP.MANAGER_ID_t DEFAULT NULL,
      hire_date_in IN EMPLOYEE_TP.HIRE_DATE_t DEFAULT SYSDATE,
      salary_in IN EMPLOYEE_TP.SALARY_t DEFAULT NULL,
      commission_in IN EMPLOYEE_TP.COMMISSION_t DEFAULT NULL,
      department_id_in IN EMPLOYEE_TP.DEPARTMENT_ID_t DEFAULT NULL,
      empno_in IN EMPLOYEE_TP.EMPNO_t DEFAULT NULL,
      ename_in IN EMPLOYEE_TP.ENAME_t DEFAULT NULL,
      created_by_in IN EMPLOYEE_TP.CREATED_BY_t DEFAULT USER,
      created_on_in IN EMPLOYEE_TP.CREATED_ON_t DEFAULT SYSDATE,
      changed_by_in IN EMPLOYEE_TP.CHANGED_BY_t DEFAULT USER,
      changed_on_in IN EMPLOYEE_TP.CHANGED_ON_t DEFAULT SYSDATE,
      employee_id_out IN OUT EMPLOYEE_TP.EMPLOYEE_ID_t,
      -- Pass false if you want errors to propagate out unhandled
      handle_error_in IN BOOLEAN := TRUE
      );

   -- Insert one row with function, return generated primary key
   FUNCTION ins (
      last_name_in IN EMPLOYEE_TP.LAST_NAME_t DEFAULT NULL,
      first_name_in IN EMPLOYEE_TP.FIRST_NAME_t DEFAULT NULL,
      middle_initial_in IN EMPLOYEE_TP.MIDDLE_INITIAL_t DEFAULT NULL,
      job_id_in IN EMPLOYEE_TP.JOB_ID_t DEFAULT NULL,
      manager_id_in IN EMPLOYEE_TP.MANAGER_ID_t DEFAULT NULL,
      hire_date_in IN EMPLOYEE_TP.HIRE_DATE_t DEFAULT SYSDATE,
      salary_in IN EMPLOYEE_TP.SALARY_t DEFAULT NULL,
      commission_in IN EMPLOYEE_TP.COMMISSION_t DEFAULT NULL,
      department_id_in IN EMPLOYEE_TP.DEPARTMENT_ID_t DEFAULT NULL,
      empno_in IN EMPLOYEE_TP.EMPNO_t DEFAULT NULL,
      ename_in IN EMPLOYEE_TP.ENAME_t DEFAULT NULL,
      created_by_in IN EMPLOYEE_TP.CREATED_BY_t DEFAULT USER,
      created_on_in IN EMPLOYEE_TP.CREATED_ON_t DEFAULT SYSDATE,
      changed_by_in IN EMPLOYEE_TP.CHANGED_BY_t DEFAULT USER,
      changed_on_in IN EMPLOYEE_TP.CHANGED_ON_t DEFAULT SYSDATE,
      -- Pass false if you want errors to propagate out unhandled
      handle_error_in IN BOOLEAN := TRUE
      )
      RETURN
         EMPLOYEE_TP.EMPLOYEE_ID_t
      ;

   -- Update any/all columns by primary key. If you pass NULL, then
   -- the current column value is set to itself. If you need a more
   -- selected UPDATE then use one of the onecol procedures below.
   PROCEDURE upd (
      employee_id_in IN EMPLOYEE_TP.EMPLOYEE_ID_t,
      last_name_in IN EMPLOYEE_TP.LAST_NAME_t DEFAULT NULL,
      first_name_in IN EMPLOYEE_TP.FIRST_NAME_t DEFAULT NULL,
      middle_initial_in IN EMPLOYEE_TP.MIDDLE_INITIAL_t DEFAULT NULL,
      job_id_in IN EMPLOYEE_TP.JOB_ID_t DEFAULT NULL,
      manager_id_in IN EMPLOYEE_TP.MANAGER_ID_t DEFAULT NULL,
      hire_date_in IN EMPLOYEE_TP.HIRE_DATE_t DEFAULT NULL,
      salary_in IN EMPLOYEE_TP.SALARY_t DEFAULT NULL,
      commission_in IN EMPLOYEE_TP.COMMISSION_t DEFAULT NULL,
      department_id_in IN EMPLOYEE_TP.DEPARTMENT_ID_t DEFAULT NULL,
      empno_in IN EMPLOYEE_TP.EMPNO_t DEFAULT NULL,
      ename_in IN EMPLOYEE_TP.ENAME_t DEFAULT NULL,
      created_by_in IN EMPLOYEE_TP.CREATED_BY_t DEFAULT NULL,
      created_on_in IN EMPLOYEE_TP.CREATED_ON_t DEFAULT NULL,
      changed_by_in IN EMPLOYEE_TP.CHANGED_BY_t DEFAULT NULL,
      changed_on_in IN EMPLOYEE_TP.CHANGED_ON_t DEFAULT NULL,
      rows_out OUT PLS_INTEGER,
      ignore_if_null_in IN BOOLEAN := FALSE
     ,handle_error_in IN BOOLEAN := TRUE
      );

   PROCEDURE upd_ins (
      employee_id_in IN EMPLOYEE_TP.EMPLOYEE_ID_t,
      last_name_in IN EMPLOYEE_TP.LAST_NAME_t DEFAULT NULL,
      first_name_in IN EMPLOYEE_TP.FIRST_NAME_t DEFAULT NULL,
      middle_initial_in IN EMPLOYEE_TP.MIDDLE_INITIAL_t DEFAULT NULL,
      job_id_in IN EMPLOYEE_TP.JOB_ID_t DEFAULT NULL,
      manager_id_in IN EMPLOYEE_TP.MANAGER_ID_t DEFAULT NULL,
      hire_date_in IN EMPLOYEE_TP.HIRE_DATE_t DEFAULT NULL,
      salary_in IN EMPLOYEE_TP.SALARY_t DEFAULT NULL,
      commission_in IN EMPLOYEE_TP.COMMISSION_t DEFAULT NULL,
      department_id_in IN EMPLOYEE_TP.DEPARTMENT_ID_t DEFAULT NULL,
      empno_in IN EMPLOYEE_TP.EMPNO_t DEFAULT NULL,
      ename_in IN EMPLOYEE_TP.ENAME_t DEFAULT NULL,
      created_by_in IN EMPLOYEE_TP.CREATED_BY_t DEFAULT NULL,
      created_on_in IN EMPLOYEE_TP.CREATED_ON_t DEFAULT NULL,
      changed_by_in IN EMPLOYEE_TP.CHANGED_BY_t DEFAULT NULL,
      changed_on_in IN EMPLOYEE_TP.CHANGED_ON_t DEFAULT NULL,
      rows_out OUT PLS_INTEGER,
      ignore_if_null_in IN BOOLEAN := FALSE
     ,handle_error_in IN BOOLEAN := TRUE
      );

   PROCEDURE upd (
      rec_in IN EMPLOYEE_TP.EMPLOYEE_rt,
      rows_out OUT PLS_INTEGER,
      ignore_if_null_in IN BOOLEAN := FALSE
     ,handle_error_in IN BOOLEAN := TRUE
      );

   -- Use Native Dynamic SQL to update a single VARCHAR2 column
   -- for all rows specified by the dynamic WHERE clause
   PROCEDURE upd_onecol (
      colname_in IN ALL_TAB_COLUMNS.COLUMN_NAME%TYPE,
      new_value_in IN VARCHAR2,
      where_in IN VARCHAR2 := NULL,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
   );

   -- Use Native Dynamic SQL to update a single DATE column
   -- for all rows specified by the dynamic WHERE clause
   PROCEDURE upd_onecol (
      colname_in IN ALL_TAB_COLUMNS.COLUMN_NAME%TYPE,
      new_value_in IN DATE,
      where_in IN VARCHAR2 := NULL,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
   );

   -- Use Native Dynamic SQL to update a single NUMBER column
   -- for all rows specified by the dynamic WHERE clause
   PROCEDURE upd_onecol (
      colname_in IN ALL_TAB_COLUMNS.COLUMN_NAME%TYPE,
      new_value_in IN NUMBER,
      where_in IN VARCHAR2 := NULL,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
   );

    -- Use Native Dynamic SQL to update a single VARCHAR2 column
   -- for the rows specified by the primary key value
   PROCEDURE upd_onecol_pky (
      colname_in IN ALL_TAB_COLUMNS.COLUMN_NAME%TYPE,
      new_value_in IN VARCHAR2,
      employee_id_in IN EMPLOYEE_TP.EMPLOYEE_ID_t,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
   );

    -- Use Native Dynamic SQL to update a single DATE column
   -- for the rows specified by the primary key value
   PROCEDURE upd_onecol_pky (
      colname_in IN ALL_TAB_COLUMNS.COLUMN_NAME%TYPE,
      new_value_in IN DATE,
      employee_id_in IN EMPLOYEE_TP.EMPLOYEE_ID_t,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
   );

    -- Use Native Dynamic SQL to update a single NUMBER column
   -- for the rows specified by the primary key value
   PROCEDURE upd_onecol_pky (
      colname_in IN ALL_TAB_COLUMNS.COLUMN_NAME%TYPE,
      new_value_in IN NUMBER,
      employee_id_in IN EMPLOYEE_TP.EMPLOYEE_ID_t,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
   );

    -- Set all non-primary key columns to NULL
   PROCEDURE nullify_row (
      employee_id_in IN EMPLOYEE_TP.EMPLOYEE_ID_t,
      handle_error_in IN BOOLEAN := TRUE
   );

    -- Delete one row by primary key
   PROCEDURE del (
      employee_id_in IN EMPLOYEE_TP.EMPLOYEE_ID_t,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
      );

   -- Delete all rows for primary key column EMPLOYEE_ID
   PROCEDURE del_EMPLOYEE_ID (
      employee_id_in IN EMPLOYEE_TP.EMPLOYEE_ID_t
     ,rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
     );
   -- Delete for unique value of I_EMPLOYEE_NAME
   PROCEDURE del_I_EMPLOYEE_NAME (
      last_name_in IN EMPLOYEE_TP.LAST_NAME_t,
      first_name_in IN EMPLOYEE_TP.FIRST_NAME_t,
      middle_initial_in IN EMPLOYEE_TP.MIDDLE_INITIAL_t,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
      );
   -- Delete all rows for this FK_EMP_DEPARTMENT foreign key value
   PROCEDURE del_FK_EMP_DEPARTMENT (
      department_id_in IN EMPLOYEE_TP.DEPARTMENT_ID_t,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
      );

   -- Delete all rows for this FK_EMP_JOB foreign key value
   PROCEDURE del_FK_EMP_JOB (
      job_id_in IN EMPLOYEE_TP.JOB_ID_t,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
      );

   -- Delete all rows for this FK_EMP_MANAGER foreign key value
   PROCEDURE del_FK_EMP_MANAGER (
      manager_id_in IN EMPLOYEE_TP.MANAGER_ID_t,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
      );

    -- Delete all rows specified by dynamic WHERE clause
   PROCEDURE del_by (where_clause_in IN VARCHAR2,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
      );

    -- Delete all rows where the specified VARCHAR2 column has
   -- a value that matches the specfified value.
   PROCEDURE del_by_col (
      colname_in IN VARCHAR2,
      colvalue_in IN VARCHAR2,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
      );

    -- Delete all rows where the specified DATE column has
   -- a value that matches the specfified value.
   PROCEDURE del_by_col (
      colname_in IN VARCHAR2,
      colvalue_in IN DATE,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
      );

    -- Delete all rows where the specified NUMBER column has
   -- a value that matches the specfified value.
   PROCEDURE del_by_col (
      colname_in IN VARCHAR2,
      colvalue_in IN NUMBER,
      rows_out OUT PLS_INTEGER
     ,handle_error_in IN BOOLEAN := TRUE
      );

END EMPLOYEE_CP;
/
