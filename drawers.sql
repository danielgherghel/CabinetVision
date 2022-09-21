SELECT Count(Drawers.[Drawer ID]) AS [CountOfDrawer ID], Drawers.[Drawer Name], Drawers.[Width String], Drawers.[Height String], Drawers.[Depth String], Cabinets.[Cabinet ID], Cabinets.[Cabinet Name], Cabinets.[Comment]

FROM Drawers Left Join [Cabinets] ON [Cabinets].[Cabinet ID] = [Drawers].[Cabinet ID]

GROUP BY Cabinets.[Cabinet ID], Drawers.[Drawer Name], Drawers.[Width String], Drawers.[Height String], Drawers.[Depth String],Cabinets.[Cabinet Name], Cabinets.[Comment]

ORDER BY Drawers.[Drawer Name], Drawers.[Width String], Drawers.[Height String], Drawers.[Depth String]
