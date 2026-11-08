select *,
       year(DT_TM) as year_order
       from {{ ref('sammple_1') }}