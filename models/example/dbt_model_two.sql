{{ config(
    database='DBT_DB',
    schema='DBT_SC'
) }}

select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CALL_CENTER