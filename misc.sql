SELECT Count([Cabinets].[Cabinet ID]) AS [CountID], [Cabinets].[Cabinet Name], [Cabinets].[Depth String], [Cabinets].[Description], [Cabinets].[Height String], Sum([Cabinets].[Quantity]) AS [CabQty], [Cabinets].[Width String]

FROM [Cabinets]

WHERE ([Cabinets].[Cabinet Name] NOT LIKE "%CSV%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "FIN%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "FEDP%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "CRW%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "FSF%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "LCRW%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "FPT%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "FLTS%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "DR%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "FR%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "LC%")  AND
 ([Cabinets].[Cabinet Name] NOT LIKE "CLR%")  AND
 ([Cabinets].[Cabinet Name] NOT LIKE "CH%")  AND
 ([Cabinets].[Cabinet Name] NOT LIKE "LEG -%")  AND
 ([Cabinets].[Cabinet Name] NOT LIKE "FLTS%")  AND
 ([Cabinets].[Cabinet Name] NOT LIKE "FLT S%")  AND
 ([Cabinets].[Cabinet Name] NOT LIKE "L -%") AND
 ([Cabinets].[Cabinet Name] NOT LIKE "LIT%")  

GROUP BY [Cabinets].[Cabinet Name],[Cabinets].[Quantity] ,[Cabinets].[Depth String], [Cabinets].[Description], [Cabinets].[Height String], [Cabinets].[Width String] HAVING ([Cabinets].[Depth String] =[Cabinets].[Depth String]) AND ([Cabinets].[Height String] =[Cabinets].[Height String]) AND ([Cabinets].[Width String] =[Cabinets].[Width String])

ORDER BY [Cabinets].[Quantity] 
