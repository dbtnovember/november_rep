{{
    config(
        materialized='table',
        query_tag='DBT',
        tags=['SLS']
    )
}}

select product_id,count(product_id)
as cpid
from {{ ref('dbt_one') }}
group by product_id