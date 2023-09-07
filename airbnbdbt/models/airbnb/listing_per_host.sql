{{config(materialized='table')}}

with 
    lists as (SELECT * from {{source('airbnb','listings_airbnb_paris')}}),
    hosts as (SELECT * from {{source('airbnb','hosts_airbnb_paris')}}),
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