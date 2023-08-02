select
country,
sum(GDP_Calc) as GDP_Value
FROM
{{ ref('gdp') }}
group by 1
having not (GDP_Value >= 0)