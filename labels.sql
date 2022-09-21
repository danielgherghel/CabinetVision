SELECT Cabinets.[Cabinet ID], Cabinets.[Cabinet Name], Cabinets.[Width String],
 Cabinets.[Height String], Cabinets.[Depth String], Rooms.RoomNumber,
 Cabinets.[Wall ID], [Job Info].[Job Name],
 [Job Info].[Job Number], Cabinets.[Quantity],
   IIF([Cabinets].[Cabinet Name] LIKE '%FEL%' , 'FEL',
IIF([Cabinets].[Cabinet Name] LIKE '%FER%', 'FER',
IIF([Cabinets].[Cabinet Name] LIKE '%FEB%', 'FEB',
IIF([Cabinets].[Cabinet Name] LIKE '%FIN TOP%', 'FIN TOP',
IIF([Cabinets].[Cabinet Name] LIKE '%SC%', 'FIN BLIND',
IIF([Cabinets].[Cabinet Name] LIKE '%FBS%', 'SINK SKIRT',
IIF([Cabinets].[Cabinet Name] LIKE '%FIN BOT%', 'FIN DECK',
IIF([Cabinets].[Cabinet Name] LIKE '%BFN%', 'BFN',
IIF([Cabinets].[Cabinet Name] LIKE '%WFN%', 'WFN',
IIF([Cabinets].[Cabinet Name] LIKE '%FI%', 'FI',
IIF([Cabinets].[Cabinet Name] LIKE '%WBK%', 'WBK',
IIF([Cabinets].[Cabinet Name] LIKE '%WKK%', 'WKK',
IIF([Cabinets].[Cabinet Name] LIKE '%BKK%', 'BKK',
IIF([Cabinets].[Cabinet Name] LIKE '%FVS%', 'SINK SKIRT')))))))))))))) AS fin_cab

FROM [Job Info] INNER JOIN (Rooms INNER JOIN Cabinets ON Rooms.RoomNumber = Cabinets.[Room ID]) ON [Job Info].ID = Rooms.[Job ID]     

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
 ([Cabinets].[Cabinet Name] NOT LIKE "L-CROW%")  AND
 ([Cabinets].[Cabinet Name] NOT LIKE "L -%") AND 
([Cabinets].[Cabinet Name] NOT LIKE "LIT%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "COR%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "L CR%")   AND
([Cabinets].[Cabinet Name] NOT LIKE "L-CR%")   AND
([Cabinets].[Cabinet Name] NOT LIKE "SF%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "LEG%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "SPLITE%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "SP LITE%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "SP  LITE%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "RAI%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "HANG%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "TK%")

GROUP BY  Cabinets.[Cabinet ID], Cabinets.[Cabinet Name], Cabinets.[Width String], Cabinets.[Height String], Cabinets.[Depth String], Rooms.RoomNumber, Cabinets.[Wall ID], [Job Info].[Job Name], [Job Info].[Job Number], Cabinets.[Quantity]

ORDER BY Cabinets.[Cabinet ID]
