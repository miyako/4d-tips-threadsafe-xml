C_TEXT:C284($vers)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		If (Get menu bar reference:C979="")
			SET MENU BAR:C67(1)
		End if 
		
		DISABLE MENU ITEM:C150(Get menu bar reference:C979; 1; Current process:C322)
		
		$vers:=Application version:C493
		
		If ($vers<"1600")  //1530 means 13R3   1501 means 15.1
			
			OBJECT SET TITLE:C194(*; "BtnDemo"; Get localized string:C991("Quit 4D"))
			OBJECT SET VISIBLE:C603(*; "TxtSorry@"; True:C214)
			OBJECT SET VISIBLE:C603(*; "TxtInfo@"; False:C215)
			OBJECT SET ACTION:C1259(*; "BtnDemo"; _o_Object Cancel action:K76:2)
			
		Else 
			
			OBJECT SET ACTION:C1259(*; "BtnDemo"; _o_Object Accept action:K76:3)
			
		End if 
		
		If (Not:C34(Version type:C495 ?? 64 bit version:K5:25))
			
			OBJECT SET TITLE:C194(*; "BtnDemo"; Get localized string:C991("Quit 4D"))
			OBJECT SET VISIBLE:C603(*; "TxtVersion1"; True:C214)
			OBJECT SET VISIBLE:C603(*; "TxtInfo@"; False:C215)
			OBJECT SET ACTION:C1259(*; "BtnDemo"; _o_Object Cancel action:K76:2)
			
		End if 
		
	: (Form event code:C388=On Unload:K2:2)
		
		ENABLE MENU ITEM:C149(Get menu bar reference:C979; 1; Current process:C322)
		
End case 