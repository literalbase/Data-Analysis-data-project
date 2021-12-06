WITH hotels AS(

SELECT
TOP 2000
*
FROM
dbo.historicaldata18
UNION ALL
SELECT
TOP 2000
*
FROM
dbo.historicaldata19
UNION ALL
SELECT
TOP 2000
*
FROM
dbo.historicaldata20
)
SELECT *FROM hotels
left JOIN dbo.marketsegment on hotels.market_segment=marketsegment.market_segment

LEFT JOIN dbo.meat on meat.meal=hotels.meal