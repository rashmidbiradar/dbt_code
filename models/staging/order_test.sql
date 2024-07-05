WITH tb1 as(
    select 
    id,
    user_id as userid,
    order_date,
    status
    from {{source('datafeed_shared_schema','stg_orders')}})
    select * from tb1