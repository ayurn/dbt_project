{{
    config(materialized='view')
}}

SELECT
A.country,
A.capital,
A.abbreviation,
SUM(b.gdp) as GDP_Calc
FROM
{{ ref('country_details') }} AS A LEFT JOIN worlddata2023 AS b
ON A.country= b.country
AND A.abbreviation = b.abbreviation
AND A.capital = b.capital
GROUP BY
A.country,
A.capital,
A.abbreviation