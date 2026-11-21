{{
    config(
        materialized='table',
        query_tag='DBT',
        tags=['SLS']
    )
}}

select * from DBT_DB.DBT_SC.NEW_ORDER
where discount_amount > 100