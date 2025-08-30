{{
    config(
        materialized='table',
        schema='Silver'
    )
}}

With Silver_CUSTOMERS as (
    select customer_id, initcap(name),
    case when age>18 Then 'Adult'
    else 'Minor' end as age_group
      , 
     initcap(city) from DBT_TRANSF.SC_TRANSF_bronze.raw_customers
)

select * from Silver_CUSTOMERS