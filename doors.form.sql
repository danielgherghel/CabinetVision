SELECT Count(Doors.[Door ID]) as [QTY], Doors.[Door Name], Doors.[Width String], Doors.[Height String], Doors.[Cabinet ID]

FROM [Doors]  INNER JOIN Cabinets ON Doors.[Cabinet ID] = Cabinets.[Cabinet ID]

GROUP BY Doors.[Door Name], Doors.[Width String], Doors.[Height String], Doors.Height, Doors.Width, Doors.[Cabinet ID]

ORDER BY Doors.[Door Name], Doors.Height ASC, Doors.Width ASC

-- On the Cabinet(Qty) there is another query to group all the doors on the door style


SELECT Count(Doors.[Door ID]) AS Qty, Doors.[Cabinet ID] AS Cabinet
FROM Doors GROUP BY Doors.[Door Name], Doors.[Width String], Doors.[Height String],
Doors.[Cabinet ID] HAVING Doors.[Door Name]='{Door Name}' AND Doors.[Width String]='{Width String}' AND Doors.[Height String]='{Height String}'
