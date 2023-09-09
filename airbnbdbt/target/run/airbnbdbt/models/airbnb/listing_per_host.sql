
  
    

  create  table "airbnbdb"."public"."listing_per_host__dbt_tmp"
  
  
    as
  
  (
    

with 
    lists as (SELECT * from "airbnbdb"."public"."listings_airbnb_paris"),
    hosts as (SELECT * from "airbnbdb"."public"."hosts_airbnb_paris"),
    joined as (

        SELECT 
          hosts.host_id,
          hosts.host_name, 
          COUNT(lists.id) as listing
        FROM lists
        LEFT JOIN hosts ON lists.host_id=hosts.host_id
        GROUP BY hosts.host_id, hosts.host_name
    )
SELECT * FROM joined
  );
  