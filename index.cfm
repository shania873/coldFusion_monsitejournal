<html>
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	 <link href="/projet_starter/styles/main.css" rel="stylesheet" type="text/css" media="screen" />
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
	    <h2>Evénements à venir</h2>
	    <cfquery datasource="db_caro" name="rsCurrentEvent" >
	    	SELECT FLD_EVENTID, FLD_EVENTNAME,FLD_EVENTDATETIME,FLD_EVENTLOCATION,FLD_EVENTVENUE,FLD_EVENTDESCRIPTION
	    	FROM TBL_EVENTS
	    	WHERE FLD_EVENTDATETIME <= #now()#
	    	ORDER BY FLD_EVENTDATETIME ASC
	    </cfquery>    
	   
	    <cfif rsCurrentEvent.recordCount EQ 0>
	    	<p>Désolé nous avons pas d'event a ce jour
	    </cfif>    
	    <cfoutput query="rsCurrentEvent">
	    <ul>
	      <li>
	        <h3>#FLD_EVENTNAME#</h3>
	        <p>#FLD_EVENTDESCRIPTION#</p>
	        <p>Date : <strong>#dateFormat(FLD_EVENTDATETIME, 'mm dd yyyy')#</strong></p>
	        <p>Lieu : <strong>#FLD_EVENTNAME#</strong></p>
	      </li>    
	    </ul>    	
	    </cfoutput> 
	</section>

  
  
  

	</body>
	</html>