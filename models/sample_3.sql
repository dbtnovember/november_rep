select *,
       month(DT_TM) as month_order from
{{ ref('sample_2') }}