SELECT [Cabinets].[Cabinet ID] AS ID, [Cabinets].[Cabinet Name] AS Item, Count([Doors].[Cabinet ID]) AS [Qty], [Doors].[Door Name], [Doors].[Height String] as Height, [Doors].[Hinge Center Lines], [Doors].[Material Schedule], [Doors].[Width String] as Width, SUM((Doors.Width*Doors.Height)/144) AS [Door SqFt],  [Doors].[Hinge]

FROM [Cabinets] INNER JOIN [Doors] ON [Cabinets].[Cabinet ID] = [Doors].[Cabinet ID]

GROUP BY [Cabinets].[Cabinet ID],  [Doors].[Hinge] ,[Cabinets].[Cabinet Name], [Doors].[Door Name], [Doors].[Height String], [Doors].[Hinge Center Lines], [Doors].[Material Schedule], [Doors].[Width String] HAVING ([Cabinets].[Cabinet ID] =[Cabinets].[Cabinet ID]) AND ([Doors].[Height String] =[Doors].[Height String]) AND ([Doors].[Width String] =[Doors].[Width String]) 

ORDER BY [Cabinets].[Cabinet Name] DESC, [Cabinets].[Cabinet ID],  [Doors].[Hinge], [Doors].[Hinge Center Lines] ASC,  [Doors].[Height String] ASC, [Doors].[Width String]
