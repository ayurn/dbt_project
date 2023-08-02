{{
    config(materialized='table')
}}
SELECT COUNTRY, ABBREVIATION, CAPITAL, CURRENCYCODE
FROM worlddata2023