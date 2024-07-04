WITH tb1 as(
    select *

    from {{source('datafeed_shared_schema','stg_order')}})
    select * from tb1