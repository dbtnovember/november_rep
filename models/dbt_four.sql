{{
    config(
        materialized='table',
        query_tag='DBT',
        tags=['SLS']
    )
}}


select * ,concat(cpid,'(',discount_category,')') as newcol
from {{ ref('dbt_three') }}
