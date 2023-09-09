
  
    

  create  table "airbnbdb"."public"."location_a_court_terme__dbt_tmp"
  
  
    as
  
  (
    

with locations as (
    Select  minimum_nights,COUNT(availability_365) as avaibility  
    FROM "airbnbdb"."public"."listings_airbnb_paris" 
    GROUP BY minimum_nights 
)

SELECT * FROM locations
  );
  