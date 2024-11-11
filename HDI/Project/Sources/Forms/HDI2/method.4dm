
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		If (Get menu bar reference:C979="")
			SET MENU BAR:C67(1)
		End if 
		
		DISABLE MENU ITEM:C150(Get menu bar reference:C979; 1; Current process:C322)
		
		initHDI
		
		rb1:=1
		progressBar:=1
		nbWorker:=4
		nbLoop:=1
		nbFileToCompare:=5
		winRef:=Current form window:C827
		
		m_createAnXMLref
		
		$filePath:=Get 4D folder:C485(Current resources folder:K5:16)+"theXmlFile.xml"
		
		refXML:=DOM Parse XML source:C719($filePath)
		
		SET TIMER:C645(30)
		
	: (Form event code:C388=On Timer:K2:25)
		
		DOM EXPORT TO VAR:C863(refXML; varXml)
		
	: (Form event code:C388=On Unload:K2:2)
		
		ENABLE MENU ITEM:C149(Get menu bar reference:C979; 1; Current process:C322)
		
		DOM CLOSE XML:C722(refXML)
		
		SET TIMER:C645(0)
		
End case 