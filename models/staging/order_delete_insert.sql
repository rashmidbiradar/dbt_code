{{ config(materialized="incremental",
         incremental_strategy="delete_insert",
         
) }}

select * from {{source('datafeed_shared_schema','stg_order')}} where id in (1,2,3)