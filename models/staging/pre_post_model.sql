{{ config(
    materialized="table",
    pre_hook="TRUNCATE TABLE {{ this }}",
    post_hook="TRUNCATE TABLE {{source('datafeed_shared_schema','STG_SUPPLIES_DATA')}}"
) }}

WITH tb1 as(
    select 
    *
    from {{source('datafeed_shared_schema','STG_SUPPLIES_DATA')}})
    select * from tb1