{{ config(
    materialized="incremental",
    incremental_strategy="append",
) }}

select * from dbt_db.staging_layer.stg_order where id in (2)