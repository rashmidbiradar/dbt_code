{% snapshot order_snapshot_timestamp %}
    {{
        config(
          target_schema='snapshots',
          unique_key='id',
          strategy='timestamp',
          updated_at='updated_at',
        )
    }}

    select * from {{source('datafeed_shared_schema','customers')}}

{% endsnapshot %}