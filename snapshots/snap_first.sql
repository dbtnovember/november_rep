{% snapshot snap_first %}
    {{
        config(
            target_schema='DBT_SC',
            target_database='DBT_DB',
            unique_key='id',
            strategy='check',
            invalidate_hard_deletes=true,
             check_cols=['age']
        )
    }}

    select * from {{ source('snap_info', 'snap2') }}
 {% endsnapshot %}