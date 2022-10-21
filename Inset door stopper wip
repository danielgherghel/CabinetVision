;Daniel Gherghel 05/27/22
; made some changes 10/21/22
; will customize for all the construction methods and make make the adjustments customizable from the attribute

For Each DE | BO  Part



if adjustStopper == null then
	adjustStopper<bool> = False
	adjustStopper<style> = 1
	adjustStopper<desc> = 'Add inset door stopper? '
End if

if adjustStopper == True then
	
	if adjDepthPos == null then
		adjDepthPos<meas> = 4.765mm
		adjDepthPos<style> = 1
		adjDepthPos<desc> = 'Change stopper positioning?'
	End if
	

	
    	if Cab.ConstID = 126 | Cab.CONSTID = 134 | Cab.CONSTID = 136 Then
        	if Cab.Class = 1 | Cab.Class = 2 | Cab.Class = 3 | Cab.Class = 4 Then
            	if Cab.Face.DOR_OPEN@3.HNG==1 OR Cab.Face.DOR_OPEN@3.HNG==2 OR Cab.Face.DOR_OPEN@4.HNG==1 OR Cab.Face.DOR_OPEN@4.HNG==2 OR Cab.Face.DOR_OPEN@5.HNG==1 OR Cab.Face.DOR_OPEN@5.HNG==2  then
        		Exit
            	end if
            	; trigger on/off if there are more openings
            	;If Cab.DESC = '*nostopper' Then
            	;Exit
            	;end if
            	; removed the desc trigger as I've added one as a parameter
	
                	if cab.face.dor_open.HNG==1 and cab.face.dor_open@2.HNG==2 then ; pair doors
                    	Dim DS as New Hole
                        	DS.Owner = DE | BO
                        	DS._FACEWP = 1
                        	DS.Visible<bool> = True
                        	DS.DX = 5mm
                        	DS.DY = 5mm
                        	DS.DZ = 5mm
                        	DS.X = ::this.dz-adjDepthPos
                        	DS.Y = :this.dy/2+This.dx/2+9.525mm
                        	DS.Z = 0
                        	DS.AX<deg> = 0
                        	DS.AY<deg> = 0
                        	DS.AZ<deg> = 0
                        	DS.REPT<int> = 1
                        	DS._FACEWP<int> = 2 
	
                    	Dim SH as New Hole
                        	SH.Owner = DE | BO
                        	SH._FACEWP = 1
                        	SH.Visible<bool> = True
                        	SH.DX = 5mm
                        	SH.DY = 5mm
                        	SH.DZ = 5mm
                        	
                        	SH.X = ::this.dz-adjDepthPos
                        	SH.Y = :this.dy/2-This.dx/2-9.525mm
                        	SH.Z = 0
                        	SH.AX<deg> = 0
                        	SH.AY<deg> = 0
                        	SH.AZ<deg> = 0
                        	SH.REPT<int> = 1
                        	SH._FACEWP<int> = 2 
	
                	;left swing
                	else if cab.face.dor_open.HNG==1 then
                    	Dim DS as New Hole
                        	DS.Owner = DE | BO
                        	DS._FACEWP = 1
                        	DS.Visible<bool> = True
                        	DS.DX = 5mm
                        	DS.DY = 5mm
                        	DS.DZ = 5mm
                        	DS.X := this.dx
                        	DS.Y := this.dy-32mm
                        	DS.Z := 0
                        	DS.AX<deg> = 0
                        	DS.AY<deg> = 0
                        	DS.AZ<deg> = 0
                        	DS.REPT<int> = 1
                        	DS._FACEWP<int> = 2 
	
                	;right swing
                	else if cab.face.dor_open.HNG==2 then 
                    	Dim DS as New Hole
                        	DS.Owner = DE | BO
                        	DS._FACEWP = 1
                        	DS.Visible<bool> = True
                        	DS.DX = 5mm
                        	DS.DY = 5mm
                        	DS.DZ = 5mm
                        	DS.X = :::this.dz-9.525mm
                        	DS.Y = ::this.x+32mm
                        	DS.Z = 0
                        	DS.AX<deg> = 0
                        	DS.AY<deg> = 0
                        	DS.AZ<deg> = 0
                        	DS.REPT<int> = 1
                        	DS._FACEWP<int> = 2 
                	end if
                	end if
                	end if
	
        	end if


end if
else
	Delete adjDepthPos
end if
