select
COUNTRY, ABBREVIATION
FROM country_details
where
COUNTRY = 'United States'
AND
ABBREVIATION != 'US'