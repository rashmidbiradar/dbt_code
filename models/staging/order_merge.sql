
{{ config(
materialized="incremental",
incremental_strategy= "merge"
) }}
select * from {{source('datafeed_shared_schema','stg_order')}} where id in (1,2,3,4)