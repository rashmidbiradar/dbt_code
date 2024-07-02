{{ config(materialized='ephemeral') }}

WITH source as(
select * from {{source('datafeed_shared_schema','STG_SUPPLIES_DATA')}}
),
select * from source