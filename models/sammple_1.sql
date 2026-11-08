{{
    config(
        materialized='table'
    )
}}
select * from {{ source('new_work', 'NEW_ORDER') }}

union all

select * from {{ source('new_work', 'NEW_ORDER') }}

