<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<!---Step 1 - Create a structure using the structNew() function--->
	<cfset stMonObjet = structNew() />
	<cfset stMonObjet.firstName = 'Damien' />
	<cfdump var="#stMonObjet#" />
	
	<p>Dumping the explicit Structure</p>
	
	<!---Step 2 - Create the same structure using implicit notation--->
	<cfset stUserImplicit= {firstName = "Damien", lastName = "van Aerschot"} />
	<cfdump var="#stUserImplicit#" />
	<p>Dumping the implicit structure</p>
	
	<!---Step 3 - use structDelete() --->
	<cfset structDelete(stUser, 'age') />
	<p>Dumping stUser after the deletion of the 'age' key'</p>
	<cfdump var="#stUser#" />
	<!---Step 4 - use structClear() --->
	<cfset structClear(stUser) />
	<p>Dumping stUser after using structClear()</p>
	
	<!---Step 5 - use structCount()--->
	<p>stUserImplicit holds <cfoutput >
		#structCount(stUserImplicit)#
	  	
	  </cfoutput> elements</p>
</body>
</html>