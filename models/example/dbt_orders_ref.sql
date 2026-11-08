{{ config(
    database='DBT_DB',
    schema='DBT_SC'
) }}

select PRODUCT_ID,QUANTITY from {{ ref('dbt_orders') }}