{{config(materialized='table')}}

with license as(
    SELECT License, COUNT(License) as total_licensed FROM
    (SELECT 
        CASE
            WHEN license LIKE 'null' THEN 'unlicensed'
            WHEN license LIKE '%lease%' OR  license LIKE '%xempt%' THEN 'exempt'
            WHEN license LIKE '%pending%' THEN 'pending'
        ELSE 'licensed' 
        END AS License 
    FROM {{ source("airbnb","listings_airbnb_paris")}} ) q 
    GROUP BY License
)
SELECT * FROM license




