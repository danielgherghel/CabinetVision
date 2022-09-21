SELECT Rooms.RoomNumber, Cabinets.[Cabinet ID],
 Cabinets.Quantity, Cabinets.[Cabinet Name],
 Cabinets.[Width String], Cabinets.[Height String],
 Cabinets.[Depth String], Left([Left End],1)+'-'+Left([Right End],1) AS EndTypes,
 Cabinets.Comment, Rooms.RoomName, Rooms.RoomDescription,
  IIF([Cabinets].[Cabinet Name] LIKE '%FEL%' , 'Finish End Left',
IIF([Cabinets].[Cabinet Name] LIKE '%FER%', 'Finish End Right',
IIF([Cabinets].[Cabinet Name] LIKE '%FEB%', 'Finish 2 Ends',
IIF([Cabinets].[Cabinet Name] LIKE '%FIN TOP%', 'Finish: Ends, 2 Fix Shelf,1 Back, Adj?- check drawings/layout',
IIF([Cabinets].[Cabinet Name] LIKE '%SC%', 'Finish: Blind Panel',
IIF([Cabinets].[Cabinet Name] LIKE '%FBS%', 'Finish: Sink Skirt',
IIF([Cabinets].[Cabinet Name] LIKE '%FIN BOT%', 'Finish: Deck',
IIF([Cabinets].[Cabinet Name] LIKE '%BFN%', 'Finish: Ends , Fix Shelf, Back, Adj?- check drawings/layout',
IIF([Cabinets].[Cabinet Name] LIKE '%WFN%', 'Finish: Ends , Fix Shelf, Back, Adj?- check drawings/layout',
IIF([Cabinets].[Cabinet Name] LIKE '%FI%', 'Finish: Ends , Fix Shelf,Back, Adj?- check drawings/layout',
IIF([Cabinets].[Cabinet Name] LIKE '%WBK%', 'Finish: Ends , Fix Shelf, Back, Adj?- check drawings/layout',
IIF([Cabinets].[Cabinet Name] LIKE '%WKK%', 'Finish: Ends , Fix Shelf?, Back, Adj?- see drawings/layout',
IIF([Cabinets].[Cabinet Name] LIKE '%BKK%', 'Finish: Ends , Fix Shelf?, Back, Adj?- see drawings/layout',
IIF([Cabinets].[Cabinet Name] LIKE '%FVS%', 'Finish: Sink Skirt')))))))))))))) AS fin_cab

FROM Rooms INNER JOIN Cabinets ON Rooms.RoomNumber = Cabinets.[Room ID] 

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
([Cabinets].[Cabinet Name] NOT LIKE "TK%") AND
([Cabinets].[Cabinet Name] NOT LIKE "SPFLT%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "LEG%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "SPLITE%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "SP LITE%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "SP  LITE%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "RAI%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "HANG%")  AND
([Cabinets].[Cabinet Name] NOT LIKE "SP FLT%")  
 

GROUP BY Rooms.RoomNumber, Cabinets.[Cabinet ID],
 Cabinets.Quantity, Cabinets.[Cabinet Name],
 Cabinets.[Width String], Cabinets.[Height String],
 Cabinets.[Depth String], Left([Left End],1)+'-'+Left([Right End],1),
 Cabinets.Comment, Rooms.RoomName, Rooms.RoomDescription 

ORDER BY  Rooms.RoomName,[Cabinets].[Cabinet Name] DESC, Cabinets.[Width String], Cabinets.[Height String]

--Use the same tables for passing the parameters into the design
