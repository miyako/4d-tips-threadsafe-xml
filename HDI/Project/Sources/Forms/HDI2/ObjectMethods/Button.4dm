C_LONGINT:C283($nbElement)

//%T-
If (rb1=1)
	CALL WORKER:C1389("processCoop"; Formula:C1597(m_workOnTheXmlRefCoop).source; refXML)
Else 
	CALL WORKER:C1389("processPreemp"; Formula:C1597(m_workOnTheXmlRefPreemp).source; refXML)
End if 
//%T+