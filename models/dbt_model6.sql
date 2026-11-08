select *,
{{ cdate("current_date") }} as date_new ,
 row_number() over (order by product_id) as new_col6

  from hdfc_db.hdfc_sc.order_items