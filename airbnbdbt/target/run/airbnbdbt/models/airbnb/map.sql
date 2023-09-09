
  
    

  create  table "airbnbdb"."public"."map__dbt_tmp"
  
  
    as
  
  (
    

with map as(
    SELECT 'Paris' as city, latitude, longitude FROM
    "airbnbdb"."public"."listings_airbnb_paris" 
)
SELECT * FROM map
  );
  