{{
    config(
        materialized='table',
        schema='Silver'
    )
}}

With CTE_CUSTOMERS as (
    select * from DBT_TRANSF.SC_TRANSF_bronze.raw_customers
)

select * from CTE_CUSTOMERS