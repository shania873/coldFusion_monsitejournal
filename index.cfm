<cfset setEncoding("Form", "ISO-8859-1")>
<!--- Set the output encoding to ISO-8859-1 --->
<cfcontent type="text/html; charset=ISO-8859-1">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<cfset setEncoding("Form", "ISO-8859-1")>
<!--- Set the output encoding to ISO-8859-1 --->
<cfcontent type="text/html; charset=ISO-8859-1">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	 <link href="./styles/main.css" rel="stylesheet" type="text/css" media="screen" />
	    <title>Site Web</title>
		
	</head>
	<body>
  <nav>
    <ul>
      <li><a href="./index.html">Accueil</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">A propos</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>
  <section class="intro">
    <h1>Bienvenue sur mon site Web</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet vestibulum metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla malesuada libero in pharetra placerat. Nunc malesuada, libero id vulputate finibus, nulla odio auctor ipsum, vel rutrum metus nisi eu turpis.</p>
    <a href="#" class="button">En savoir plus</a>
  </section>
	<section class="events">
	
	    <h2>Livres à venir</h2>
	  	<cfquery datasource="CFTrainingDSN" name="books">
    		SELECT * FROM books
		</cfquery>

		<cfoutput query="books">
			#id# - #name# - #description#<br>
		</cfoutput>
	</section>
	</body>
	</html>