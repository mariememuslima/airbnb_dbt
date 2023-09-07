{{ config(materialized='table')}}

with locations as (
    Select  minimum_nights,COUNT(availability_365) as avaibility  
    FROM {{ source("airbnb","listings_airbnb_paris")}} 
    GROUP BY minimum_nights 
)

SELECT * FROM locations