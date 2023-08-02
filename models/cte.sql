{{config(
    materialized = 'table'
)}}

WITH A AS(
SELECT
country,
agriculturalland,
co2emissions
FROM worlddata2023
),

B AS( SELECT
country, GDP_Calc as gdp
FROM {{ref('gdp')}}
)


SELECT
A.*, 
b.gdp
FROM
A
LEFT JOIN b
ON A.country=b.country