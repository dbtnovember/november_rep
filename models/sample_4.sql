
select product_id,count(product_id) as c_pid ,
rank() over (order by count(product_id) DESC  ) as rank_num 
 from {{ ref('sammple_1') }}
group by product_id
