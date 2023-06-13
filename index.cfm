<cfscript>
    // Créez une nouvelle instance de la CFC
    variables.dbPath = expandPath("./db/");

    this.name = "ColdfusionTraining";
    this.applicationTimeout = createTimeSpan(0, 2, 0, 0); //2h
    this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0, 0, 20, 0); //20min

    this.datasources = {
        CFTrainingDSN = {
            class = "org.gjt.mm.mysql.Driver",
            connectionString = "jdbc:mysql://localhost:3306/metisapp",
            username = "root",
            password = "Foutaise.1"
        }
    };
</cfscript>

<html>
	<head>
	    <meta charset="UTF-8">
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
	
	    <h2>Evénements à venir</h2>
	  	<cfquery datasource="CFTrainingDSN" name="dbtest">
    		SELECT * FROM User
		</cfquery>

		<cfoutput query="dbtest">
			#username# - #email# - #enabled#<br>
		</cfoutput>
	</section>

  
  
  

	</body>
	</html>