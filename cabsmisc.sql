SELECT PartList.*, Cabinets.[Room ID], Cabinets.[Wall ID], Cabinets.Width as CabWidth, Cabinets.[Width String] as CabWidthString, Cabinets.Height as CabHeight, Cabinets.[Height String] as CabHeightString, Cabinets.Depth as CabDepth, Cabinets.[Depth String] as CabDepthString, Cabinets.[Left End], Cabinets.[Right End], Cabinets.[Left Scribe], Cabinets.[Left Scribe String], Cabinets.[Right Scribe], Cabinets.[Right Scribe String], Cabinets.Back, Cabinets.[Toe Height], Cabinets.[Toe Height String], Cabinets.[Toe Recess], Cabinets.[Toe Recess String], Cabinets.[Cabinet Name], [Job Info].[Job Name], [Job Info].[Job Number], Cabinets.[Soffit Height], Cabinets.[Soffit Height String], Cabinets.[Elevation], Cabinets.[Elevation String], Cabinets.[Cabinet Type] 

FROM ((PartList INNER JOIN Cabinets ON Cabinets.[Cabinet ID] = PartList.[Cabinet ID]) INNER JOIN Rooms on Rooms.RoomNumber = Cabinets.[Room ID]) INNER JOIN [Job Info] ON Rooms.[Job ID] = [Job Info].[ID]

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
 ([Cabinets].[Cabinet Name] NOT LIKE "LIT%")   AND
([Doors].[Door Name] NOT LIKE "%Banding%") AND
([Doors].[Door Name] NOT LIKE "%Hardware%") AND
([Doors].[Door Name] NOT LIKE "%Rod%") AND
([Doors].[Door Name] NOT LIKE "%Hinge%") AND
([Doors].[Door Name] NOT LIKE "%Guide%") AND
([Doors].[Door Name]  LIKE "Finish%") 

ORDER BY PartList.[Cabinet ID], PartList.AsmSort ASC, PartList.Material, PartList.Height DESC, PartList.Width DESC
