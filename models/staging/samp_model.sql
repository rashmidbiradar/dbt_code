{{ config(materialized='table') }}

WITH tb1 as(
    select
    id 
    from dbt_db.staging_layer.stg_customerdata)
    select * from tb1