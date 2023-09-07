{{config(materialized='table')}}

with 
    lists as (SELECT * from {{source('airbnb','listings_airbnb_paris')}}),
    hosts as (SELECT * from {{source('airbnb','hosts_airbnb_paris')}}),
    joined as (

        SELECT hosts.host_name,
            count(case when (lists.room_type LIKE 'Entire%') then lists.room_type else NULL end) as "entire_apt",
            count(case when (lists.room_type LIKE 'Hotel%') then lists.room_type else NULL end) as "hotel_room",
            count(case when (lists.room_type LIKE 'Private%') then lists.room_type else NULL end) as "shared_room",
            count(case when (lists.room_type LIKE 'Shared%') then lists.room_type else NULL end) as "private_room",
            COUNT(lists.room_type) as total
        FROM  lists LEFT JOIN  hosts ON lists.host_id=hosts.host_id
        GROUP BY hosts.host_id , hosts.host_name
    )
SELECT * FROM joined