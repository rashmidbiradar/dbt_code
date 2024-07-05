{% snapshot orders_snapshot_timestamp2 %}

{{
    config(
      strategy='timestamp',
      unique_key='id',
      updated_at='updated_at',
      invalidate_hard_deletes=True   

    )
}}
select * 
from {{source('datafeed_shared_schema','customers')}}

{% endsnapshot %}