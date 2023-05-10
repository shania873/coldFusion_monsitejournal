<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<!---Step 1 - Create an array using explicit notation--->

<cfset aColors = arrayNew(1) />
<cfset aColors[1] = 'Red' />
<cfdump var="#aColors#" />
	<p>Dump the explicit array</p>
	
	<!---Step 2 - Create an array using the implicit array notation--->
	<cfset aColorsImplicit=["red", "laura", "caroline", "sandra"] />
	
	<cfdump var="#aColorsImplicit#" />
	<p>Dump the implicit array</p>
	
	<!---Step 3 - use arrayLen()--->
    
	
	Nous avons exactement
	<cfoutput > 
		#arrayLen(aColorsImplicit)#
	    	
	    </cfoutput>items dans cet array
	    
    
	<!---Step 4 - use <cfloop> to loop over the array--->
    <cfoutput>
	    <cfloop from="1" to="#arrayLen(aColors)#" index="i">
	        #i# - #aColors[i]#<br />
	    </cfloop>
	</cfoutput>

	<!--- Step 5 - Use arrayAppend() and arrayPrepend() --->
	
	<cfset arrayAppend(aColors, 'Orange') />
	<cfset arrayPrepend(aColors, 'Yellow') />
	<cfdump var="#aColors#" />
	<br />
	<!---Step 6 - Use arrayDeleteAt() --->
	
	<cfset arrayDeletedAt(aColorsImplicit, 1) />
	<cfdump var="#aColorsImplicit#" />


</body>
</html>