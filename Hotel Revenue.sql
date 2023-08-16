WITH hotels AS(
SELECT *
FROM dbo.[2018_Revenue]
UNION
SELECT *
FROM dbo.[2019_Revenue]
UNION
SELECT *
FROM dbo.[2020_Revenue])

SELECT *
FROM hotels
LEFT JOIN market_segment
ON hotels.market_segment = market_segment.market_segment
LEFT JOIN meal_cost
ON hotels.meal = meal_cost.meal