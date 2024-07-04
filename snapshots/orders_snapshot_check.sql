{% snapshot orders_snapshot_check %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='id',
          check_cols=['order_date','user_id','status','updated_at'],
        )
    }}

    select * from {{source('datafeed_shared_schema','stg_order')}}

{% endsnapshot %}