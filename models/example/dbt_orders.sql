{{ config(
    database='DBT_DB',
    schema='DBT_SC'
) }}

select * from HDFC_DB.HDFC_SC.order_items