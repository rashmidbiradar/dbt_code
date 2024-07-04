{{ config(materialized='table') }}

WITH tb1 as(
    select
    id 
    from {{source('datafeed_shared_schema','stg_customerdata')}})
    select * from tb1