;add a parameter at the cabinets level as a boleean value

 For Each AS|LU|RU|UB|TO|DE|FT|BO|PT Part



if fin_cab == null then
	fin_cab<bool> = False
	fin_cab<style> = 1
	fin_cab<desc> = 'Finished Cabinet'
end if

if fin_cab == True and Name == 'AS' then ;adjustable shelf
	Name = 'Finished Adjustable'
else if fin_cab == True and Name == 'LU' then ; left end
	Name = 'Finished Left End'
else if fin_cab == True and Name == 'RU' then ; right end
	Name = 'Finished Right End'
else if fin_cab == True and Name == 'UB' then ; back
	Name = 'Finished Back'
else if fin_cab == True and Name == 'TO' then ; top
	Name = 'Finished Top'
else if fin_cab == True and Name == 'DE' then ; Deck
	Name = 'Finished Deck'
else if fin_cab == True and Name == 'BO' then ; Bottom
	Name = 'Finished Bottom'
else if fin_cab == True and Name == 'FT' then ; Front Toe
	Name = 'Finished Front Toe'
else if fin_cab == True and Name == 'pt' then ; Partition
	Name = 'Finished Partition'
end if
end if
end if
end if
end if
end if
end if
end if
end if
