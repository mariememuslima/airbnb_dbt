{{config(materialized='view')}}

with map as(
    SELECT 'Paris' as city, latitude, longitude FROM
    {{ source("airbnb","listings_airbnb_paris")}} 
)
SELECT * FROM map