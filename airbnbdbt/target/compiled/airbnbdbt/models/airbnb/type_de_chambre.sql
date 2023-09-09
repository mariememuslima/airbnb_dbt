


with room as (
  SELECT room_type, COUNT(room_type) as nbr_room 
  FROM "airbnbdb"."public"."listings_airbnb_paris"  
  GROUP BY room_type
)

select * from room