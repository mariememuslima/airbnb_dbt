

WITH activity as (
  SELECT availability_365 , COUNT(availability_365 ) as nbr_avaibility
  FROM "airbnbdb"."public"."listings_airbnb_paris"  
  GROUP BY availability_365 
)

SELECT * FROM activity