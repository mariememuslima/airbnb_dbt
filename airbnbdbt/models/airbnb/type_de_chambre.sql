{{ config(materialized='table')}}


with room as (
  SELECT room_type, COUNT(room_type) as nbr_room 
  FROM {{ source("airbnb","listings_airbnb_paris")}}  
  GROUP BY room_type
)

select * from room


