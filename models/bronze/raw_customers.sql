{{
    config(
        materialized='table',
        schema='bronze'
    )
}}

With CTE_CUSTOMERS as (
    select * from DBT_TRANSF.SC_TRANSF.customers
)

select * from CTE_CUSTOMERS