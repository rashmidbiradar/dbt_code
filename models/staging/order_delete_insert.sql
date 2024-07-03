{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert",
         
) }}

select * from {{source('datafeed_shared_schema','stg_order')}} where id in (13,14,15)