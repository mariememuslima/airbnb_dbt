{{ config(materialized='table')}}

WITH activity as (
  SELECT availability_365 , COUNT(availability_365 ) as nbr_avaibility
  FROM {{ source("airbnb","listings_airbnb_paris")}}  
  GROUP BY availability_365 
)

SELECT * FROM activity