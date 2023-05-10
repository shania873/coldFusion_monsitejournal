<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<!--- step 1 - Create 2 variables using cfset--->
	<cfset firstName = "Caro" />
	<cfset lastName = "va" />
	
	<!--- step 2 - Use cfoutput --->
	
	<cfoutput >
		<p>Mon nom est #firstName# et mon nom de famille est #lastName#</p>		
	</cfoutput>
	

	<!---Step 3 - experiment with typeless variables--->
	
	<cfset numberOld = 10 />
	<cfset numberNew = numberOld + 5 />
	
	<cfoutput >
		
		<p> Le nouveau nombre est #numberNew# </p>
		
	</cfoutput>
	
	<!---Step 4 - Copy /paste the above 3 lines below this comment--->
    	<cfset numberOld = 'ten' />
    	
    	<!-- On peut pas ce permettre de passer d'un string a un nombre le caster est impossible -->
		<cfset numberNew = numberOld + 5 />
		
		<cfoutput>			
			<p> Le nouveau nombre est #numberNew# </p>			
		</cfoutput>

	<!---Step 5 - Experiment with the CGI scope--->
	<cfdump var="#cgi#" >
	
	<!---Step 6 - The server scope --->
	
</body>
</html>
