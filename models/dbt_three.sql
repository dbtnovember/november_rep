{{
    config(
        materialized='table',
        query_tag='DBT',
        tags=['SLS']
    )
}}

select product_id,cpid,
 case when cpid > 1000 then 'High Discount'
      when cpid > 500 then 'Medium Discount'
      else 'Low Discount'
    end as discount_category
    from {{ ref('dbt_two') }}