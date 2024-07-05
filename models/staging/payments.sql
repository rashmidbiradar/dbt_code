{{ config(materialized='table') }}

WITH tb1 as(
    select 
    *
    from {{source('datafeed_shared_schema','stg_payments')}})
    select * from tb1